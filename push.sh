#!/bin/bash

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git checkout --orphan gh-pages
shopt -s extglob
rm -rf !(_site) && mv _site/* . && rm -rf _site
git add .
git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
git push origin gh-pages -f

