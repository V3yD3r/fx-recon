#!/bin/bash
~/tools/fx-recon/prestart.sh
~/tools/fx-recon/subdomain-enum.sh $1

~/tools/fx-recon/dirsearch-domainlist.sh ./*-domains
~/tools/fx-recon/dirsearch-domainlist.sh ./results/all-domains-sub

~/tools/fx-recon/httprobe.sh ./results/all-domains-sub
~/tools/fx-recon/httprobe.sh ./results/all-domains-dirsearched

~/tools/fx-recon/differ.sh

~/tools/fx-recon/nmapper.sh ./results/all-domains-sub
