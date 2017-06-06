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

require 'vendor/autoload.php';

use Boo\LuaParser\Parser;
use SebastianBergmann\Diff\Differ;
use Symfony\Component\Finder\Finder;

\chdir(__DIR__);

$path = '/Applications/World of Warcraft/WTF/Account/JYGGEN';
$differ = new Differ();
$finder = new Finder();
$finder = $finder->in($path)->name('*.lua');
$index = 0;

foreach ($finder as $file) {
    ++$index;

    echo $index.': '.$file.PHP_EOL;

    $lua = \preg_replace('/\R/u', PHP_EOL, \file_get_contents((string) $file));
    $parser = new Parser($lua);

    if (\md5($lua) !== \md5($parser->getLua())) {
        dump($parser->getAst());
        dump($differ->diff($lua, $parser->getLua()));

        return;
    }
}
