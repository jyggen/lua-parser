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
     * Sets the value of the array item.
     *
     * @param ValueInterface $value
     */
    public function setValue(ValueInterface $value): void
    {
        $this->value = $value;
    }

    /**
     * {@inheritdoc}
     */
    public function toLua(int $depth = 0): string
    {
        $lua = \str_repeat("\t", $depth);
        $lua .= \sprintf('[%s] = ', $this->key->toLua($depth));
        $lua .= $this->value->toLua($depth);
        $lua .= ',';

        if ($this->value->getComment() !== null) {
            $commentValue = $this->value->getComment();

            if (\mb_substr($commentValue, -1) === ',') {
                $lua = \mb_substr($lua, 0, -1);
            }

            $lua .= ' --'.$commentValue; // @todo: CommentType
        }

        return $lua.PHP_EOL;
    }
}
