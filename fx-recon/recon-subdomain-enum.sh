#!/bin/bash

#sublister
mkdir ./results/

echo "running sublister:"
mkdir ./sublisted
for i in $(cat $1); do
	echo "domain: $i"
	python ~/tools/Sublist3r/sublist3r.py -d "$i" -o ./sublisted/"$i"-part
done
cat ./sublisted/* >> ./results/sublisted-domains
rm -rf ./sublisted/
#

#amass
echo "running amass:"
mkdir ./amassed
for i in $(cat $1); do
        echo "domain: $i"
        ~/tools/amass/amass enum -d "$i" -o ./amassed/"$i"-part
done
cat ./amassed/* >> ./results/amassed-domains
rm -rf ./amassed/
#

cat ./results/sublisted-domains >> ./results/all-domains
rm ./results/sublisted-domains
cat ./results/amassed-domains >> ./results/all-domains
rm ./results/amassed-domains

#cleanup domains file
cat ./results/all-domains | tr '<BR>' '\n' | grep -v -e '^[[:space:]]*$' | sort | uniq >> ./results/all-domains-sub
rm ./results/all-domains



#massdns
