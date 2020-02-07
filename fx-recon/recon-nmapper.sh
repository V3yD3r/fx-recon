#!/bin/bash
mkdir ./results/nmap
for i in $(cat $1); do
	echo "domain: $i"
	nmap -F "$i" --append-output -o ./results/nmap/$(echo "$i" | sed -e 's/[^A-Za-z0-9._-]/_/g')
done

