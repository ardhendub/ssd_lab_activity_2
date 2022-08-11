#!/bin/bash
a=`awk 'END { print NR }' $1`
#a=$?
#echo $a
if test `expr $a % 2` -eq 1
then
	a=`expr $a + 1`
fi
a=`expr $a / 2`
#echo $a
awk 'NR=='$a' {print $0}' $1 
