# How to launch perspective on OSX startup
This approach uses LaunchDaemons to make perspective boot at startup, without requiring a user to login.

1. Update placeholders in [startup.sh](startup.sh) and [perspective.plist](perspective.plist) by replacing
	* `<specify an osx username here>`  
	We recommend you create a dedicated `perspective` user
	* `<specify the location of perspective root folder>`  
	Example: `/Users/perspective/perspective`

2. Run:

		cp perspective.plist /Library/LaunchDaemons/
		sudo chown root:wheel /Library/LaunchDaemons/perspective.plist
		sudo chmod 644 /Library/LaunchDaemons/perspective.plist
		sudo launchctl load -w /Library/LaunchDaemons/perspective.plist

To remove, run

	sudo launchctl unload -w /Library/LaunchDaemons/perspective.plist