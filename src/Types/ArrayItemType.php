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
     * @param null|ValueInterface $value
     */
    public function __construct(KeyInterface $key, ValueInterface $value = null)
    {
        $this->key = $key;
        $this->value = $value ?? new NullType();
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
    public function flatten(): array
    {
        return [
            $this->key->flatten() => $this->value->flatten(),
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function toLua(int $depth = 0): string
    {
        $lua = str_repeat("\t", $depth);
        $lua .= '['.$this->key->toLua($depth).'] = ';
        $lua .= $this->value->toLua($depth);
        $lua .= ',';

        if (null !== $this->value->getComment()) {
            $commentValue = $this->value->getComment();

            if (',' === substr($commentValue, -1)) {
                $lua = substr($lua, 0, -1);
            }

            $lua .= ' --'.$commentValue; // @todo: CommentType
        }

        return $lua.PHP_EOL;
    }
}
