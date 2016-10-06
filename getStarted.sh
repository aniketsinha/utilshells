#Small util to perform some tasks which one usually performs after a system boot
#Applicable for OS X or macOS. Uses shell and osascript
#1. Open web browsers: Google Chrome and Firefox
#2. Open multiple tab in terminal

echo "Opening Browsers..."
open /Applications/Google\ Chrome.app/
open /Applications/Firefox.app/
echo "Browsers open, opening repository in new tab..."
#using osascript to open multiple tabs in Terminal like repository, build
osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down' -e 'tell application "Terminal" to do script "cd /Volumes/Official/repository" in selected tab of the front window'  -e 'tell application "Terminal" to do script "pwd" in selected tab of the front window'
osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down' -e 'tell application "Terminal" to do script "cd /Volumes/Official/Products" in selected tab of the front window'

#activate chrome
osascript -e 'tell application "Google Chrome" to activate'
