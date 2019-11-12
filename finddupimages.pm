#!/usr/bin/perl
use warnings;
use strict;
use Image::Magick;

my $im = Image::Magick->new();
my @files;

use Data::Dumper;

my @myArray;
my %new_hash_one;


my $initdir = "/home/dimi63/Images/Code_Test";

opendir (DIR, $initdir) || die "Can't open initial directory";

my @dicomdir = readdir(DIR);

closedir (DIR);

&process_directories(@dicomdir);
check_doubles();

sub process_directories {
        my @dicomdir = @_;
        my $filedirectory;
	foreach my $dicomdir (@dicomdir) {

         	if (($dicomdir ne '.') && ($dicomdir ne '..')) {

        		opendir (DIR, "$initdir/$dicomdir");

	                if (index($dicomdir, '.jpg') != -1) {
			      @files = $dicomdir;
                              $filedirectory = "$initdir";  
			}
			else {
                              @files = grep { !/^\./} readdir(DIR);
                              $filedirectory = "$initdir/$dicomdir";
	        	}

                        process_files(\@files,$filedirectory);
		}
	}
}

sub process_files {
    my ($files_ref, $filedirectory) = @_;
    my @files = @{ $files_ref };

    my $file_to_check;
    my $width;
    my $height;
    my $size;
    my $format;

    foreach my $file (@files) {
               $file_to_check = "$filedirectory/$file";
               ($width, $height, $size, $format) = $im->Ping($file_to_check);
               @myArray = ($width, $height, $size, $format );
               @{$new_hash_one{$file_to_check}} = @myArray;

    }
}

sub check_doubles {
    my $filename_one;
    my $filename_two;
    for (keys %new_hash_one) {
     	    my @value_array_one = @{$new_hash_one{$_}};
     	    $filename_one = $_;
            for (keys %new_hash_one) {
                $filename_two = $_;
                my @value_array_two = @{$new_hash_one{$_}};
                if ($filename_one ne $filename_two) {
                          if (($value_array_one[0] == $value_array_two[0]) && 
                              ($value_array_one[1] == $value_array_two[1]) &&
                              ($value_array_one[2] == $value_array_two[2]) &&
                              ($value_array_one[3] eq $value_array_two[3]) 			
                             )	
                          {
                               print "Found Duplicates:  $filename_one   $filename_two\n";
                          }
    		  }
          }	
    }
}


