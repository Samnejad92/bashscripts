#! /bin/bash
OPTION1=false # Boolean Option with default value
OPTION2=hello # Parameter Option with default value

while [ -n "$1" ]
do
    case "$1" in
        -o1) echo "OPTION1 entered"
             OPTION1=true
             shift ;;

        -o2 | --option2) echo "OPTION2 entered"
             if [ -z $2 ]; then
                 echo "Option2 needs a parameter"
                 exit 1
             fi
             OPTION2=$2
             shift
             shift ;;

         --) shift
             break ;;

          *) echo "$1 is not an Option"
             exit 1 ;;
    esac
done
echo "Option1: $OPTION1, Option2: $OPTION2"
count=1
while [ -n "$1" ]
do
    echo "Parameter #$count = $1"
    count=$[ $count + 1 ]
    shift
done
