#!/bin/sh

domain=$1

# check if $domain is already in domains.txt
if grep -q "$domain" domains.txt; then
  echo "$domain is already in domains.txt"
  exit 0
else
  # add new line and $domain to domains.txt
  echo "" >>domains.txt
  echo "$domain" >>domains.txt
  echo "$domain added to domains.txt"
fi

# check if $domain is already in blacklist.txt
if grep -q "$domain" blacklist.txt; then
  echo "$domain is already in blacklist.txt"
  exit 0
else
  echo "$domain" >>blacklist.txt
  echo "$domain added to blacklist.txt"
fi

git diff

# press enter to push
read -p "Press enter to push changes"
git add .
git commit -m "add $domain to blacklist"
git push
