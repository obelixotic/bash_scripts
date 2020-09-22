#!/bin/bash

#seq
for n in `seq 1 5`
do
	echo $n
done
echo ""

#$(<file) or use ` `
for d in $(<names.txt)
do 
	echo $d
done
echo ""
#note this will itirate over every word of the file while read itirates over every line


#$(command) 
for f in $(find *.sh)
do
	echo shell scripts are $f
done
echo ""
#you can also put commands in the $()


#{..}
for i in {A..G}
do 
	echo letter is $i
done
