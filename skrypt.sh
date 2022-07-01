#!/bin/bash


ourfilename=$0

date=$1
DATE=`date +%d.%m.%y`

if [ "$1" = "--date" ]; then
echo $DATE		
else
:
fi

if [ "$1" = "--logs" ] && [ -z "$2" ]; then
for i in {1..100}
						do
    							echo log${i} $0 '--date' $DATE > "log${i}.txt"
						done					
else
:
fi

if [ "$1" = "--logs" ] && [ -n "$2" ]; then
					
j=1
while [ $j -lt $2 ]
do
echo log${j} $0 '--logs' $2 $DATE > "log${j}.txt"
(( j ++))
done
echo log${j} $0 '--logs' $2 $DATE > "log${j}.txt"


else
:
fi
