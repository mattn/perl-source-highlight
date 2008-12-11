use strict;
use warnings;

use lib qw/lib/;
use Perl6::Say;
use Source::Highlight;

# for windows,
#  you will have to specify --data-dir
# source_highlight_command => 'c:/tools/source-highlight.exe --data-dir=c:/tools/share/source-highlight'

my $sh = Source::Highlight->new;
open my $fh, "<", "lib/Source/Highlight.pm";
my $code = do { local $/; join '', <$fh> };
close $fh;
say $sh->format($code, "perl");

# or $sh->format_file("lib/Source/Highlight.pm");
