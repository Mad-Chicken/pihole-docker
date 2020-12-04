#!/bin/bash

for item in $(cat /conf-files/blacklist.txt)
do
pihole -b $item
done


for item in $(cat /conf-files/whitelist.txt)
do
pihole -w $item
done