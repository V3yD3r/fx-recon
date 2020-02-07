#dirsearch
echo "running dirsearch:"
mkdir ./dirsearch/
for i in $(cat $1); do
        echo "domain: $i"
        python3 ~/tools/dirsearch/dirsearch.py --timeout=3 --max-retries=2 -e * -u $i --simple-report=./dirsearch/dirsearch-"$i"
done

#
cat ./dirsearch/dirsearch-* | grep -v -e '^[[:space:]]*$' | sort | uniq >> ./results/all-domains-dirsearched
rm -rf ./dirsearch/


#
#
