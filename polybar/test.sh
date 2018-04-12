#!/bin/sh
max=100
wait=5
url='http://www.google.com'
for (( i=0; i<$max; ++i ));
do
(echo authenticate ''; echo signal newnym; echo quit) | sudo nc localhost 9151
 IP=`curl -socks5-hostname 127.0.0.1:9050 http://ipecho.net/plain`
 echo "\nYour new IP address is: $IP"
 sleep $wait
done
