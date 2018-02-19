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

final class CommentType implements TypeInterface
{
    /**
     * @var string
     */
    private $value;

    public function __construct(string $value)
    {
        $this->value = $value;
    }

    /**
     * {@inheritdoc}
     */
    public function flatten(): void
    {
    }

    /**
     * {@inheritdoc}
     */
    public function toLua(int $depth = 0): string
    {
        return ' --'.$this->value;
    }
}
