#!/bin/bash

#usage of speed dial, oops speed directory
#asd - assign speed director, you can assign upto 4 (asd1(=asd),asd2,asd3,asd4)
#sd - go to the speed diirectory (sd1(=sd),sd2,sd3,sd4)


alias sd='cd $(head -n 1 ~/scripts/sd/sd1.txt)'
alias sd1='cd $(head -n 1 ~/scripts/sd/sd1.txt)'
alias sd2='cd $(head -n 1 ~/scripts/sd/sd2.txt)'
alias sd3='cd $(head -n 1 ~/scripts/sd/sd3.txt)'
alias sd4='cd $(head -n 1 ~/scripts/sd/sd4.txt)'

show(){
	cat ~/scripts/sd/* | nl
}

asd(){
	speed_dir=$(pwd)
	echo "Speed directory #1 is $speed_dir" 
	echo "$speed_dir" > ~/scripts/sd/sd1.txt
}

asd1(){
	asd
}

asd2(){
	speed_dir=$(pwd)
	echo "Your speed directory #2 is $speed_dir"
	echo "$speed_dir" > ~/scripts/sd/sd2.txt
}

asd3(){
        speed_dir=$(pwd)
	echo "Speed directory #3 is $speed_dir" 
        echo "$speed_dir" > ~/scripts/sd/sd3.txt
}

asd4(){
        speed_dir=$(pwd)
	echo "Speed directory #4 is $speed_dir" 
        echo "$speed_dir" > ~/scripts/sd/sd4.txt
}

