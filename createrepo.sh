#!/bin/bash

REPO=${1?Error: no repo name given}
mkdir $REPO
cd $REPO
git init
git add README.md
git commit -m "auto create"
git remote add origin git@github.com:awkwarden/$REPO.git
git push -u origin master
