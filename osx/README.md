Example usages
==================

# Add perspective to your startup

Update paths in startup.sh and perspective.plist by replacing <specify the location of perspective root folder>

cp perspective.plist /Library/LaunchDaemons/
sudo chown root:wheel /Library/LaunchDaemons/perspective.plist
sudo chmod 644 /Library/LaunchDaemons/perspective.plist
sudo launchctl load -w /Library/LaunchDaemons/perspective.plist