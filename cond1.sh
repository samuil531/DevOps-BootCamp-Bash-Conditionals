#!/bin/bash

IFS=',' read -r -a array <<< "$1"

str=$@
sum=
IFS=,
for i in $str
do
        if [ $(($i%2)) -eq 0 ]
        then
                sum=$[$sum+$i]
        fi
done
echo $sum
