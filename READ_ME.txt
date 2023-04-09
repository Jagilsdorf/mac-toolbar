Open Terminal, type in the following, and press enter:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Open Terminal, type in the following, and press enter:
brew install yt-dlp

Open Finder, press CMD+SHIFT+H to go home, place this folder in that location.

Right click (or CTRL+Click) one of the .sh files and click 'Get Info'. Under the 'Open With' section, click the drop down, select 'Other...', change 'Enable' to 'All Applications', then search & select 'Terminal', click 'Add', then click 'Change All' and close the 'Get Info' window.

CMD+Drag these .sh files to the Finder toolbar.
Open Terminal, type in the following, and press enter:

chmod 755 ~/toolbar_scripts/*.sh


________________________________

Restart_iCloud.sh attempts to kill the iCloud process 5 times to ensure it is dead.

Copy any YouTube link, then open yt.sh; downloads mp3, displays file's location. 
	Upon first use, it installs packages.
	Restarting after first use may be required.