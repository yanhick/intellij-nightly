#!/bin/bash

# clone the nightly builds repo
git clone git@github.com:yanhick/intellij-haxe-nightly-builds.git
cd intellij-haxe-nightly-builds

# add a remote to the code repo
git remote add upstream git@github.com:tivo/intellij-haxe.git

# fetch the code from the code repo and merge any additional change
# The only change will probably be to the .travis.yml file to modify the release
# location (we want to use the nightly build repo for nightly releases)
git fetch upstream
git merge upstream/master

# create a git tag using the current time and push it to the nightly build server.
# This will trigger a build and release from Travis.ci
DATE=`date +"%m-%d-%Y--%H-%M"`
git tag $DATE
git push origin master
git push origin --tags

# cleanup for next nightly build
cd ../
rm -rf intellij-haxe-nightly-builds
