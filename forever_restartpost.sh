#!/bin/sh

awk '{print $3}' /root/bin/list_of_running_servers.txt>/root/bin/server_paths.txt
while read path; do
        forever start $path
done</root/bin/server_paths.txt
rm /root/bin/server_paths.txt
echo ""
