#! /bin/bash
for word in /tmp/for3/folder/*
do
    if [ -d $word ]; then
        echo "$word is a folder"
    elif [ -f $word ]; then
        echo "$word is a file"
    fi
done
