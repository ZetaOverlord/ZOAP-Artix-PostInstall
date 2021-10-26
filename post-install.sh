#!/bin/bash 

# Clearing out the terminal 
clear

# Going to the home direcotry
cd ~/

# Introduction
echo "
==========================================================================
 __________ _____  _       _____     _______ ____  _     ___  ____  ____  |
|__  / ____|_   _|/ \     / _ \ \   / / ____|  _ \| |   / _ \|  _ \|  _ \ |
  / /|  _|   | | / _ \   | | | \ \ / /|  _| | |_) | |  | | | | |_) | | | ||
 / /_| |___  | |/ ___ \  | |_| |\ V / | |___|  _ <| |__| |_| |  _ <| |_| ||
/____|_____| |_/_/   \_\  \___/  \_/  |_____|_| \_\_____\___/|_| \_\____/ |
                                                                          |
 ____ ___   ____            _       _                                     |
|  _ \_ _| / ___|  ___ _ __(_)_ __ | |_                                   |
| |_) | |  \___ \ / __| '__| | '_ \| __|                                  |
|  __/| |   ___) | (__| |  | | |_) | |_                                   |
|_|  |___| |____/ \___|_|  |_| .__/ \__|                                  |
                             |_|                                          |
==========================================================================
                                                                          |
Welcome to the ZetaOverlord Post-Installation script!                     |
This script was created with an aim to automatize the post-install        |
process!                                                                  |
                                                                          |
My GitHub : https://github.com/ZetaOverlord                               |
                                                                          |
==========================================================================                     
                                                                          |
WARNING! This script was specifically created for the Artix distribution! |
This script will change your package manager configuration which is soley |
compatable with Artix! If you are using any other Arch-based distribution |
this may brick your package manager!                                      |
After you will enter the root password there is no turning back!          |
Proceed with this in mind.                                                |
                                                                          |
==========================================================================
";

# Root Permission
sudo -i

# Updating the System
echo "Checking for system updates...";
pacman -Syu --noconfirm 

# Downloading all of the basic requierements
echo "Installing all of the dependencies..."; 
pacman -S --noconfirm base-devel python2 python3

# Cloning the pacman.conf files to /etc/ for the Package Manager
pacman -Syu artix-archlinux-support
git clone https://github.com/ZetaOverlord/pacman-conf-artix.git
cd pacman-conf-artix
cp pacman.conf /etc/pacman.conf
cd
pacman -Syu --noconfirm

# Installing Useful functions 
echo "Installing main functions and applications...";
pacman -S --noconfirm neofetch htop ranger nvim gparted nitrogen compton

# Installing The Required Packages for Reading Certain Files 
echo "Installing required packages for reading certain extensions...";
pacman -S --noconfirm mpv feh zathura emacs

# Installing Basic Applications 
echo "Installing the Applications...";
pacman -S --noconfirm gimp inkscape kdenlive mumble element-dekstop discord

# Exiting from the root enviorement
exit

# Installing the AUR Package Manager
echo "Installing yay AUR Package Mananger...";
git clone https://github.com/Jguer/yay.git
cd yay 
makepkg -si --noconfirm 
cd 

# Installing LibreWolf browser
echo "Installing the LibreWolf Browser...";
git clone https://gitlab.com/librewolf-community/browser/arch.git
cd arch/
makepkg -si --noconfirm 
cd

# End of install 
echo "Script has finished installing the components!";

# Credits
clear
echo "
===============================================================
 _____ _   _    _    _   _ _  __ __   _____  _   _ _           |
|_   _| | | |  / \  | \ | | |/ / \ \ / / _ \| | | | |          |
  | | | |_| | / _ \ |  \| | ' /   \ V / | | | | | | |          |
  | | |  _  |/ ___ \| |\  | . \    | || |_| | |_| |_|          |
  |_| |_| |_/_/   \_\_| \_|_|\_\   |_| \___/ \___/(_)          |
                                                               |
       Creator : https://github.com/ZetaOverlord               |
                                                               |                                                     
===============================================================
";
