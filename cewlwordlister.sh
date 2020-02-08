#!/bin/bash

mkdir ./results/wordlist/
#!/bin/bash
for i in $(cat $1); do
        echo "domain: $i"
	cewl -w ./results/wordlist/$(echo "$i-wl" | sed -e 's/[^A-Za-z0-9._-]/_/g') -a -e -v $i
done
cat ./results/wordlist/*-wl >> ./results/wordlist/complete-wordlist
