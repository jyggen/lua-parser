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

namespace Boo\LuaParser\Interfaces;

interface TypeInterface
{
    /**
     * Transforms the type into Lua code.
     */
    public function toLua(int $depth = 0): string;
}
