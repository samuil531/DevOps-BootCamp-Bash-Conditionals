#!/bin/bash

given_string=$1

alphabet="[a-zA-Z]"
numbers="[0-9]"
symbols="!@#$%^&()_+"
letter_counter=0
number_counter=0
symbol_counter=0

for (( i=0; i<${#given_string}; i++ ))
do
    current_symbol=${given_string:$i:1}
    if [[ $current_symbol =~ $alphabet ]]
    then
        letter_counter=$(($letter_counter+1))
    fi
done

for (( i=0; i<${#given_string}; i++ ))
do
    current_symbol=${given_string:$i:1}
    if [[ $current_symbol =~ $numbers ]]
    then
        number_counter=$(($number_counter+1))
    fi
done

for (( i=0; i<${#given_string}; i++ ))
do
    current_symbol=${given_string:$i:1}
    if [[ $symbols == *"$current_symbol"* ]]
    then
        symbol_counter=$(($symbol_counter+1))
    fi
done

echo "Numbers: $number_counter Symbols: $symbol_counter Letters: $letter_counter"
