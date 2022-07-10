#!/bin/bash

input=$1
type=${input: -1}
temp=${input::-1}

if [[ $type == "K" ]]
then
    result=$(($temp-273))
    echo -n "$result"
    echo "C"
elif [[ $type == "C" ]]
then
    result=$(($temp+273))
    echo -n "$result"
    echo "K"
fi
