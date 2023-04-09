# mac-toolbar
These are some shell scripts that I wrote for macOS users. There are currently 3 main files:
- Restart_iCloud.sh
  - This kills the 'bird' process. **When iCloud is stuck uploading, this solves it!**
  - Often, I will have iCloud stuck Uploading __ of __, with no progress for several hours. Killing the 'bird' process allows it to restart the upload. 
- yt_mp3.sh
  - This uses yt-dlp to download an mp3 of YouTube from your clipboard.
  - Once installed, **simply copy the YouTube link, open the file, and it will begin downloading.**
- yt_mp4.sh
  - This uses yt-dlp to download an mp4 of YouTube from your clipboard. If mp4 is unavailable, it will download alternative formats. You can change this in one of the last lines of code.
  - Once installed, **simply copy the YouTube link, open the file, and it will begin downloading.**

# Dependencies
- [Homebrew](https://brew.sh)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- [yt-dlp](https://formulae.brew.sh/formula/yt-dlp) via Homebrew
```
brew install yt-dlp
```

- [ffmpeg](https://formulae.brew.sh/formula/ffmpeg) (To be honest, I'm not sure if this is required. Please attempt without and install if needed)
```
brew install ffmpeg
```

# Setup
## Download and unzip these files
Once you download and unzip the files, you will need to place this in your home folder.
 - Open Finder
 - Press Command+Shift+H
 - Place the 'mac-toolbar' folder here
## Enable Execute Permission
Open Terminal and enter the following:
```
chmod 755 ~/mac-toolbar/*.sh
```
## Change 'Open With' to Terminal
- Select one of the .sh files
- Right Click (CTRL+Click) and select 'Get Info'
- Under the 'Open With' section, click 'Other...' from the drop-down
<br/><img width=200vw src="/assets/change_open_with_01.png" alt="change_open_with_01" />
- Search for 'Terminal', select it, and click 'Add'
<br/><img width=200vw src="/assets/change_open_with_02.png" alt="change_open_with_02" />
- Click 'Change All'
<br/><img width=200vw src="/assets/change_open_with_03.png" alt="change_open_with_03" />
- Exit 'Get Info'

### CMD+Drag files to Finder Toolbar
To add these files to your toolbar, press and hold Command, then drag the files to the correct position.<br />
Example:<br />
![cmd_drag](/assets/drag_to_toolbar.gif "CMD+Drag")
[Read More on this topic](https://support.apple.com/guide/mac-help/customize-the-finder-toolbar-on-mac-mchlp3011/mac)

## Optional
### Change Owner
If you want to edit these files without making copies, you may have to change the owner.
- Open Terminal
```
whoami
```
Example: johndoe
```
chown johndoe ~/mac-toolbar/*
```

### Change Thumbnails
The thumbnails should transfer over, but I left the files in the assets folder. [Cick here](https://support.apple.com/guide/mac-help/change-icons-for-files-or-folders-on-mac-mchlp2313/mac) to see how to change the icons for files.

### Delete the assets folder
There won't be anything useful in here for most people, so you can just delete it if you want.
