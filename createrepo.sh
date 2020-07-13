#!/bin/bash

USER=${1?Error: no user name given}
REPO=${2?Error: no repo name given}

mkdir ~/src/$REPO
cd ~/src/$REPO
echo "# $REPO" >> README.md
git init
pwd
git add README.md
git commit -m "auto create"
git remote add origin git@github.com:$USER/$REPO.git
git push -u origin master
