#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import os

installStep = [
        'sudo apt-get install vim git curl vim-nox',
        'rm ~/.vimrc',
        'rm -r ~/.vim',
        'git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle',
        'ln -s ~/MyTools/.vimrc ~/',
        'vim +PluginInstall +qall'
        ]

for cmd in installStep:
    os.system(cmd)

print('Vim has installed...')
