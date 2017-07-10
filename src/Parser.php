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

    /**
     * Gets the Lua string's AST.
     *
     * @throws UnexpectedValueException
     */
    public function getAst(): array
    {
        if ($this->ast !== null) {
            return $this->ast;
        }

        $this->lexer->reset();

        $ast = [];
        $contexts = [];

        while (null !== $this->lexer->glimpse()) {
            \end($contexts);
            $this->lexer->moveNext();

            $type = $this->lexer->lookahead['type'];
            $value = $this->lexer->lookahead['value'];

            $contextKey = \key($contexts);
            $context = ($contextKey !== null) ? $contexts[$contextKey] : null;

            if ($this->lexer->isNextTokenAny([Lexer::T_ASSOC_KEY, Lexer::T_INDEX_KEY]) === true) {
                if ($context instanceof Types\ArrayType === false) {
                    throw new UnexpectedValueException(\get_class($context).' is not an instance of ArrayType');
                }

                $context->addItem($contexts[] = new Types\ArrayItemType(
                    ($type === Lexer::T_ASSOC_KEY)
                        ? new Types\StringType($value)
                        : new Types\IntegerType($value)
                ));

                continue;
            }

            if ($this->lexer->isNextToken(Lexer::T_COMMENT) === true) {
                if ($context instanceof Types\ArrayItemType === false) {
                    continue;
                }

                $lastCharacter = \mb_substr(\trim($value), -1);

                if ($this->lexer->isA($lastCharacter, Lexer::T_COMMA) === true) {
                    \array_pop($contexts);
                }

                continue;
            }

            if ($this->lexer->isNextToken(Lexer::T_COMMA) === true) {
                if ($context instanceof Types\ArrayItemType) {
                    \array_pop($contexts);
                }

                continue;
            }

            if ($this->lexer->isNextToken(Lexer::T_VARIABLE) === true) {
                $ast[] = $contexts[] = new Types\VariableType($value);

                continue;
            }

            if ($this->lexer->isNextToken(Lexer::T_CURLY_BRACKET_OPEN) === true) {
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

            if ($this->lexer->isNextToken(Lexer::T_CURLY_BRACKET_CLOSE) === true) {
                $this->lexer->peek();
                $potentialComment = $this->lexer->peek();

                if ($potentialComment['type'] === Lexer::T_COMMENT) {
                    $context->setComment(new CommentType($potentialComment['value']));
                }

                $this->lexer->resetPeek();

                \array_pop($contexts);
                continue;
            }

            if ($this->lexer->isNextToken(Lexer::T_SQUARE_BRACKET_OPEN) === true) {
                $key = $this->lexer->glimpse();

                if ($context instanceof Types\ArrayType === false) {
                    throw new UnexpectedValueException(\get_class($context).' is not an instance of ArrayType');
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

            if ($this->lexer->isNextTokenAny([
                Lexer::T_BOOLEAN,
                Lexer::T_FLOAT,
                Lexer::T_INTEGER,
                Lexer::T_NULL,
                Lexer::T_STRING,
            ]) === true) {
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

                if ($potentialComment['type'] !== Lexer::T_COMMENT) {
                    $potentialComment = $this->lexer->peek();
                }

                $this->lexer->resetPeek();

                if ($potentialComment['type'] === Lexer::T_COMMENT) {
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
