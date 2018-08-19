#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# 1. first rename dotfile (remove dot), and place inside "dotfiles" folder (the one you cloned)
# 2. run this script
# 3. symlinks created for all specified dotfiles
# 4. IMPORTANT: this script doesn't do it, so you have to manually clean out "dotfiles_old" folder after every rerun
############################
# 1. first rename dotfile to remove dot, and place inside dotfiles directory (the one you cloned)
# 2. run this script
# 3. there should be a symlink (copy) of the desired dotfile in your $HOME directory
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
<<<<<<< HEAD
    
    windows() { [[ -n "$WINDIR" ]]; }

	if windows; then
		# if this is windows, create hard link 
		cmd <<< "mklink /H \"%HOME%/.$file\" \"${file%/}\"" > /dev/null
	else
		# else create "symlink"
		ln -s $dir/$file ~/.$file
	fi
||||||| merged common ancestors
    ln -s $dir/$file ~/.$file
=======
	ln -s $dir/$file ~/.$file
>>>>>>> 66a7c44da0eb3bd69fe79f3aa677a75f9e33e0e5
done
read -p "Press any key to continue... " -n1 -s

