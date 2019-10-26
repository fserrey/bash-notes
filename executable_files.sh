#!/bin/bash

#########################
# Find exacutable files #
######################################################################
# this script produces an output called output_path it says: 
# for each folder into PATH list, check if the files inside exist and are 
# executable and write the output on a file called output_path
######################################################################

IFS=: # Internal Field Separator,IFS (default separators for bash are: space, tab, new line ) 
        # ELSE >> you must specify them 
        # HERE you are saying you want colon as field separator

for folder in $PATH # PATH is a list of directories where the shell looks for commands
do 
	for file in $folder/*
	do
		if [ -x $file ] # checks if the file exists and is executable
		then 
		 echo "$file"
		fi
	done
done > output_path # HERE (>) you write outputs in a file