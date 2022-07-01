#!/bin/bash


ourfilename=$0

date=$1
DATE=`date +%d.%m.%y`

if [ "$1" = "--date" ]; then
echo $DATE		
else
:
fi

if [ "$1" = "--logs" ]; then
for i in {001..100}
						do
    							echo log${i} $0 '--date' $DATE > "log${i}.txt"
						done					
else
:
fi