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

use Doctrine\Common\Lexer\AbstractLexer;
use UnexpectedValueException;

final class Lexer extends AbstractLexer
{
    /**
     * @var int
     */
    const COMMENT_LENGTH = 2;

    /**
     * @var int
     */
    const T_VARIABLE = 1;

    /**
     * @var int
     */
    const T_ASSOC_KEY = 666;

    /**
     * @var int
     */
    const T_INDEX_KEY = 667;

    /**
     * @var int
     */
    const T_STRING = 2;

    /**
     * @var int
     */
    const T_EQUAL = 3;

    /**
     * @var int
     */
    const T_CURLY_BRACKET_OPEN = 4;

    /**
     * @var int
     */
    const T_CURLY_BRACKET_CLOSE = 5;

    /**
     * @var int
     */
    const T_SQUARE_BRACKET_OPEN = 6;

    /**
     * @var int
     */
    const T_SQUARE_BRACKET_CLOSE = 7;

    /**
     * @var int
     */
    const T_DOUBLE_QUOTE = 8;

    /**
     * @var int
     */
    const T_INTEGER = 9;

    /**
     * @var int
     */
    const T_FLOAT = 10;

    /**
     * @var int
     */
    const T_COMMA = 11;

    /**
     * @var int
     */
    const T_MINUS = 12;

    /**
     * @var int
     */
    const T_BOOLEAN = 13;

    /**
     * @var int
     */
    const T_NULL = 14;

    /**
     * @var int
     */
    const T_COMMENT = 15;

    /**
     * {@inheritdoc}
     */
    protected function getCatchablePatterns(): array
    {
        return [
            '--.*?\R',
            '\[-?(?:[0-9]+(?:[\.][0-9]+)*)(?:e[+-]?[0-9]+)?\] = ',
            '\["[^"\\\\]*(?:\\\\.[^"\\\\]*)*"\] = ',
            '[a-z_\\\][a-z0-9_\:\\\]*[a-z0-9_]{1} = ',
            '"[^"\\\\]*(?:\\\\.[^"\\\\]*)*"',
            '-\d+(?:\.\d+)?',
            '[a-z_\\\][a-z0-9_\:\\\]*[a-z0-9_]{1}',
            '(?:[0-9]+(?:[\.][0-9]+)*)(?:e[+-]?[0-9]+)?',
        ];
    }

    /**
     * {@inheritdoc}
     */
    protected function getModifiers(): string
    {
        return 'iu';
    }

    /**
     * {@inheritdoc}
     */
    protected function getNonCatchablePatterns(): array
    {
        return [
            '\s+',
            '(.)',
        ];
    }

    /**
     * {@inheritdoc}
     */
    protected function getType(&$value): int
    {
        switch ($value) {
            case '{':
                return self::T_CURLY_BRACKET_OPEN;
            case '}':
                return self::T_CURLY_BRACKET_CLOSE;
            case ',':
                return self::T_COMMA;
            case 'nil':
                return self::T_NULL;
        }

        return $this->getAdvancedTypes($value);
    }

    /**
     * @throws UnexpectedValueException
     */
    private function getAdvancedTypes(string &$value): int
    {
        if (true === $this->isKey($value)) {
            $value = substr($value, 1, -4);

            if (true === $this->isAssocKey($value)) {
                $value = substr($value, 1, -1);

                return self::T_ASSOC_KEY;
            }

            $value = (int) $value;

            return self::T_INDEX_KEY;
        }

        if (true === $this->isBoolean($value)) {
            $value = ('true' === $value) ? true : false;

            return self::T_BOOLEAN;
        }

        if (is_numeric($value)) {
            if (true === $this->isFloat($value)) {
                return self::T_FLOAT;
            }

            $value = (int) $value;

            return self::T_INTEGER;
        }

        if (true === $this->isString($value)) {
            $value = substr($value, 1, -1);

            return self::T_STRING;
        }

        if ('--' === substr($value, 0, self::COMMENT_LENGTH)) {
            $value = substr(trim($value), self::COMMENT_LENGTH);

            return self::T_COMMENT;
        }

        if (' = ' === substr($value, -3)) {
            $value = substr($value, 0, -3);

            return self::T_VARIABLE;
        }

        if (true === $this->isVariable($value)) {
            return self::T_VARIABLE;
        }

        throw new UnexpectedValueException($value);
    }

    /**
     * Returns whether the value is an associative key or not.
     */
    private function isAssocKey(string $value): bool
    {
        return '"' === $value[0] && '"' === substr($value, -1);
    }

    /**
     * Returns whether the value is a booleam or not.
     */
    private function isBoolean(string $value): bool
    {
        return 'true' === $value || 'false' === $value;
    }

    /**
     * Returns whether the value is a float or not.
     */
    private function isFloat(string $value): bool
    {
        return false !== strpos($value, '.') || false !== stripos($value, 'e');
    }

    /**
     * Returns whether the value is a key or not.
     */
    private function isKey(string $value): bool
    {
        return '] = ' === substr($value, -4) && '[' === $value[0];
    }

    /**
     * Returns whether the value is a string or not.
     */
    private function isString(string $value): bool
    {
        return '"' === $value[0] && '"' === substr($value, -1);
    }

    /**
     * Returns whether the value is a variable or not.
     */
    private function isVariable(string $value): bool
    {
        return true === ctype_alpha($value[0]) || '_' === $value[0];
    }
}
