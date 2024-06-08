#!/usr/bin/perl
use strict;
use warnings;

# Input and output file names
my $input_file = 'Mapping_FAULT_new.pm';
my $output_file = 'Mapping_FAULT_new_copy.pm';

# Read the input file
open(my $in_fh, '<', $input_file) or die "Could not open file '$input_file' $!";

# Array to store the lines of the file
my @lines;
while (my $line = <$in_fh>) {
    push @lines, $line;
}
close($in_fh);

# Open the output file
open(my $out_fh, '>', $output_file) or die "Could not open file '$output_file' $!";

# Write the stored lines to the new file, preserving the exact order
foreach my $line (@lines) {
    print $out_fh $line;
}

close($out_fh);

print "File '$output_file' created successfully.\n";
