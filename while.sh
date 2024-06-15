#! /bin/bash
var=10
while [ $var -gt 0 ]
do
    echo "Round $var"
    var=$[ $var - 1 ]
done
