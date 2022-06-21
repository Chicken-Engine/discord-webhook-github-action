@echo off
REM this creates a tag for latest


pause

if [arg1]==[] goto :noarg
goto :performrelease

:performrelease
@echo Performing release version latest
git commit -am latest
git tag latest
git push && git push --tags
goto :quit

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%

:noarg
@echo No version specified

:quit
exit /B 1