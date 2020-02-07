#!/bin/bash
~/tools/fx-recon/recon-prestart.sh
~/tools/fx-recon/recon-subdomain-enum.sh $1

~/tools/fx-recon/recon-dirsearch-domainlist.sh ./*-domains
~/tools/fx-recon/recon-dirsearch-domainlist.sh ./results/all-domains-sub

~/tools/fx-recon/recon-httprobe.sh ./results/all-domains-sub
~/tools/fx-recon/recon-httprobe.sh ./results/all-domains-dirsearched

~/tools/fx-recon/recon-differ.sh

~/tools/fx-recon/recon-nmapper.sh ./results/all-domains-sub
