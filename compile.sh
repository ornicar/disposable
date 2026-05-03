#!/bin/sh

curl --silent https://raw.githubusercontent.com/disposable/disposable-email-domains/master/domains.txt >domains.upstream.txt
cat blacklist.txt domains.upstream.txt | sort -u | uniq >domains.txt
rm domains.upstream.txt
echo "Compiled domains.txt with $(wc -l <domains.txt) unique domains"
