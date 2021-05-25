#! /bin/bash -x

echo "Enter the value of a"
read a
echo "Enter the value of b"
read b
echo "Enter the value of c"
read c
val1=$((a+b*c))
echo "$val1"
val2=$((a*b+c))
echo "$val2"
val3=$((c+a/b))
echo "$val3"
val4=$((a%b+c))
echo "$val4"
#echo $val1 $val2 $val3 $val4
declare -A result
result=( ["1"]=$val1 ["2"]=$val2 ["3"]=$val3 ["4"]=$val4 )
echo "The values stored in dictionary are : ${result[*]}"
declare -a array=()
for(( i=1;i<=${#result[*]};i++ ))
do
        array+=(${result[$i]})
done
echo "The values from dictionary are stored in arrays are : ${array[*]}"

