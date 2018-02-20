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

namespace Boo\LuaParser\Tests;

use Boo\LuaParser\Parser;
use Generator;
use PHPUnit\Framework\TestCase;
use Symfony\Component\Finder\Finder;
use Symfony\Component\Finder\SplFileInfo;
use Symfony\Component\Process\Process;

final class ParserTest extends TestCase
{
    /**
     * Provides tests with Lua code.
     */
    public function fixtureProvider(): Generator
    {
        $finder = new Finder();

        $finder->in('tests/Fixtures');
        $finder->name('*.lua');
        $finder->sort(static function (SplFileInfo $a, SplFileInfo $b) {
            return $a->getSize() - $b->getSize();
        });

        foreach ($finder as $file) {
            yield $file->getPathname() => [$file];
        }
    }

    /**
     * @dataProvider fixtureProvider
     */
    public function testGetLua(SplFileInfo $file): void
    {
        $lua = preg_replace('/\R/u', PHP_EOL, $file->getContents());
        $parser = new Parser($file->getPathname());

        self::assertSame(
            md5($lua),
            md5($parser->getLua()),
            './bin/inspect-lua '.$file->getPathname()
        );
    }

    /**
     * @dataProvider fixtureProvider
     */
    public function testGetArray(SplFileInfo $file): void
    {
        $process = new Process(['./bin/fixture-to-json', $file->getPathname()], dirname(__DIR__));
        $parser = new Parser($file->getPathname());

        $process->mustRun();

        self::assertEquals(
            json_decode($process->getOutput(), true),
            $parser->getArray(),
            $process->getCommandLine()
        );
    }
}
