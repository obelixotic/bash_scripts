#!/bin/bash

alias gtw='cd $(head -n 1 ~/scripts/working_dir.txt)'

wd(){
	working_dir=$(pwd)
	echo "You're working dir is $working_dir" 
	echo "$working_dir" > ~/scripts/working_dir.txt
	export working_dir
}
