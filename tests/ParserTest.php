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

use Boo\LuaParser\Parser;
use PHPUnit\Framework\TestCase;
use Symfony\Component\Finder\Finder;
use Symfony\Component\Finder\SplFileInfo;

final class ParserTest extends TestCase
{
    public function fixtureProvider(): Generator
    {
        $finder = (new Finder())->in('tests/Fixtures')->name('*.lua');

        foreach ($finder as $file) {
            yield $file->getPathname() => [$file];
        }
    }

    /**
     * @dataProvider fixtureProvider
     */
    public function testAgainstFixtures(SplFileInfo $file)
    {
        $lua = \preg_replace('/\R/u', PHP_EOL, $file->getContents());
        $parser = new Parser($lua);

        //$parser->getAst();

        //dump(round($file->getSize() / 1024 / 1024, 2).'MB');
        //dump(round(memory_get_usage() / 1024 / 1024, 2).'MB');

        $this->assertSame(\md5($lua), \md5($parser->getLua()));
    }
}
