#!/bin/bash



nmap -iL ./results/all-domains-clean -Pn -n -sn -oG ./results/all-domains-nmapped
cat ./results/all-domains-nmapped | sort | uniq >> ./results/all-domains-nmapped-temp
rm ./results/all-domains-nmapped
mv ./results/all-domains-nmapped-temp ./results/all-domains-nmapped

masscan -iL ./results/all-domains-nmapped -p 0–65535 — max-rate 1000


#meg -s 200 ~/tools/SecLists/Discovery/Web-Content/big.txt $1 meg-200-out/



#for i in $(cat $1); do
#	echo "domain: $i"
#	nmap -F "$i" --append-output -o $1_"nmapped-domains"
#done





#ffuf -w /path/to/wordlist -u https://target/FUZZ


#for i in $(cat $1); do
#        echo "domain: $i"
#        ~/tools/ "$i"
#        sleep 10s
#done

