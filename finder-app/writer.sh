#!/bin/sh

WRITEFILE=$1
WRITESTR=$2

if [ $# -eq 2 ]; then
    echo "Correct number of arguments, continuing..."
else
    echo "ERROR: Invalid number of arguments, program requires two arguments: file directory path and string to be written, in that order"
    exit 1
fi

DIR=$(dirname -- $WRITEFILE)

if [ ! -d $DIR ]; then
    echo "Making path to file"
    mkdir -p $DIR
    
else
    echo "Directory exists"
fi

touch $WRITEFILE

echo $WRITESTR > $WRITEFILE
