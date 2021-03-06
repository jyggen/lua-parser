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

use Boo\LuaParser\Types\CommentType;

interface ValueInterface extends TypeInterface
{
    /**
     * Gets the array value's comment.
     *
     * @return null|CommentType
     */
    public function getComment(): ?CommentType;

    /**
     * Sets the array value's comment.
     *
     * @param CommentType $comment
     */
    public function setComment(CommentType $comment): void;
}
