#!/usr/bin/python3
# -*- coding: UTF-8 -*-

import os

installStep = [
        'rm ~/.bash*',
        'ln -s ~/MyTools/.bash* ~/',
        'source ~/.bashrc'
        ]

for cmd in installStep:
    os.system(cmd)

print('ok bash')
