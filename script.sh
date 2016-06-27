#!/bin/bash

gcd()
{
    if [[ $1 -eq $2 ]]
    then echo "GCD is ${1}"
    elif [[ $1 -gt $2 ]]
    then 
        let "r = $1 - $2" 
        gcd $r $2
    else
        let "r = $2 - $1"
        gcd $1 $r
    fi
}

read M N
while [[ ${M} && ${N} ]] ; do
    gcd $M $N
    read M N
done
echo bye
