#dirsearch


echo "running dirsearch:"
mkdir ./dirsearch-wl/
for i in $(cat $1); do
        echo "domain: $i"
        python3 ~/tools/dirsearch/dirsearch.py -w ./results/wordlist/complete-wordlist --timeout=3 --max-retries=2 -e * -u $i --simple-report=./dirsearch-wl/dirsearch-"$i"-wordlist
done

#
cat ./dirsearch-wl/dirsearch-* | grep -v -e '^[[:space:]]*$' | sort | uniq >> ./results/all-domains-dirsearched-wl
rm -rf ./dirsearch-wl/

#
#
