#!/bin/bash
if [ "$#" -ne 2 ]
then
	echo "Usage: ./writer.sh writefile writestr"
	exit 1
fi
writestr=$2
writefile=$1

echo "$n"
echo "${writefile#/%gz/}"
pos=0
len=${#writefile}


for ((idx = 0; idx <= len; idx++))
do
	if [ "${writefile:idx:1}" == "/" ]
		then
			pos=$idx
			echo $pos
		fi
done

dir=${writefile:0:pos}
echo $dir
if ! [ -d $dir ] 
then
	mkdir -p $dir
	touch $writefile
fi
if [ $? -ne 0 ]
then
	echo "return value of touch $?"
	exit 1
fi
echo $writestr >> $writefile
if [ $? -ne 0 ]
then
	echo "return value of echo $?"
	exit 1
fi

