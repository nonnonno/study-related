#!/bin/sh
program_name="1_HElib"
server_sh=`ps aux | grep -v grep | tr -s ' ' | cut -d ' ' -f12 | grep server.sh | wc -l`
client_sh=`ps aux | grep -v grep | tr -s ' ' | cut -d ' ' -f12 | grep ./client.sh | wc -l`
echo "executing server_sh:"$server_sh
echo "executing client_sh:"$client_sh

if [ 1 -eq $server_sh -a 1 -eq $client_sh ]; then # both existed
        echo "execute free and output to  "$program_name"_top_10sec.txt"
        top -b -n 1 >> "$program_name"_top_10sec.txt #megabyte
else
        echo "either script is not executing..."
        exit 0
fi
