#!/bin/bash

git clone git@github.com:tivo/intellij-haxe.git
cd intellij-haxe
git remote add nightly git@github.com:yanhick/intellij-haxe-nightly-builds.git
git fetch nightly
git merge nightly/master
DATE=`date +"%m-%d-%Y--%H-%M"`
git tag $DATE
git push nightly master
git push nightly --tags
cd ../
rm -rf intellij-haxe
