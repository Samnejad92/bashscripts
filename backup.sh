#! /bin/bash
SRC=$1
DST=$2

if [ -z $SRC ] || [ -z $DST ]
then
    echo "Two Arguments needed"
    exit 1
fi

if [ -e $SRC ]
then
    cp -rv $SRC $DST
    echo "Backup Seccussful"
else
    echo "Source Path not exists: $SRC"
fi
