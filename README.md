# Tag-TeamCity-Build-From-Build-Step

TeamCity does not have a build-in feature to tag a build in a build stept but there is a workaroud for that -> using REST API <https://teamcity-support.jetbrains.com/hc/en-us/community/posts/206830245-Add-build-tag-from-a-build-step.>

## Arguments for the script

- $1 - server url
- $2 - password (**special characters makes it to fail**)
- $3 - build Id (if tweaked then can be used other TC build locator)
- $4 - tag name

## Example of calling the script

- from CMD: 
```
"C:\Program Files\Git\bin\sh.exe" -c "myPath/tagTCbuild.sh teamcity.mydomain.com mypassword %teamcity.build.id% 'myTag'"
```
- from Powershell: 
```
& "C:\Program Files\Git\bin\sh.exe" -c "myPath/tagTCbuild.sh teamcity.mydomain.com mypassword %teamcity.build.id% 'myTag'"
```
