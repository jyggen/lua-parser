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

final class VariableType implements TypeInterface
{
    /**
     * @var string
     */
    private $name;

    /**
     * @var ValueInterface
     */
    private $value;

    /**
     * @param string              $name
     * @param ValueInterface|null $value
     */
    public function __construct(string $name, ValueInterface $value = null)
    {
        $this->name = $name;
        $this->value = ($value !== null) ? $value : new NullType();
    }

    /**
     * Sets the variable's value.
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
        return \vsprintf('%s = %s', [
            $this->name,
            $this->value->toLua($depth),
        ]).PHP_EOL;
    }
}
