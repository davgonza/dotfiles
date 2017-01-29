" to normalize line endings in vim, try the following:
" %s/^M$//g
" on a mac, that's Ctrl+V,M for ^M symbol
set nocompatible                " vi compatible is LAME
set ai                          " set auto-indenting on for programming
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set showmode                    " show the current mode
set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows
set incsearch
set tabstop=4
set shiftwidth=4
set splitbelow
set splitright
set hlsearch
set nolist
set undofile                	" Save undo's after file closes
set enc=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
let mapleader = ","
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
syntax on                       " turn syntax highlighting on by default
filetype off
behave mswin


nnoremap s :w<cr>
nnoremap <space> :

nnoremap <leader>e :nohl<cr> :echo<cr>
nnoremap <leader>r :w<cr> :so %<cr> :nohl<cr> :echo<cr>
nnoremap <leader>f :b#<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>
nnoremap <leader>v :CtrlPBuffer<cr>
nnoremap <leader>x :NERDTreeFind<cr>
nnoremap <leader>s :CtrlP C:\SRC\Admin\JW.Admin.Server\<cr>
nnoremap <leader>c :CtrlP C:\SRC\Admin\JW.Admin.Client\<cr>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap L $
nnoremap H ^
onoremap L $
onoremap H ^
vnoremap L $
vnoremap H ^
nnoremap co "_ciw
nnoremap vo viw
nnoremap do diw
nnoremap yo yiw

onoremap 8 iW
onoremap q i"
onoremap s i'
onoremap m i(

vnoremap 8 iW
vnoremap q i"
vnoremap s i'
vnoremap m i(
nnoremap r @a
nnoremap Y y$
nnoremap xx dd
nnoremap K i<CR><Esc>l
nnoremap / /\c

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

endif







"————————————————————————————————————————————————————————————————————————————
" CUSTOM 'G' MAPS
"————————————————————————————————————————————————————————————————————————————
imap gh <esc>
vmap gh <esc>
nnoremap gwl <C-w>v
nnoremap gwj <c-w>s
nnoremap gwu <c-w>q
nnoremap g/ /<c-r>*<cr>
nnoremap <silent>gw- :exe "10winc >"<CR>
nnoremap <silent>gw[ :exe "10winc <"<CR>
nnoremap <silent>gw= :exe "10winc +"<CR>
nnoremap <silent>gw] :exe "10winc -"<CR>
nnoremap gqf :e $MYVIMRC<cr>
nnoremap gp fpvi(p
nnoremap gs vi'p
nnoremap gq vi"p
nnoremap gr @:
nnoremap g. :wqa<cr>
nnoremap gn :new +setl\ buftype=nofile




"————————————————————————————————————————————————————————————————————————————
" Plugins (using vundle) may have different save paths 
"————————————————————————————————————————————————————————————————————————————
let s:uname = system("uname -s")
if has("unix") && s:uname == "Darwin\n"
	" Do Mac stuff here

	set rtp+=~/.vim/bundle/Vundle.vim/
	call vundle#begin()
elseif has("win32")
	" beloved windows
	
	set rtp+=~/vimfiles/bundle/Vundle.vim/
	let path='~/vimfiles/bundle'
	call vundle#begin(path)
endif


Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'kien/ctrlp.vim'
Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-abolish'


call vundle#end()            		" required
filetype plugin indent on    		" required




"————————————————————————————————————————————————————————————————————————————
" OVERWRITES DEFAULT COPY + PASTE BEHAVIOUR
"————————————————————————————————————————————————————————————————————————————
nnoremap x "_d
vnoremap x "_d
nnoremap X "_D
vnoremap X "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
map <leader>y "*y


"————————————————————————————————————————————————————————————————————————————
" Colors + Themes
"————————————————————————————————————————————————————————————————————————————
" Setting the theme for VIM in powershell is kind of cumbersome, basically:
"————————————————————————————————————————————————————————————————————————————
" download registry file here: https://github.com/reideast/cmd-colors-monokai
" and then "regedit /s C:\SRC\even_folder\monokai.reg"
"   OR new way: just run the .reg file
" create shortcut to C:\Windows\System32\WindowsPowerShell\v1.0 on desktop




"————————————————————————————————————————————————————————————————————————————
" Plugin remaps
"————————————————————————————————————————————————————————————————————————————
set number
hi Visual  ctermfg=Black ctermbg=white gui=none
let g:rainbow_active = 1




"————————————————————————————————————————————————————————————————————————————
" vsvim (visual studio) and terminal keymaps
"————————————————————————————————————————————————————————————————————————————
" if this is a terminal
if &term == 'win32' || &term == 'xterm-256color'
	" this remap is for vim, and has to be set here. otherwise visual studio
	" will complain
	nnoremap go viw"0p
else
	" visual studio
	nnoremap go viwp
endif

