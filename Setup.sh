#! /usr/bin/bash
# Install and update apt packages
sudo apt update -y && sudo apt install exploitdb -y
sudo apt install mingw-w64 -y
sudo apt install npm -y
sudo apt install peass -y
sudo apt install chisel -y
sudo apt install gobuster -y
sudo apt install feroxbuster -y
sudo apt install bloodhound -y
sudo apt install neovim -y
# Download and create init.vim for nvim
wget https://github.com/PeterJLewis/KaliSetup/blob/main/init.vim -P ~/.config/nvim/
# Install snap and Obsidian
sudo apt install snapd -y && sudo systemctl enable --now snapd apparmor && systemctl start --now snapd.apparmor && sudo snap install obsidian --classic && sudo apparmor_parser -r /etc/apparmor.d/*snap-confine* && sudo apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-confine* && sudo ln -s /snap/bin/obsidian /usr/bin/obsidian
# Python Upload Server
python3 -m pip install --user uploadserver
# Upgrade all the things
sudo apt upgrade
# Unpack Wordlists
wordlists
# Fonts Install
sudo wget https://github.com/PeterJLewis/KaliSetup/tree/main/comic -P /usr/share/fonts/truetype/
# xfce config
xfconf-query -c xsettings -p /Net/ThemeName -t 'string' -s 'Kali-Purple-Dark'
xfconf-query -c xsettings -p /Net/IconThemeName -t 'string' -s 'Flat-Remix-Purple-Dark'
xfconf-query -c xsettings -p /Gtk/FontName -t 'string' -s 'Comic Sans 11'
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -t 'string' -s 'Comic Mono 12'
# terminal config
wget https://github.com/PeterJLewis/KaliSetup/blob/main/qterminal.ini -P ~/.config/qterminal.org/qterminal.ini
# teardown
rm Setup.sh
