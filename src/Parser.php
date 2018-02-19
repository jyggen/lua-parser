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

use Boo\LuaParser\Types\ArrayType;
use Boo\LuaParser\Types\CommentType;
use UnexpectedValueException;

final class Parser
{
    /**
     * @var array
     */
    private $ast;

    /**
     * @var Lexer
     */
    private $lexer;

    public function __construct(string $lua)
    {
        $this->lexer = new Lexer();
        $this->lexer->setInput($lua);
    }

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

        $this->lexer->reset();

        $ast = [];
        $contexts = [];

        while (null !== $this->lexer->glimpse()) {
            end($contexts);
            $this->lexer->moveNext();

            $type = $this->lexer->lookahead['type'];
            $value = $this->lexer->lookahead['value'];

            $contextKey = key($contexts);
            $context = (null !== $contextKey) ? $contexts[$contextKey] : null;

            if (in_array($type, [Lexer::T_ASSOC_KEY, Lexer::T_INDEX_KEY], true)) {
                if (false === $context instanceof Types\ArrayType) {
                    throw new UnexpectedValueException(get_class($context).' is not an instance of ArrayType');
                }

                $context->addItem($contexts[] = new Types\ArrayItemType(
                    (Lexer::T_ASSOC_KEY === $type)
                        ? new Types\StringType($value)
                        : new Types\IntegerType($value)
                ));

                continue;
            }

            if (Lexer::T_COMMENT === $type) {
                if (false === $context instanceof Types\ArrayItemType) {
                    continue;
                }

                $lastCharacter = substr(trim($value), -1);

                if (true === $this->lexer->isA($lastCharacter, Lexer::T_COMMA)) {
                    array_pop($contexts);
                }

                continue;
            }

            if (Lexer::T_COMMA === $type) {
                if ($context instanceof Types\ArrayItemType) {
                    array_pop($contexts);
                }

                continue;
            }

            if (Lexer::T_VARIABLE === $type) {
                $ast[] = $contexts[] = new Types\VariableType($value);

                continue;
            }

            if (Lexer::T_CURLY_BRACKET_OPEN === $type) {
                if ($context instanceof Types\VariableType || $context instanceof Types\ArrayItemType) {
                    $context->setValue($contexts[] = new Types\ArrayType());
                    continue;
                }

                if ($context instanceof Types\ArrayType) {
                    $context->addKeylessValue($contexts[] = new Types\ArrayType());
                    continue;
                }

                throw new UnexpectedValueException();
            }

            if (Lexer::T_CURLY_BRACKET_CLOSE === $type) {
                $this->lexer->peek();
                $potentialComment = $this->lexer->peek();

                if (Lexer::T_COMMENT === $potentialComment['type']) {
                    $context->setComment(new CommentType($potentialComment['value']));
                }

                $this->lexer->resetPeek();

                array_pop($contexts);
                continue;
            }

            if (Lexer::T_SQUARE_BRACKET_OPEN === $type) {
                $key = $this->lexer->glimpse();

                if (false === $context instanceof Types\ArrayType) {
                    throw new UnexpectedValueException(get_class($context).' is not an instance of ArrayType');
                }

                switch ($key['type']) {
                    case Lexer::T_INTEGER:
                        $key = new Types\IntegerType($key['value']);
                        break;
                    case Lexer::T_STRING:
                        $key = new Types\StringType($key['value']);
                        break;
                    default:
                        throw new UnexpectedValueException();
                }

                $context->addItem($contexts[] = new Types\ArrayItemType($key));

                $this->lexer->moveNext(); // skip the key we've already glimpsed.
                continue;
            }

            if (in_array($type, [
                Lexer::T_BOOLEAN,
                Lexer::T_FLOAT,
                Lexer::T_INTEGER,
                Lexer::T_NULL,
                Lexer::T_STRING,
            ], true)) {
                switch ($type) {
                    case Lexer::T_BOOLEAN:
                        $value = new Types\BooleanType($value);
                        break;
                    case Lexer::T_FLOAT:
                        $value = new Types\FloatType($value);
                        break;
                    case Lexer::T_INTEGER:
                        $value = new Types\IntegerType($value);
                        break;
                    case Lexer::T_NULL:
                        $value = new Types\NullType();
                        break;
                    case Lexer::T_STRING:
                        $value = new Types\StringType($value);
                        break;
                    default:
                        throw new UnexpectedValueException();
                }

                $potentialComment = $this->lexer->peek();

                if (Lexer::T_COMMENT !== $potentialComment['type']) {
                    $potentialComment = $this->lexer->peek();
                }

                $this->lexer->resetPeek();

                if (Lexer::T_COMMENT === $potentialComment['type']) {
                    $value->setComment(new CommentType($potentialComment['value']));
                }

                if ($context instanceof Types\ArrayItemType || $context instanceof Types\VariableType) {
                    $context->setValue($value);
                    continue;
                }

                if ($context instanceof Types\ArrayType) {
                    $context->addKeylessValue($value);
                    continue;
                }

                throw new UnexpectedValueException();
            }

            throw new UnexpectedValueException();
        }

        $this->ast = $ast;

        return $ast;
    }

    public function getLua(): string
    {
        $lua = PHP_EOL;

        foreach ($this->getAst() as $type) {
            $lua .= $type->toLua();
        }

        return $lua;
    }
}
