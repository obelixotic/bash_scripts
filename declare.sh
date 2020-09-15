#!/bin/bash

declare -l lstring="AbCDef"
declare -u ustring="AbCDef"
declare -r readOnly="cant be changed"
declare -a array
declare -A arrayTwo

echo "lstring = $lstring"
echo "ustring = $ustring"
echo "readOnly = $readOnly"
readOnly="new value"
array[1]="num_index"
echo "array[1] = ${array[1]}"
arrayTwo["fav_food"]="peach"
echo "arrayTwo[fav_food] = ${arrayTwo["fav_food"]}"
