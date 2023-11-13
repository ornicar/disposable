#!/bin/sh

git pull origin master
./.generate
git add .
git commit -m "auto update domains"
git push
