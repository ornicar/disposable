#!/bin/sh

git pull
# ./.generate
git add .
git commit -m "auto update domains"
git push
