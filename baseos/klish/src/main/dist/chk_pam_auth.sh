#!/usr/bin/perl

use strict;
use warnings;
use Getopt::Std;
use Authen::PAM      qw[:constants];
use Term::ReadKey;

my $username = '';
my $prefix = '';
my $service = qq(login);

my %opts=();

getopts('u:s:P:', \%opts);

$username = $opts{u} if($opts{u});
$service = $opts{s} if($opts{s});
$prefix = $opts{P} if($opts{P});

unless($username) 
{
	print $prefix.'Username: ';
        chomp($username=<STDIN>);
}

my $handler = sub {
    my @response = ();

    while (@_) {
        my $code    = shift;
        my $message = shift;
        my $answer  = undef;

        print $prefix.$message.qq(\n);
        if ( $code == PAM_PROMPT_ECHO_ON ) {
            ReadMode(0);
        }

        if ( $code == PAM_PROMPT_ECHO_OFF ) {
            ReadMode('noecho');
        }
        chomp($answer=<STDIN>);
        ReadMode(0);
        push( @response, PAM_SUCCESS, $answer );
    }

    return ( @response, PAM_SUCCESS );
};


my $pam = Authen::PAM->new( $service, $username, $handler );

unless ( ref $pam ) {

    my $error = Authen::PAM->pam_strerror($pam);

    print STDERR ( qq/Failed to authenticate user '$username' using service '$service'. Reason: '$error'/ );

    exit 1;
}

my $result = $pam->pam_authenticate;

unless ( $result == PAM_SUCCESS ) {

    my $error = $pam->pam_strerror($result);

    print STDERR ( qq/Failed to authenticate user '$username' using service '$service'. Reason: '$error'/ );

    exit 1;
}

# print STDOUT ( $username );

exec @ARGV;

exit 0;

1;

__END__
