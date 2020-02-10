#!/bin/bash


#amass
echo "running amass:"
mkdir ./amassed-wl
for i in $(cat $1); do
        echo "domain: $i"
        ~/tools/amass/amass enum -d "$i" -o ./amassed-wl/"$i"-wlpart -w ./results/wordlist/complete-wordlist
done
cat ./amassed-wl/* >> ./results/amassed-domains-wl
rm -rf ./amassed-wl/

#cleanup domains file
cat ./results/amassed-domains-wl | tr '<BR>' '\n' | grep -v -e '^[[:space:]]*$' | sort | uniq >> ./results/all-domains-sub-wl

