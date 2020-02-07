#!/bin/bash
cat $1 | ~/tools/httprobe/httprobe | tee ./results/all-domains-httprobed-temp
cat ./results/all-domains-httprobed-temp >> ./results/all-domains-httprobed
rm ./results/all-domains-httprobed-temp
