#!/bin/bash
# we'll keep 3 versions
rm -rf ./results-oldoldold/

mv ./results-oldold/ ./results-oldoldold/
mv ./results-old/ ./results-oldold/
mv ./results/ ./results-old/
mkdir ./results/
