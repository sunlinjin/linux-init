#!/usr/bin/env bash

#
# https://jasonmun.blogspot.my
# https://github.com/yomun
# 
# Copyright (C) 2017 Jason Mun
# 
# ---------------------------------------------------------------------------------
# Extras PPA Software
# [Sublime 3 + Plugins] http://jasonmun.blogspot.my/2017/03/sublime-text-3.html
# ---------------------------------------------------------------------------------
sudo add-apt-repository ppa:gerardpuig/ppa -y                       # ubuntu-cleaner
sudo add-apt-repository ppa:graphics-drivers/ppa -y                 # nvidia-384
# sudo add-apt-repository ppa:webupd8team/java -y                   # java
# sudo add-apt-repository ppa:plushuang-tw/uget-stable -y           # uget
# sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y         # sublime
# sudo add-apt-repository ppa:teejee2008/ppa -y                     # aptik, diskman, ukuu
# sudo add-apt-repository ppa:apandada1/brightness-controller -y    # brightness-controller
# sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y  # grub-customizer
# sudo add-apt-repository ppa:noobslab/apps -y                    　# xdman downloader
# sudo add-apt-repository ppa:notepadqq-team/notepadqq -y         　# notepadqq
# sudo add-apt-repository ppa:ppsspp/stable -y                      # ppsspp
# sudo add-apt-repository ppa:ubuntuhandbook1/apps -y               # converseen
# sudo add-apt-repository ppa:dhor/myway -y                         # easyimagesizer
# sudo add-apt-repository ppa:ravefinity-project/ppa -y             # vivacious-colors
# sudo add-apt-repository ppa:wireshark-dev/stable -y               # wireshark
# sudo add-apt-repository ppa:xuzhen666/gnome-mpv -y                # gnome-mpv
# sudo add-apt-repository ppa:slytomcat/ppa -y                      # yd-tools
# sudo add-apt-repository ppa:nilarimogard/webupd8 -y               # youtube-dlg / gnome-twitch

# Precise/12.04
# Trusty/14.04
# Utopic/14.10
# Vivid/15.04
# Wily/15.10
# Xenial/16.04
# Yakkety/16.10
# Zesty/17.04
# Artful/17.10

# ucaresystem-core (12.04 / 14.04 / 15.04 - 17.10)
sudo add-apt-repository ppa:utappia/stable -y
# sudo sed -i 's/artful/yakkety/g' /etc/apt/sources.list.d/utappia-ubuntu-stable-artful.list
# sudo sed -i 's/zesty/yakkety/g' /etc/apt/sources.list.d/utappia-ubuntu-stable-zesty.list
sudo apt update
sudo apt install ucaresystem-core -y

sudo apt install ubuntu-cleaner -y                  # 14.04 / 16.04 - 17.10
# sudo apt install nvidia-387 -y
# sudo apt install oracle-java8-installer -y
sudo apt install uget aria2 -y                      # 12.04 - 17.10
sudo apt install sublime-text-installer -y          # 12.04 - 17.10
# sudo apt install aptik -y                         # 12.04 / 14.04 - 17.10
# sudo apt install brightness-controller -y         # 12.04 / 14.04 / 15.04 - 17.10
# sudo apt install grub-customizer -y               # 12.04 - 14.10 / 16.04 / 17.10
# sudo apt install xdman-downloader -y              # 12.04 / 14.04 / 16.04 - 17.04
sudo apt install notepadqq notepadqq-gtk -y         # 14.04 - 17.10
# sudo apt install ppsspp -y                        # 14.04 / 15.04 - 17.10
sudo apt install indicator-diskman -y               # 14.04 / 15.04 - 17.10
# sudo apt install ukuu -y                          # 14.04 / 15.04 - 17.10

# sudo apt install converseen -y                    # 12.04 / 14.04 / 16.04 - 16.10
# sudo apt install easyimagesizer -y                # 14.04 / 16.04

# sudo apt install vivacious-colors -y
# sudo apt install vivacious-folder-colors-addon -y

# sudo apt install wireshark -y                                          # 12.04 / 14.04 - 17.04

# sudo apt install gnome-mpv -y; sudo apt remove totem totem-common -y   # 14.10 - 17.10

# sudo apt install youtube-dlg -y                                        # 12.04 / 14.04 / 15.04 - 17.04
# sudo apt install yd-tools -y
