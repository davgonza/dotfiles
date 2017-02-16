#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# 1. first rename dotfile (remove dot), and place inside "dotfiles" folder (the one you cloned)
# 2. run this script
# 3. symlinks created for all specified dotfiles
# 4. IMPORTANT: this script doesn't do it, so you have to manually clean out "dotfiles_old" folder after every rerun
############################

#################### Variables

dir=~/dotfiles                    					  # dotfiles directory
olddir=~/dotfiles_old             					  # old dotfiles backup directory
files="bash_aliases bashrc gitignore bash_profile gitconfig vimrc"    	  # list of files/folders to symlink in homedir

####################

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    # TODO: if the "old" dotfile exists in ~, THEN move it to ~/olddir

    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
read -p "Press any key to continue... " -n1 -s

