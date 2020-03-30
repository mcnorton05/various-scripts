#!/bin/bash

####THIS SCRIPT DOESNT FULLY WORK/PING IS SLOW

#grab device ip
ip=$(ifconfig | grep 192 | cut -d " " -f 2 | cut -d "." -f 1-3)
#ping ip space to see available hosts
for i in {1..255}
do
ping -c 1 "$ip.$i" | grep "64 bytes" | cut -d " " -f 4 | tr -d ":";
#port scan on available hosts
nmap "$1.{0..255}"
done
