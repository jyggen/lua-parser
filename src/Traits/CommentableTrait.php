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

namespace Boo\LuaParser\Traits;

trait CommentableTrait
{
    /**
     * @var string|null
     */
    private $comment;

    /**
     * Gets the object's comment.
     *
     * @return string|null
     */
    public function getComment(): ?string
    {
        return $this->comment;
    }

    /**
     * Sets the object's comment.
     *
     * @param string $comment
     */
    public function setComment(string $comment): void
    {
        $this->comment = $comment;
    }
}
