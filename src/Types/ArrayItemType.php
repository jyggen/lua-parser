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

use Boo\LuaParser\Interfaces\KeyInterface;
use Boo\LuaParser\Interfaces\TypeInterface;
use Boo\LuaParser\Interfaces\ValueInterface;

final class ArrayItemType implements TypeInterface
{
    /**
     * @var KeyInterface
     */
    private $key;

    /**
     * @var ValueInterface
     */
    private $value;

    /**
     * @param KeyInterface        $key
     * @param ValueInterface|null $value
     */
    public function __construct(KeyInterface $key, ValueInterface $value = null)
    {
        $this->key = $key;
        $this->value = ($value !== null) ? $value : new NullType();
    }

    /**
     * Gets the key of the array item.
     *
     * @return KeyInterface
     */
    public function getKey(): KeyInterface
    {
        return $this->key;
    }

    /**
     * Gets the value of the array item.
     *
     * @return ValueInterface
     */
    public function getValue(): ValueInterface
    {
        return $this->value;
    }

    /**
     * Sets the value of the array item.
     *
     * @param ValueInterface $value
     */
    public function setValue(ValueInterface $value)
    {
        $this->value = $value;
    }
}
