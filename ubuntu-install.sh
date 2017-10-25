#!/usr/bin/env bash

#
# https://jasonmun.blogspot.my
# https://github.com/yomun
# 
# Copyright (C) 2017 Jason Mun
# 
# ---------------------------------------------------------------------------------
# Install Software
# http://jasonmun.blogspot.my/2017/03/ubuntu-speed.html
# 
# [Selek TOR] http://jasonmun.blogspot.my/2017/03/linux-selektor.html
# [Tuxcut]    http://jasonmun.blogspot.my/2017/04/ubuntu-tuxcut-linux.html
# ---------------------------------------------------------------------------------
sudo apt install ubuntu-restricted-extras -y
sudo apt install build-essential python-software-properties -y

sudo apt install p7zip p7zip-full p7zip-rar rar

sudo apt install chrome-gnome-shell -y
sudo apt install gdebi -y
sudo apt install make git -y
sudo apt install gtkorphan -y
sudo apt install gufw -y
sudo apt install meld -y
sudo apt install menulibre -y
sudo apt install remmina -y
sudo apt install seahorse -y
sudo apt install wget -y
sudo apt install gcc cpp -y
sudo apt install gnome-tweak-tool -y

# sudo apt install amule -y
# sudo apt install bleachbit -y
# sudo apt install gimp -y
# sudo apt install gnome-twitch -y
# sudo apt install leafpad -y
# sudo apt install nautilus-dropbox -y
# sudo apt install openshot -y
# sudo apt install pinta -y
# sudo apt install qbittorrent -y
# sudo apt install simplescreenrecorder -y
# sudo apt install shotwell -y
# sudo apt install steam -y
# sudo apt install testdisk -y
# sudo apt install vlc -y
# sudo apt install yandex-disk -y

# Gnome Shell Extensions - System-Monitor
sudo apt install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0 -y

# OpenVPN
sudo apt install openvpn network-manager-openvpn network-manager-openvpn-gnome curl -y

# Clamav
sudo apt install clamav clamtk clamav-daemon libclamunrar7 -y

# GNOME - Chinese
sudo apt install language-pack-zh-hans language-pack-zh-hans-base -y
sudo apt install language-pack-gnome-zh-hans language-pack-gnome-zh-hans-base -y
# sudo localectl set-locale LANG=zh_CN.UTF-8
# sudo apt install chinese-calendar -y

# -------------------------------------------------------------------------------------------
# Stacer
# https://github.com/oguzhaninan/Stacer/releases
# -------------------------------------------------------------------------------------------
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.8/stacer_1.0.8_amd64.deb
if [ -f "stacer_1.0.8_amd64.deb" ]
then
	sudo dpkg -i stacer_1.0.8_amd64.deb
fi

# -------------------------------------------------------------------------------------------
# Skype 64
# https://www.skype.com/en/download-skype/skype-for-computer/
# -------------------------------------------------------------------------------------------
wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb

# -------------------------------------------------------------------------------------------
# Google Chrome
# https://github.com/yomun/chrome-gpu
# -------------------------------------------------------------------------------------------
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y

# -------------------------------------------------------------------------------------------
# Eclipse
# http://jasonmun.blogspot.my/2015/08/ubuntu-eclipse-netbeans.html
# -------------------------------------------------------------------------------------------
# LINK=`curl http://www.eclipse.org/downloads/eclipse-packages/?osType=linux | grep x86_64.tar.gz | grep href= | sed 's/^.* href="//g' | sed 's/.tar.gz.*/.tar.gz/g'  | head -n1`
# FILE_NAME=`echo ${LINK} | sed 's/^.*\/eclipse-jee-/eclipse-jee-/g'`
# wget http://www.eclipse.org/${LINK}8.2

# -------------------------------------------------------------------------------------------
# NetBeans
# -------------------------------------------------------------------------------------------
# wget http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-linux.sh
# chmod u+x netbeans-8.2-linux.sh
# ./netbeans-8.2-linux.sh

