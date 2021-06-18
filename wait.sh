#!/bin/bash
sleep 30

#sqlite3 /etc/pihole/gravity.db "DELETE FROM adlist"

for item in $(cat /conf-files/adlists.list)
do
        sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (Address) VALUES ('$item');"
done
