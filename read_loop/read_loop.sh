#!/bin/bash

x=1
while
    read n && ((x<=3))
do
    echo "$x name is $n"
    ((x=x+1))
done <names.txt
