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

namespace Boo\LuaParser\Types;

use Boo\LuaParser\Interfaces\TypeInterface;
use Boo\LuaParser\Interfaces\ValueInterface;
use Boo\LuaParser\Traits\CommentableTrait;

abstract class AbstractScalarType implements TypeInterface, ValueInterface
{
    use CommentableTrait;

    /**
     * @var string
     */
    private $value;

    /**
     * @param string $value
     */
    public function __construct(string $value)
    {
        $this->value = $value;
    }

    /**
     * Gets the wrapped scalar value as a string.
     *
     * @return string
     */
    public function __toString(): string
    {
        return $this->value;
    }
}
