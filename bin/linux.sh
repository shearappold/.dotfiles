#!/bin/bash
#shebang

if ["$uname" != "Linux"] {
#if the operating system isn't linux, echo an error in linuxsetup.log and exit
	echo "ERROR: This is not Linux" >> linuxsetup.log
	exit
}
else {
	mkdir -p ~/.TRASH
	#make the directory .TRASH in home if it doesn't exist
	if [-f ~/.vimrc]
		# If .vimrc exists, rename it to .bup_vimrc and dump a message to linuxsetup.log
		mv .vimrc .bup_vimrc
		echo ".vimrc changed to .bupvimrc" >> linuxsetup.log
	fi
	cat ~/etc/vimrc >~/.vimrc
	#Override .vimrc with the contents of vimrc
	echo "source ~/.dotfiles/etc/bash_custom" >> ~/.bashrc
	#Append the statement to .bashrc
fi
