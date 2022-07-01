#!/bin/bash


ourfilename=$0

date=$1
DATE=`date +%d.%m.%y`

if [ "$1" = "--date" ]; then
echo $DATE					
else
:
fi