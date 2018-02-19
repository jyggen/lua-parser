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

final class BooleanType implements ValueInterface
{
    use CommentableTrait;

    /**
     * @var bool
     */
    private $value;

    public function __construct(bool $value)
    {
        $this->value = $value;
    }

    /**
     * {@inheritdoc}
     */
    public function flatten(): bool
    {
        return $this->value;
    }

    /**
     * {@inheritdoc}
     */
    public function toLua(int $depth = 0): string
    {
        return (true === $this->value) ? 'true' : 'false';
    }
}
