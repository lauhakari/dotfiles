# Mikko's Dotfiles

## What Is This?

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything which is needed to install my preferred setup of OS X is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

Read the blog post: https://

## A Fresh OS X Setup

Follow these install instructions to setup a new Mac.

1. Update OS X to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install OS X Command Line Tools by running `xcode-select --install`
4. Copy public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this repo to `~/.dotfiles`
6. Run `install.sh` to start the installation
7. Make sure Dropbox/OneDrive/GoogleDrive/other is set up and synced
8. [Install the remaining apps](./apps.md)
9. Restore preferences by running `mackup restore` _(optional)_
10. Restart your computer to finalize the process

Your Mac is now ready to use!

## Your Own Dotfiles

If you want to start your own dotfiles from this setup, it's pretty easy to do so. First of all you'll need to fork this repo. After that you can tweak it the way you want.

Go through the [`.macos`](./.macos) file and adjust the settings to your liking. You can find much more settings at [the original script by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.osx) and [Kevin Suttle's OSX Defaults project](https://github.com/kevinSuttle/OSXDefaults).

Check out the [`Brewfile`](./Brewfile) file and adjust the apps you want to install for your machine. Use [their search page](https://caskroom.github.io/search) to check if the app you want to install is available.

Check out the [`.aliases`](./.aliases) file and add your own aliases. If you need to tweak your `$PATH` check out the [`.path`](./.path) file.


When installing these dotfiles for the first time you'll need to backup all of your settings with Mackup. Install and backup your settings with the command below. Your settings will be synced to your Dropbox so you can use them to sync between computers and reinstall them when reinstalling your Mac. If you want to save your settings to a different folder or different medium than Dropbox, [checkout the documentation](https://github.com/lra/mackup#supported-storages).

```bash
brew install mackup
mackup backup
```

You can tweak the shell theme, the Bash settings and much more. Go through the files in this repo and tweak everthing to your liking.

Enjoy your own Dotfiles!

## Thanks To...

[Dries Vints](https://github.com/driesvints/dotfiles), who made an awesome simplyfied version of a .dotfile repo, which this repo is based from.
Both [Zach Holman](https://github.com/holman/dotfiles) and [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) were great sources of inspiration.
[Sourabh Bajaj](https://twitter.com/sb2nov/)'s [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/) proved to be invaluable.
Other sources of inspiration and guidance:
[Maxime Fabre](https://twitter.com/anahkiasen) for [his excellent presentation on Homebrew](https://speakerdeck.com/anahkiasen/a-storm-homebrewin) which made me migrate a lot to a `Brewfile`, [Github does dotfiles](https://dotfiles.github.io/) project and [Mackup](https://github.com/lra/mackup).

In general, I'd like to thank every single one who open-sources their dotfiles for their effort to contribute something to the open-source community. Your work means the world! :earth_asia: :heart:

## License

The MIT License. Please see [the license file](license.md) for more information.
