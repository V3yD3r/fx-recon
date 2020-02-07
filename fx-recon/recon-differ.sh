
#!/bin/bash
mkdir ./results/diff/
diff -a ./results/all-domains-clean ./results-old/all-domains-clean | tee ./results/diff/all-domains-clean
diff -a ./results/all-domains-dirsearched ./results-old/all-domains-dirsearched | tee ./results/diff/all-domains-dirsearched
diff -a ./results/all-domains-sub ./results-old/all-domains-sub | tee ./results/diff/all-domains-sub
diff -a ./results/all-domains-httprobed ./results-old/all-domains-httprobed | tee ./results/diff/all-domains-httprobed
#diff -a ./results/ ./results-old/ | tee ./results/diff/
#diff -a ./results/ ./results-old/ | tee ./results/diff/

#for filename in ./results/all-domains*; do
#
#done
