package Source::Highlight;

use strict;
use warnings;
use Mouse;
use File::Temp;
our $VERSION = '0.01';

has 'source_highlight_command' => (
    is         => 'ro',
    isa        => 'Str',
    required   => 1,
    default    => sub {
        'source-highlight',
    },
);

sub format {
    my ($self, $code, $lang) = @_;

    my $fh = File::Temp->new();
    my $filename  = $fh->filename;
    print {$fh} $code;
    close $fh;

    my $cmd = $self->source_highlight_command;
    my $html = qx "$cmd -s $lang -o STDOUT $filename";
    return $html;
}

1;
__END__

=encoding utf8

=head1 NAME

Source::Highlight -

=head1 SYNOPSIS

  use Source::Highlight;

=head1 DESCRIPTION

Source::Highlight is

=head1 AUTHOR

 E<lt>E<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
