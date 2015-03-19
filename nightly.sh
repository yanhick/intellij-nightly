#!/bin/bash

git clone git@github.com:yanhick/intellij-haxe.git
cd intellij-haxe
git remote add nightly git@github.com:yanhick/intellij-haxe.git
DATE=`date +"%m-%d-%Y--%H-%M"`
git tag $DATE
git push nightly --tags
cd ../
rm -rf intellij-haxe
