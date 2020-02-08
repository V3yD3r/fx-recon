#!/bin/bash

#sets folders in place
~/tools/fx-recon/prestart.sh

# sub domain enumeration, used for other scripts to build upon
~/tools/fx-recon/subdomain-enum.sh $1

# http and https poking
~/tools/fx-recon/httprobe.sh ./results/all-domains-sub
~/tools/fx-recon/httprobe.sh ./results/all-domains-dirsearched

# for loop nmap and wordlist gen CeWL over subdomains
~/tools/fx-recon/nmapper.sh ./results/all-domains-sub
~/tools/fx-recon/cewlwordlister.sh ./results/all-domains-sub



# directory bruteforcing
~/tools/fx-recon/dirsearch-domainlist.sh ./*-domains
~/tools/fx-recon/dirsearch-domainlist.sh ./results/all-domains-sub






# diff results
~/tools/fx-recon/differ.sh
