#!/bin/bash
#calculater script B202200294 kim byung woo
arr=(`cat num1.txt` `cat num2.txt`)
echo ${arr[0]}
echo ${arr[1]}
#a=$( < num1.txt )
#b=$( < num2.txt )


echo  "num1 : ${arr[0]}"
echo  "num2 : ${arr[1]}"

PS3='select menu : '
select val in "add" "sub" "div" "mul"
do
	echo "op : $val"
	break
done
if [ $val == "add" ]
then
        sum=`expr  ${arr[0]} + ${arr[1]}`
        echo "result : $sum"
elif [ $val == "sub" ]
then
        sum=`expr  ${arr[0]} - ${arr[1]}`
        echo "result : $sum"
elif [ $val =="div" ]
then
        sum=`expr  ${arr[0]} / ${arr[1]}`
        echo "result : $sum"
else
        sum=`expr  ${arr[0]} \* ${arr[1]}`
        echo "result : $sum"
fi
