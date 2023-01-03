#!/bin/bash

echo "how old are you?"

read age

if [[ $age -gt 17 ]]
then
	echo "please vote"
else
	echo "vote when you can"
fi

