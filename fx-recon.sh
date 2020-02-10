#!/bin/bash




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


# create wordlists for each subdomain
~/tools/fx-recon/cewlwordlister.sh ./results/all-domains-sub

#
#
#~/tools/fx-recon/subdomain-enum-wl.sh
#~/tools/fx-recon/dirsearch-domainlist-wl.sh
#~/tools/fx-recon/cewlwordlister.sh ./results/all-domains-sub-wl
#
#

# diff results
~/tools/fx-recon/differ.sh







--------

#sets folders in place
#~/tools/fx-recon/prestart.sh

# sub domain enumeration, used for other scripts to build upon
#~/tools/fx-recon/subdomain-enum.sh $1
#~/tools/fx-recon/cewlwordlister.sh ./results/all-domains-sub
#~/tools/fx-recon/subdomain-enum-wl.sh $1


# directory bruteforcing
#~/tools/fx-recon/dirsearch-domainlist.sh ./*-domains
#~/tools/fx-recon/dirsearch-domainlist.sh ./results/all-domains-sub
#
#~/tools/fx-recon/nmapper.sh ./results/all-domains-sub
# http and https poking
#~/tools/fx-recon/httprobe.sh ./results/all-domains-sub
#~/tools/fx-recon/httprobe.sh ./results/all-domains-dirsearched
#
#~/tools/fx-recon/httprobe.sh ./results/all-domains-sub

# diff results

#
#~/tools/fx-recon/differ.sh
