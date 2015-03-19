#Intellij nightly

Hack to get Travis.ci to generate nightly build using Github releases.
Travis.ci can be configured to [deploy for each new tag](http://docs.travis-ci.com/user/deployment/releases/)

This script clones the intellij repo, create a tag based on the date and push it, triggering a deploy on Travis.ci.

Your can use this script with cron for example by putting it in /etc/cron.daily/ to get nightly builds.

You can also use the included node.js script to get daily build:

```
node index
```
