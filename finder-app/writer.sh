#!/bin/bash

#invocation:  
#filename
#stringToWrite
# ./writer.sh  /tmp/aesd/assignment1/sample.txt ios

if [ $# -ne 2 ]
then
	echo required no of arguments is 2. filesdir and searchstr
	exit 1
	
fi

writefile=$1
writestr=$2

dir=$(dirname $writefile)



#echo ""
#echo "$0 file path is  $writefile"
#echo "$0 directory is $dir"
#echo "$0 write string is $writestr"
#echo ""



ERROR=$((mkdir -p $dir && echo $writestr > $writefile) 2>&1) 


#ret=$( echo $? )

if [ $? -ne 0 ]
then
	echo "This is error: $ERROR"
fi




