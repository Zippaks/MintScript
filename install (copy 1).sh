#!/bin/sh

echo
"
  _    _                                                  _   
 | |  | |                       /\                       | |  
 | |__| |_   _ _ __   ___ _ __ /  \   ___ _ __   ___  ___| |_ 
 |  __  | | | | '_ \ / _ \ '__/ /\ \ / __| '_ \ / _ \/ __| __|
 | |  | | |_| | |_) |  __/ | / ____ \\__ \ |_) |  __/ (__| |_ 
 |_|  |_|\__, | .__/ \___|_|/_/    \_\___/ .__/ \___|\___|\__|
          __/ | |                        | |                  
         |___/|_|                        |_|                  
"

cd /tmp

apt update

apt-get -y autoremove transmission-gtk

apt-get -y install ibus neovim openssh-server wavemon terminator libxcb-xtest0 software-properties-common apt-transport-https wget

apt install -y git
apt install -y virtualbox-qt
apt install gedit
sudo apt install giblib1 libimlib2 mpg123 scrot streamer xawmtv-plugins
# Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.8-amd64.deb
sudo dpkg -i slack-desktop-*.deb

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Zoom
wget -c https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb

# VScode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt update
sudo dpkg -i code

# Multiload-ng (monitoring software)
add-apt-repository ppa:nilarimogard/webupd8 
apt update 


# Multiload-ng plugings
wget http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/m/multiload-ng/multiload-ng-common_1.5.2-1~webupd8~xenial0_all.deb
wget http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/m/multiload-ng/xfce4-multiload-ng-plugin_1.5.2-1~webupd8~xenial0_amd64.deb
sudo dpkg -i ./*multiload-ng*.deb
apt install xfce4-multiload-ng-plugin

# Copy config
#cp -a "/media/${USER}/USB STICK/home-copy/." ~/

echo
echo Done...The system is rebooting...
echo