# -------------------------------------------------------------------------------------------
# FoxIt PDF Reader
# https://www.foxitsoftware.com/downloads/
# -------------------------------------------------------------------------------------------
# wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz
# tar zxvf FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz
# sudo ./FoxitReader.enu.setup.2.4.1.0609*.x64.run
# sudo apt remove evince

# -------------------------------------------------------------------------------------------
# Maldetect
# http://jasonmun.blogspot.my/2017/09/linux-maldetect-malware.html
# -------------------------------------------------------------------------------------------
# wget http://www.rfxn.com/downloads/maldetect-current.tar.gz
# tar -zxvf maldetect-current.tar.gz
# cd maldetect-*
# sudo ./install.sh

# -------------------------------------------------------------------------------------------
# Teamviewer 12 (i386)
# https://www.teamviewer.com/en/download/linux/
# -------------------------------------------------------------------------------------------
# LINK=`curl https://www.teamviewer.com/en/download/linux/ | grep "<a href=" | grep .deb | head -n1 | sed 's/^.*<a href="//g' | sed 's/.deb.*/.deb/g'`
# FILE_NAME=`echo ${LINK} | sed 's/^.*\/teamviewer_/teamviewer_/g'`
# wget ${LINK}
# sudo dpkg -i ${FILE_NAME}
# rm -rf ${FILE_NAME}

# -------------------------------------------------------------------------------------------
# VirtualBox
# https://www.virtualbox.org/wiki/Linux_Downloads
# -------------------------------------------------------------------------------------------
# CODE_NAME=`lsb_release -c | sed 's/Codename://g' | sed "s/[[:blank:]]//g"`
# LINK=`curl https://www.virtualbox.org/wiki/Linux_Downloads | grep href= | grep http://download.virtualbox.org/virtualbox/ | grep ~Ubuntu~${CODE_NAME}_amd64.deb | sed 's/^.*|//g' | sed 's/^.*href="//g' | sed 's/_amd64.deb.*/_amd64.deb/g'`
# wget ${LINK}

# -------------------------------------------------------------------------------------------
# VMware
# http://jasonmun.blogspot.my/2013/06/ubuntu-vmware.html
# http://jasonmun.blogspot.my/2016/05/vmware-vmware-tools.html
# http://jasonmun.blogspot.my/2016/08/vmware-hgfs.html
# -------------------------------------------------------------------------------------------
# https://softwareupdate.vmware.com/cds/vmw-desktop/ws/

# -------------------------------------------------------------------------------------------
# Messenger for Desktop (Facebook)
# https://messengerfordesktop.com/
# -------------------------------------------------------------------------------------------
# https://updates.messengerfordesktop.com/download/linux/latest/beta?arch=amd64&pkg=deb

# -------------------------------------------------------------------------------------------
# Viber
# https://www.viber.com/products/linux/
# -------------------------------------------------------------------------------------------
# wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
# sudo dpkg -i viber.deb

# -------------------------------------------------------------------------------------------
# FileZilla
# https://filezilla-project.org/download.php?type=client
# -------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------
# PlayStation 模拟器
# http://www.epsxe.com/download.php
# -------------------------------------------------------------------------------------------
# wget http://www.epsxe.com/files/ePSXe205linux_x64.zip

# -------------------------------------------------------------------------------------------
# United-GNOME
# http://jasonmun.blogspot.my/2017/08/themes-united-gnome.html
# -------------------------------------------------------------------------------------------
# LINK=`curl https://github.com/godlyranchdressing/United-GNOME/releases | grep href= | grep .tar.gz | grep United-Ubuntu | sed 's/^.*href="//g' | sed 's/.tar.gz.*/.tar.gz/g' | grep United-Ubuntu-alt.tar.gz  | head -n1`
# FILE_NAME=`echo ${LINK} | sed 's/^.*\/United-Ubuntu-alt.tar.gz/United-Ubuntu-alt.tar.gz/g'`
# wget ${LINK}
