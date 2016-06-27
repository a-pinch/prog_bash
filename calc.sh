#!/bin/bash

read a b c

while [[ $a != "exit" ]]; do
    if [[ $a && $b && $c && ("+-/*%" == *"$b"* || $b=="**") ]]
    then
        let "r = $a $b $c"
        echo $r
    else
        echo "error"
        exit 0
    fi
    read a b c
done;
echo bye
