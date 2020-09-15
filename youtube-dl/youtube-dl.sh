#!/bin/bash

input="./links"

while
    read x
do
    youtube-dl $x
done <$input
