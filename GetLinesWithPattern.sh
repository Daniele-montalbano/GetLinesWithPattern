#!/usr/bin/perl
use strict;
use warnings;

# short help routine in case of erroneous call
my $numargs=3;
if ($#ARGV != ($numargs - 1))
{
        printf "Usage: $0 FILE_INPUT FILE_OUTPUT PATTERN_TO_FIND";
        exit 127;
}

my $pattern=$ARGV[2];
my @regexp_array;

open (FHR, "<","$ARGV[0]") || die "Can't open $ARGV[0]:  $!";
open (FHW, ">","$ARGV[1]") || die "Can't open $ARGV[1]:  $!";

while (<FHR>)
{
        my $line = substr $_, 0, 10;
        if ($line =~/$pattern/)
        {
                print FHW $_;
        }
}
