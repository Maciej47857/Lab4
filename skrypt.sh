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
    							echo log${i} $0 '--date' $DATE > "log${i}.txt"
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
PATH="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
echo $PATH			
else
:
fi
