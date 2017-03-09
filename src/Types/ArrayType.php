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

final class ArrayType implements TypeInterface, ValueInterface
{
    use CommentableTrait;

    /**
     * @var ArrayItemType[]
     */
    private $items = [];

    /**
     * @var ValueInterface[]
     */
    private $keylessValues = [];

    /**
     * Adds an item to the array.
     *
     * @param ArrayItemType $item
     */
    public function addItem(ArrayItemType $item)
    {
        $this->items[] = $item;
    }

    /**
     * Adds a keyless value to the array.
     *
     * @param ValueInterface $value
     */
    public function addKeylessValue(ValueInterface $value)
    {
        $this->keylessValues[] = $value;
    }

    /**
     * Gets all items in the array.
     *
     * @return ArrayItemType[]
     */
    public function getItems(): array
    {
        return $this->items;
    }

    /**
     * Gets all keyless values in the array.
     *
     * @return ValueInterface[]
     */
    public function getKeylessValues(): array
    {
        return $this->keylessValues;
    }
}
