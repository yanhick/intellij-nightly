#!/bin/bash

git clone git@github.com:tivo/intellij-haxe.git
cd intellij-haxe
git remote add nightly git@github.com:yanhick/intellij-haxe-nightly-builds.git
DATE=`date +"%m-%d-%Y--%H-%M"`
git tag $DATE
git push nightly --tags
cd ../
rm -rf intellij-haxe
