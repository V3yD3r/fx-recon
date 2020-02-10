#!/bin/bash

mkdir ./results/
mkdir ./results/wordlist/
#!/bin/bash
for i in $(cat $1); do
        echo "domain: $i"
	cewl -d 2 -o -w ./results/wordlist/$(echo "$i" | sed -e 's/[^A-Za-z0-9._-]/_/g') $i
done
cat ./results/wordlist/*-wl >> ./results/wordlist/complete-wordlist

cat ./results/complete-wordlist | tr '<BR>' '\n' | grep -v -e '^[[:space:]]*$' | sort | uniq >> ./results/complete-wordlist-clean

cat ./results/wordlist/complete-wordlist-clean | sed -i ':a;N;$!ba;s/\n/,/g' >> ./results/wordlist/complete-wordlist-clean-commas
