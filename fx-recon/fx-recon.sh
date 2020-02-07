#!/bin/bash
~/h4k/scripts/fx-recon/recon-prestart.sh
~/h4k/scripts/fx-recon/recon-subdomain-enum.sh $1

~/h4k/scripts/fx-recon/recon-dirsearch-domainlist.sh ./*-domains
~/h4k/scripts/fx-recon/recon-dirsearch-domainlist.sh ./results/all-domains-sub

~/h4k/scripts/fx-recon/recon-httprobe.sh ./results/all-domains-sub
~/h4k/scripts/fx-recon/recon-httprobe.sh ./results/all-domains-dirsearched


~/h4k/scripts/fx-recon/recon-differ.sh


~/h4k/scripts/fx-recon/recon-nmapper.sh ./results/all-domains-sub
