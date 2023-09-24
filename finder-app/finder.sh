#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# -eq 2 ]; then
    echo "Correct number of arguments, continuing..."
else
    echo "ERROR: Invalid number of arguments, program requires two arguments: file directory path and string to be searched, in that order"
    exit 1
fi

if [ -d ${filesdir} ]; then
    echo "Directory exists, continuing..."
else
    echo "ERROR: Directory not found, enter a directory that exists. Exiting... "
    exit 1
fi

numfiles=$( find $filesdir -type f | wc -l )
matches=$( grep -R $searchstr $filesdir | wc -l )

echo "The number of files are $numfiles and the number of matching lines are $matches"


