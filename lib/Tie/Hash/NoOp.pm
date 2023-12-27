## no critic: TestingAndDebugging::RequireUseStrict
package Tie::Hash::NoOp;

# IFUNBUILT
use strict;
# END IFUNBUILT

# AUTHORITY
# DATE
# DIST
# VERSION

sub TIEHASH {
    my $class = shift;

    bless [], $class;
}

sub FETCH {}

sub STORE {}

sub DELETE {}

sub CLEAR {}

sub EXISTS {}

sub FIRSTKEY {}

sub NEXTKEY {}

sub SCALAR {0}

sub UNTIE {}

# DESTROY

1;
# ABSTRACT: Tied hash that does nothing

=for Pod::Coverage ^(.+)$

=head1 SYNOPSIS

 use Tie::Hash::NoOp;

 tie my %hash, 'Tie::Hash::NoOp';


=head1 DESCRIPTION

This class implements a tied hash that does nothing. For benchmark purposes.


=head1 SEE ALSO

L<perltie>

Other C<Tie::*::NoOp>

L<Bencher::Scenarios::Tie>

=cut
