#!/bin/bash


ourfilename=$0
date=$1
DATE=`date +%d.%m.%y`

repository="https://github.com/Maciej47857/Lab4.git"

if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
echo $DATE		
else
:
fi

if [ "$1" = "--logs" ] || [ "$1" = "-l" ] && [ -z "$2" ]; then
for i in {1..100}
						do
    							echo log${i} $0 '--date' $DATE > "log${i}"/"log${i}.txt"
						done					
else
:
fi

if [ "$1" = "--logs" ] || [ "$1" = "-l" ] && [ -n "$2" ]; then
					
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

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
echo -e "--date -d \n--logs -l <number> \n--help -h"

else
:
fi

if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
echo $DATE		
else
:
fi

if [ "$1" = "--init" ]; then

git clone "$repository"
PATH="$PATH:$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
echo $PATH		
else
:
fi

if [ "$1" = "--error" ] || [ "$1" = "-e" ] && [ -n "$2" ]; then
					
k=1
while [ $k -lt $2 ]
do
echo error${k} $0 '--logs' $2 $DATE > "error${k}"/"error${k}.txt"
(( k ++))
done
echo error${k} $0 '--logs' $2 $DATE > "error${k}"/"error$kj}.txt"


else
:
fi

if [ "$1" = "--error" ] || [ "$1" = "-e" ] && [ -z "$2" ]; then
for l in {1..100}
						do
    							echo error${l} $0 '--date' $DATE > "error${l}"/"error${l}.txt"
						done					
else
:
fi
