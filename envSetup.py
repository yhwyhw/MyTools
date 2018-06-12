"""
這是一份Linux使用環境快速設定script。
"""


#!/usr/bin/env python3
# -*- coding: UTF-8 -*-

import os

cmd-UpdateSys = "sudo apt-get update && sudo apt-get upgrade"

defaultCMD = [
        "sudo apt-get update && sudo apt-get upgrade",

        "sudo passwd",

        "sudo apt-get install openssh-server",
        "sudo rm /etc/ssh/ssh_host_*",
        "sudo dpkg-reconfigure openssh-server",

        "sudo dpkg-reconfigure locales",
        "sudo apt-get install ttf-wqy-microhei ttf-wqy-zenhei",
        
        "sudo dkpg-reconfigure tzdata",

        "sudo rm ~/.tmux.conf",
        "ln -s ~/linuxEnv/.tmux.conf ~/",
        "sudo apt-get install tmux",

        "sudo rm ~/.bashrc && sudo rm ~/.bash_profile",
        "ln -s ~/linuxEnv/.bashrc ~/",
        "ln -s ~/linuxEnv/.bash_profile ~/",
        "source .bashrc",

        "sudo apt-get install cifs-utils gparted",
        
        "sudo apt-get install locate && updatedb",

        "sudo apt-get install vim git curl",
        "rm ~/.vimrc && sudo rm -r ~/.vim",
        "git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle",
        "ln -s ~/linuxEnv/.vimrc ~/",
        "vim +PluginInstall +qall"
        ]

for cmd in defaultCMD:
    os.system(cmd)

print("End....Success !!")
