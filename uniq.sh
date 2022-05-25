#!/bin/sh

sort blacklist.txt > tmp.txt
uniq tmp.txt blacklist.txt
rm tmp.txt
