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

use Boo\LuaParser\Types\CommentType;

trait CommentableTrait
{
    /**
     * @var CommentType
     */
    private $comment;

    /**
     * Gets the object's comment.
     *
     * @return CommentType|null
     */
    public function getComment()
    {
        return $this->comment;
    }

    /**
     * Sets the object's comment.
     *
     * @param CommentType $comment
     */
    public function setComment(CommentType $comment)
    {
        $this->comment = $comment;
    }
}
