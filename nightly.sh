#!/bin/bash

# clone the repo needing nightly builds
git clone git@github.com:tivo/intellij-haxe.git
cd intellij-haxe

# add a remote to the repo where we will release the nightly builds
git remote add nightly git@github.com:yanhick/intellij-haxe-nightly-builds.git

# fetch the code from the nightly and merge any additional change
# The only change will probably be to the .travis.yml file to modify the release
# location (we want to use the nightly build repo for nightly releases)
git fetch nightly
git merge nightly/master

# create a git tag using the current time and push it to the nightly build server.
# This would trigger a build and release from Travis.ci
DATE=`date +"%m-%d-%Y--%H-%M"`
git tag $DATE
git push nightly master
git push nightly --tags

# cleanup for next nightly build
cd ../
rm -rf intellij-haxe
