#!/bin/sh

netstat -plnt > temp.txt

echo -e "\nLis of open tcp ports and corresponding PIDs:"
echo -e "Port\tPID">temp2.txt
awk '{print $4,$7}' temp.txt | grep -v "ssh" | awk -F ":" '{print $4}' | awk -F "/" '{print $1}' | awk 'NF > 0' | awk '{print $1"\t"$2}'>> temp2.txt
awk '{print $0}' temp2.txt #port and pid

awk '{print $2}' temp2.txt>temp3.txt #only pid
echo -e "\nFinding server path from PID:"

while read pdiddy; do
	PROCESS=$(ps -ef | grep "$pdiddy" | grep -v "grep" | awk '{print $9}')  #process/server path
	sed -e "s|$pdiddy|\t$pdiddy\t$PROCESS|g" -i temp2.txt
done<temp3.txt
sed -e 's/PID/PID\t\tPATH/' -i temp2.txt
mv temp2.txt list_of_running_servers.txt
cat list_of_running_servers.txt
echo ""
rm temp.txt temp3.txt
forever stopall
