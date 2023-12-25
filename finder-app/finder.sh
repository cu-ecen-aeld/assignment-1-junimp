#!/bin/bash

#invocation:  
# directory
# stringToSearch
# ./finder.sh  /usr/share/dict/  AA
#./finder.sh  /tmp/aeld-data  AELD_IS_FUN

if [ $# -ne 2 ]
then
	echo required no of arguments is 2. filesdir and searchstr
	exit 1
	
fi

if test ! -e  $1 
then
	echo "diectory $1 doesnot exist"
	exit 1
fi	

filesdir=$1
searchstr=$2

echo ""
echo file path is  $filesdir
echo search string is $searchstr

X=$( ls $filesdir | wc -l )
Y=$( grep -r $searchstr  $filesdir  | wc -l )


#echo "The no of files are $X  and  The no of matching lines are $Y"

echo "The number of files are ${X} and the number of matching lines are ${Y}"

