# GetLinesWithPattern
This is a simple Unix Perl script to copy in a new file all the lines containing a certain char or numeric pattern in a fix position. Very useful for fixed column files.

To run the script use the command "perl GetLinesWithPattern.sh FILE_INPUT FILE_OUTPUT PATTERN_TO_FIND"

As default the script find the pattern provided as third input parameter at the begin of each line and 10 characters long.
To change the lenght of the pattern it is enough to change the two number at the line 21 of the script
        my $line = substr $_, 0, 10;

For example the run of the script "perl GetLinesWithPattern.sh input.txt output.txt 0000000000" will copy from the file input.txt to the file output.txt all the rows starting with 10 zero character.
