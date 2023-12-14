#!/bin/bash
set -e

sudo apt update
sudo apt install nala -y
sudo nala upgrade

sudo nala install vanilla-gnome-desktop -y
sudo nala install yaru-theme -yaru-theme
sudo nala purge cinnamon* -y

sudo apt purge touchegg aisleriot deja-dup celluloid cheese gnome-contacts xreader drawing gnome-color-manager gnome-music gnome-power-statistics hexchat gnome-mahjongg gnome-maps gnone-mines seahorse gnome-photos redshift redshift-gtk rythmbox gnome-sudoku xed timeshift gnome-todo yelp warpinator totem totem-plugins simple-scan hypnotix bulky blueman-manager blueman bluez* transmission* usb-creator* mintstick* mintwelcome mintbackup mint-backrounds-* mint-cursor* thunderbird* mintlocale mintupdate* mintmenu mintdrivers* minstinstall* onboard* pix* mintreport* webapp-nanager mint-themes lightdm* -y

sudo rm -rf /usr/lib/lightdm
sudo rm -rf /var/lib/lightdm-data
sudo rm -rf /usr/lib/linuxmint/mintinstall
sudo rm -rf /usr/lib/linuxmint/mintMenu/plugins

sudo nala upgrade -y