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

namespace Boo\CodeStandard;

use PhpCsFixer\Config;
use PhpCsFixer\Finder;

$header = <<<'EOF'
This file is part of the boo/lua-parser library.

(c) Jonas Stendahl <jonas@stendahl.me>

For the full copyright and license information, please view the LICENSE
file that was distributed with this source code.
EOF;

$finder = Finder::create();
$config = Config::create();
$rules = array_replace(get_php_cs_fixer_rules(), [
    'header_comment' => [
        'header' => $header,
    ],
    'mb_str_functions' => false,
]);

$finder->in(__DIR__);
$finder->name('.php_cs');
$finder->name('generate-fixtures');
$finder->ignoreDotFiles(false);

$config->setFinder($finder);
$config->setRiskyAllowed(true);
$config->setRules($rules);

return $config;
