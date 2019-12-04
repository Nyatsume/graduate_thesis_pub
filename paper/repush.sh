#!/bin/bash
cd `dirname $0`
echo `dirname $0`
pwd
ls
git config --global user.name "yas-nyan"
git config --global user.email "yas-nyan@sfc.wide.ad.jp"

git remote set-url origin git@github.com:yas-nyan/master_thesis.git

git checkout -b master
git pull origin master
git branch -a

git log -1

last_commit_message="$(git log -1 | tail -1)"
echo $last_commit_message
echo $PWD

docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja:latest platex thesis.tex
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja:latest platex thesis.tex
docker run --rm -v $PWD:/workdir paperist/alpine-texlive-ja:latest dvipdfmx thesis.dvi

git add thesis.pdf
git commit -m '[updater] update pdf'
git push origin HEAD
