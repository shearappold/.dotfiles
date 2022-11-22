#!/bin/bash
#shebang

rm ~/.vimrc
#Remove .vimrc from home directory

sed s/"source ~/.dotfiles/bashrc_custom"/" " .bashrc
#Replaces the text with nothing

rm -r ~/.TRASH
#Removes the trash directory


