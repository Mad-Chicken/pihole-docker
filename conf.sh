#!/bin/bash

for item in $(cat /conf-files/blacklist.txt); do
	pihole -b $item
done

#  Whitelist
for item in $(cat /conf-files/whitelist.txt)
do
	pihole -w $item
done

# Wildcard whitelist
for item in $(cat /conf-files/white-wild.txt)
do
	pihole --white-wild $item
done


for item in $(cat /conf-files/adlists.list)
do
	#sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (Address) VALUES ('$item');"
	echo $item
done

sh /conf-files/wait.sh &