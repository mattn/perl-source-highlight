use inc::Module::Install;
name 'Source-Highlight';
all_from 'lib/Source\Highlight.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
