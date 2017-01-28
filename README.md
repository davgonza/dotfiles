# dotfiles
some modest dotfiles

## how to make it work:

#### install

* `git clone git@github.com:davgonza/dotfiles.git`
* `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* (optional) in Vim `:PluginInstall`

* … and then to make your vimrc, bash_profile easier to work with, update repo, etc...
* `cd ~/dotfiles`
* `chmod +x makesymlinks.sh`
* `./makesymlinks.sh`
* … voila ! Dot files are easier to update/maintain

#### maintenance

* `cd ~`
* change vimrc (symbolic link)
* `git push origin master`
* (on other machine)
* `git pull origin master`


#### make it pretty

Setting the theme for VIM in powershell is kind of cumbersome, basically:
* download registry file: https://github.com/reideast/cmd-colors-monokai
* and then in powershell, `regedit /s C:\directory_to_file\monokai.reg`
** OR slightly easier: just double click the .reg file
* create shortcut to C:\Windows\System32\WindowsPowerShell\v1.0 on desktop



#### I have weird line ending characters, in VIM?

in the DOS/Windows world, carriage return characters are generated as ^M.
To fix this, in vim do: `%s/^M$//g`
(to insert the `^M` character, do Ctrl+V Ctrl+M)
