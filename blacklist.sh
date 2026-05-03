#!/bin/sh

domain=$1

# check if $domain is already in domains.txt
if grep -q "$domain" domains.txt; then
  echo "$domain is already in domains.txt"
  exit 0
fi

# check if $domain is already in blacklist.txt
if grep -q "$domain" blacklist.txt; then
  echo "$domain is already in blacklist.txt"
  exit 0
fi

echo "$domain" >>blacklist.txt
echo "$domain added to blacklist.txt"

./compile.sh

git diff

# press enter to push
read -p "Press enter to push changes"
git add .
git commit -m "add $domain to blacklist"
git push
