#!/usr/bin/env bash

for file in $(find . -type f -path '\./Library/[A-Za-z]*' \! -path '\./\.git*')
do
  cp -p /$file $file
done

for file in $(find . -type f -path '\./home/Library/[A-Za-z]*' \! -path '\./\.git*')
do
  cp -p ~/$(cut -d '/' -f 3- <<< $file) $file
done
