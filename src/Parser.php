<?php

declare(strict_types=1);

/*
 * This file is part of the boo/lua-parser library.
 *
 * (c) Jonas Stendahl <jonas@stendahl.me>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Boo\LuaParser;

use Boo\LuaParser\Interfaces\ValueInterface;
use UnexpectedValueException;

final class Parser
{
    private const COMMA_REGEX = '(,)?';

    private const COMMENT_REGEX = '(?: --(.*?))?';

    private const INT_REGEX = '-?(?:[0-9]+(?:[\.][0-9]+)*)(?:e[+-]?[0-9]+)?';

    private const KEY_REGEXS = [
        self::INT_REGEX, // int
        self::STRING_REGEX, // string
    ];

    private const STRING_REGEX = '"[^"\\\\]*(?:\\\\.[^"\\\\]*)*"';

    private const VALUE_REGEXS = [
        '{', // array start
        'true|false', // bool
        'nil', // null
        self::INT_REGEX, // int
        self::STRING_REGEX, // string
    ];

    private const VARIABLE_REGEX = '[a-z_\\\][a-z0-9_\:\\\]*[a-z0-9_]{1}';

    /**
     * @var array
     */
    private $ast;

    /**
     * @var resource
     */
    private $pointer;

    /**
     * @var array
     */
    private $regexs;

    public function __construct(string $filepath)
    {
        $keyRegex = sprintf('((?:%s))', implode(')|(?:', self::KEY_REGEXS));
        $variableRegex = sprintf('(%s)', self::VARIABLE_REGEX);
        $valueRegex = vsprintf('((?:%s))%s%s', [
            implode(')|(?:', self::VALUE_REGEXS),
            self::COMMA_REGEX,
            self::COMMENT_REGEX,
        ]);

        $this->pointer = fopen($filepath, 'rb');
        $this->regexs = [
            'array_end' => sprintf('/^}%s%s$/i', self::COMMA_REGEX, self::COMMENT_REGEX),
            'keyed_item' => sprintf('/^\[%s\] = %s$/i', $keyRegex, $valueRegex),
            'keyless_item' => sprintf('/^%s$/i', $valueRegex),
            'variable' => sprintf('/^%s = %s$/i', $variableRegex, $valueRegex),
        ];
    }

    /**
     * Builds an array out of the Lua string's AST.
     *
     * @throws UnexpectedValueException
     */
    public function getArray(): array
    {
        $array = [];

        foreach ($this->getAst() as $type) {
            $array = array_merge($array, $type->flatten());
        }

        return $array;
    }

    /**
     * Gets the Lua string's AST.
     *
     * @throws UnexpectedValueException
     */
    public function getAst(): array
    {
        if (null !== $this->ast) {
            return $this->ast;
        }

        $ast = [];
        $contexts = [];

        while (false !== ($line = fgets($this->pointer))) {
            $line = trim($line);

            if ('' === $line) {
                continue;
            }

            end($contexts);

            $contextKey = key($contexts);
            $context = (null !== $contextKey) ? $contexts[$contextKey] : null;

            // Variable
            if (1 === preg_match($this->regexs['variable'], $line, $match)) {
                $ast[] = $contexts[] = $context = new Types\VariableType($match[1]);
                $value = $this->getValueObject($match[2], $match[4] ?? null);

                if ($value instanceof Types\ArrayType) {
                    $contexts[] = $value;
                }

                $context->setValue($value);

                continue;
            }

            // Array Item (keyed)
            if (1 === preg_match($this->regexs['keyed_item'], $line, $match)) {
                $oldContext = $context;
                $key = is_numeric($match[1])
                    ? new Types\IntegerType((int) $match[1])
                    : new Types\StringType(substr($match[1], 1, -1));

                $oldContext->addItem($context = new Types\ArrayItemType($key));

                $value = $this->getValueObject($match[2], $match[4] ?? null);

                if ($value instanceof Types\ArrayType) {
                    $contexts[] = $value;
                }

                $context->setValue($value);
                continue;
            }

            // Array Item (keyeless)
            if (1 === preg_match($this->regexs['keyless_item'], $line, $match)) {
                $value = $this->getValueObject($match[1], $match[3] ?? null);

                if ($value instanceof Types\ArrayType) {
                    $contexts[] = $value;
                }

                $context->addKeylessValue($value);
                continue;
            }

            // Array End
            if (1 === preg_match($this->regexs['array_end'], $line, $match)) {
                if (isset($match[2])) {
                    $context->setComment(new Types\CommentType($match[2]));
                }

                array_pop($contexts);
                continue;
            }

            throw new UnexpectedValueException(sprintf('Unable to parse line: %s', $line));
        }

        $this->ast = $ast;

        return $ast;
    }

    /**
     * Transforms the Lua string's AST back into a Lua string.
     */
    public function getLua(): string
    {
        $lua = PHP_EOL;

        foreach ($this->getAst() as $type) {
            $lua .= $type->toLua();
        }

        return $lua;
    }

    /**
     * Gets a value object based on the value's type.
     */
    private function getValueObject(string $value, ?string $comment = null): ValueInterface
    {
        if ('nil' === $value) { // Null
            $valueObject = new Types\NullType();
        } elseif ('{' === $value) { // Array
            $valueObject = new Types\ArrayType();
        } elseif ('true' === $value || 'false' === $value) {
            $valueObject = new Types\BooleanType('true' === $value);
        } elseif (is_numeric($value)) { // Int and Float
            if (false !== strpos($value, '.') || false !== stripos($value, 'e')) {
                $valueObject = new Types\FloatType($value);
            } else {
                $valueObject = new Types\IntegerType((int) $value);
            }
        } else { // String
            $valueObject = new Types\StringType(substr($value, 1, -1));
        }

        if (null !== $comment) {
            $valueObject->setComment(new Types\CommentType($comment));
        }

        return $valueObject;
    }
}
