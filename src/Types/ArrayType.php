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

use Boo\LuaParser\Interfaces\ValueInterface;
use Boo\LuaParser\Traits\CommentableTrait;

final class ArrayType implements ValueInterface
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
    public function addItem(ArrayItemType $item): void
    {
        $this->items[] = $item;
    }

    /**
     * Adds a keyless value to the array.
     *
     * @param ValueInterface $value
     */
    public function addKeylessValue(ValueInterface $value): void
    {
        $this->keylessValues[] = $value;
    }

    /**
     * {@inheritdoc}
     */
    public function flatten(): array
    {
        $array = [];

        foreach ($this->keylessValues as $value) {
            $comment = $value->getComment();

            if (
                $comment !== null &&
                empty($this->items) === false &&
                preg_match('/^ -- \[(\d+)\]$/', $comment->toLua(), $match) === 1
            ) {
                $array[$match[1]] = $value->flatten();
                continue;
            }

            $array[] = $value->flatten();
        }

        foreach ($this->items as $item) {
            $array += $item->flatten();
        }

        return $array;
    }

    /**
     * {@inheritdoc}
     */
    public function toLua(int $depth = 0): string
    {
        $lua = '{'.PHP_EOL;

        ++$depth;

        foreach ($this->keylessValues as $value) {
            $lua .= str_repeat("\t", $depth);
            $lua .= $value->toLua($depth);
            $lua .= ',';

            if (null !== $value->getComment()) {
                $lua .= $value->getComment()->toLua($depth);
            }

            $lua .= PHP_EOL;
        }

        $lua = array_reduce(
            $this->items,
            static function (string $lua, ArrayItemType $arrayItem) use ($depth) {
                return $lua.$arrayItem->toLua($depth);
            },
            $lua
        );

        --$depth;

        $lua .= str_repeat("\t", $depth);
        $lua .= '}';

        return $lua;
    }
}
