#!/bin/sh
while read ip
do 
   cmd="expect ftp.exp $ip "
   echo "cmd=$cmd"
   $cmd
done < ip.txt
