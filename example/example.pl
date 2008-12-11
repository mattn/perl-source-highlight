use strict;
use warnings;

use lib qw/lib/;
use Perl6::Say;
use Source::Highlight;

my $sh = Source::Highlight->new;
open my $fh, "<", "lib/Source/Highlight.pm";
my $code = do { local $/; join '', <$fh> };
close $fh;
say $sh->format($code, "perl");
