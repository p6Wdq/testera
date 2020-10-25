#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers with Solus OS 4.1 or newer installed
# Author 	: 	Random Serbian Emigrant
# Description 	: 	A post-installation bash script for Solus OS
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

	# MS Fonts
		sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/desktop/font/mscorefonts/pspec.xml
		sudo eopkg it mscorefonts*.eopkg
	
	# Shell Prompts

	# The Powerline daemon is not running automatically by any of the bindings. It is advised to add the following before any other powerline-related code in the shell configuration file

	powerline-daemon -q

		# Bash

		powerline-daemon -q
		POWERLINE_BASH_CONTINUATION=1
		POWERLINE_BASH_SELECT=1
		source /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

		# Zsh

		# source /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# WireShark

	sudo eopkg it wireshark

	# Use wireshark as a non-root user
	
	sudo gpasswd -a $USER wireshark
	sudo setcap cap_dac_override,cap_net_admin,cap_net_raw+eip /usr/bin/dumpcap
	
	# To compile software under Solus, we recommend installing our system.devel component by running the following:

		sudo eopkg install -c system.devel

##################################################################################################################
#
#   Favorite software install.
#
##################################################################################################################

sudo eopkg install -y arc-gtk-theme

sudo eopkg install -y adapta-gtk-theme

sudo eopkg install -y abiword

sudo eopkg install -y aircrack-ng

sudo eopkg install -y aria2

sudo eopkg install -y audacity

sudo eopkg install -y audacious

sudo eopkg install -y avidemux

sudo eopkg install -y bleachbit

sudo eopkg install -y bash-recovery

sudo eopkg install -y bmon

sudo eopkg install -y breeze-icons

sudo eopkg install -y breeze

sudo eopkg install -y breeze-gtk-theme

sudo eopkg install -y bro

sudo eopkg install -y busybox

sudo eopkg install -y bookworm

sudo eopkg install -y cava

sudo eopkg install -y cpu-x

sudo eopkg install -y cmus

sudo eopkg install -y cheese

sudo eopkg install -y catfish

sudo eopkg install -y clipit

sudo eopkg install -y cozy

sudo eopkg install -y cantarell-fonts

sudo eopkg install -y cabextract

sudo eopkg install -y cmatrix 

sudo eopkg install -y discord

sudo eopkg install -y deja-dup 

sudo eopkg install -y deadbeef

sudo eopkg install -y doublecmd

sudo eopkg install -y diffutils

sudo eopkg install -y darktable

sudo eopkg install -y easytag

sudo eopkg install -y easyssh

sudo eopkg install -y etcher

sudo eopkg install -y ebook-tools

sudo eopkg install -y ethtool

sudo eopkg install -y fbreader 

sudo eopkg install -y font-awesome-ttf

sudo eopkg install -y font-ubuntu-ttf

sudo eopkg install -y focuswriter

sudo eopkg install -y font-manager

sudo eopkg install -y flameshot

sudo eopkg install -y fping

sudo eopkg install -y gimp

sudo eopkg install -y gimp-help

sudo eopkg install -y git

sudo eopkg install -y glances

sudo eopkg install -y gufw

sudo eopkg install -y gnumeric

sudo eopkg install -y gnome-sound-recorder

sudo eopkg install -y grsync

sudo eopkg install -y gaupol

sudo eopkg install -y getdns

sudo eopkg install -y gcolor3

sudo eopkg install -y horst

sudo eopkg install -y htop

sudo eopkg install -y handbrake

sudo eopkg install -y hydrogen

sudo eopkg install -y inkscape

sudo eopkg install -y inxi

sudo eopkg install -y iftop

sudo eopkg install -y kdenlive

sudo eopkg install -y keepassx

sudo eopkg install -y krita

sudo eopkg install -y krusader

sudo eopkg install -y macchanger

sudo eopkg install -y linux-lts

sudo eopkg install -y linux-headers

sudo eopkg install -y linux-current-headers

sudo eopkg install -y libideviceactivation

sudo eopkg install -y lmms

sudo eopkg install -y lshw

sudo eopkg install -y leafpad

sudo eopkg install -y mediainfo

sudo eopkg install -y moc

sudo eopkg install -y mp3gain

sudo eopkg install -y mc

sudo eopkg install -y moc

sudo eopkg install -y movit

sudo eopkg install -y mailspring

sudo eopkg install -y man-pages

sudo eopkg install -y netcat

sudo eopkg install -y nmon

sudo eopkg install -y nmap

sudo eopkg install -y neofetch

sudo eopkg install -y nethogs

sudo eopkg install -y ninja

sudo eopkg install -y nodejs

sudo eopkg install -y noto-sans-ttf

sudo eopkg install -y obs-studio

sudo eopkg install -y okular

sudo eopkg install -y opera-stable

sudo eopkg install -y opus-tools

sudo eopkg install -y osmo

sudo eopkg install -y psensor

sudo eopkg install -y pitivi

sudo eopkg install -y pinta

sudo eopkg install -y pv

sudo eopkg install -y py

sudo eopkg install -y p7zip

sudo eopkg install -y powerline

sudo eopkg install -y powerline-fonts

sudo eopkg install -y rawtherapee

sudo eopkg install -y rawstudio

sudo eopkg install -y shotwell

sudo eopkg install -y shotcut

sudo eopkg install -y simplenote

sudo eopkg install -y speedtest-cli

sudo eopkg install -y simplescreenrecorder

sudo eopkg install -y synfigstudio

sudo eopkg install -y stellarium

sudo eopkg install -y subliminal

sudo eopkg install -y suricata

sudo eopkg install -y steam

sudo eopkg install -y tcpdump

sudo eopkg install -y tmux

sudo eopkg install -y thefuck

sudo eopkg install -y thermald

sudo eopkg install -y qbittorrent

sudo eopkg install -y unbound

sudo eopkg install -y youtube-viewer

sudo eopkg install -y vlc

sudo eopkg install -y vidcutter

sudo eopkg install -y vscode

sudo eopkg install -y vorbis-tools

sudo eopkg install -y vimix-cursors

sudo eopkg install -y winff

sudo eopkg install -y woeusb

sudo eopkg install -y zim

##################################################################################################################

# 4 Just in case

	#Find and reinstall any broken packages with:

	sudo eopkg check | grep Broken | awk '{print $4}' | xargs sudo eopkg it --reinstall

	#Then make sure you're fully up to date:

	sudo eopkg up -y

	#Rerun all the triggers again

	sudo usysconf run -f

	#Reboot
	
##################################################################################################################	

echo "[✓] Ok."
echo "[✓] Solus OS Upgraded!"

