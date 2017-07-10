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
        if (\mb_substr($value, -4) === '] = ' && $value[0] === '[') {
            $value = \mb_substr($value, 1, -4);

            if ($value[0] === '"' && \mb_substr($value, -1) === '"') {
                $value = \mb_substr($value, 1, -1);

                return self::T_ASSOC_KEY;
            }

            $value = (int) $value;

            return self::T_INDEX_KEY;
        }

        if (\mb_substr($value, -3) === ' = ') {
            $value = \mb_substr($value, 0, -3);

            return self::T_VARIABLE;
        }

        if ($value === 'true' || $value === 'false') {
            $value = ($value === 'true') ? true : false;

            return self::T_BOOLEAN;
        }

        if (\is_numeric($value)) {
            if (\mb_strpos($value, '.') !== false || \mb_stripos($value, 'e') !== false) {
                return self::T_FLOAT;
            }

            $value = (int) $value;

            return self::T_INTEGER;
        }

        if ($value[0] === '"' && \mb_substr($value, -1) === '"') {
            $value = \mb_substr($value, 1, -1);

            return self::T_STRING;
        }

        if (\mb_substr($value, 0, self::COMMENT_LENGTH) === '--') {
            $value = \mb_substr(\trim($value), self::COMMENT_LENGTH);

            return self::T_COMMENT;
        }

        if (\ctype_alpha($value[0]) || $value[0] === '_') {
            return self::T_VARIABLE;
        }

        throw new UnexpectedValueException($value);
    }
}
