#! /usr/bin/bash
sudo apt update -y && sudo apt install exploitdb -y
sudo apt install mingw-w64 -y
sudo apt install npm -y
sudo apt install peass -y
sudo apt install chisel -y
sudo apt install gobuster -y
sudo apt install feroxbuster -y
sudo apt install bloodhound -y
sudo apt install neovim -y
wget https://github.com/PeterJLewis/KaliSetup/blob/main/init.vim -P ~/.config/nvim/
sudo apt install snapd -y && sudo systemctl enable --now snapd apparmor && systemctl start --now snapd.apparmor && sudo snap install obsidian --classic && sudo apparmor_parser -r /etc/apparmor.d/*snap-confine* && sudo apparmor_parser -r /var/lib/snapd/apparmor/profiles/snap-confine* && sudo ln -s /snap/bin/obsidian /usr/bin/obsidian
python3 -m pip install --user uploadserver
sudo apt upgrade
wordlists
