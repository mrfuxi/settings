# Sublime settings

## Setup

To use these settings you need to symlink `sublime` (this) directory as `~/.config/sublime-text-3/Packages/User`.

You can fallow instructions below:

```bash
mkdir -p ~/.config/sublime-text-3/Packages
rm -r ~/.config/sublime-text-3/Packages/User
ln -s ~/settings/sublime ~/.config/sublime-text-3/Packages/User
```

V2 (new mac?):

```bash
mkdir -p ~/Library/Application\ Support/Sublime\ Text/Packages
rm -r ~/Library/Application\ Support/Sublime\ Text/Packages/User
ln -s ~/settings/sublime ~/Library/Application\ Support/Sublime\ Text/Packages/User
```

At this point all settings should be in place and visible by Sublime. Only thing left is to add [Package Control](https://packagecontrol.io/installation) 
