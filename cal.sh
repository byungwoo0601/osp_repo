#!/bin/bash
#calculater script B202200294 kim byung woo

a=$( < a1.txt )
b=$( < a2.txt )

echo "...none operator parameter..."

echo  "num1 : $a"
echo  "num2 : $b"

if [ $val == "" ]
then
	PS3='select menu : $val'
	select val in "add" "sub" "div" "mul"
	do
		echo "op : $val"
		break
	done
elif [ $val == "add" ]
then
        sum=`expr $a + $b`
        echo "result : $sum"
elif [ $val == "sub" ]
then
        sum=`expr $a - $b`
        echo "result : $sum"
elif [ $val =="div" ]
then
        sum=`expr $a / $b`
        echo "result : $sum"
else
        sum=`expr $a \* $b`
        echo "result : $sum"
fi
