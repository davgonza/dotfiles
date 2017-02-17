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
let &showbreak = ' ◄◄ '
set wrap
set cpo=n

syntax on                       " turn syntax highlighting on by default
filetype off
behave mswin

nnoremap s :w<cr>
nnoremap <space> :

nnoremap <leader>e :nohl<cr> :echo<cr>
nnoremap <leader>f :b#<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>
nnoremap <leader>v :CtrlPBuffer<cr>
nnoremap <leader>x :NERDTreeFind<cr>
nnoremap <leader>s :CtrlP C:\\SRC\\Admin\\JW.Admin.Server<cr>
nnoremap <leader>c :CtrlP C:\\SRC\\Admin\\JW.Admin.Client<cr>

" only alt maps
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-h> <C-w>h
nnoremap <M-l> <C-w>l
nnoremap L g$
onoremap L g$
vnoremap L g$
nnoremap H g^
onoremap H g^
vnoremap H g^
nnoremap co "_ciw
nnoremap vo viw
nnoremap do diw
nnoremap yo yiw

onoremap 8 iW
onoremap q i"
onoremap s i'
onoremap m i(
vnoremap m i(
" nnoremap vm %vi(
" nnoremap cm %ci(
nnoremap <cr> f(l

vnoremap 8 iW
vnoremap q i"
vnoremap s i'
nnoremap r @a
nnoremap Y y$
nnoremap xx dd
nnoremap K i<CR><Esc>l

" The Silver Searcher
if executable('ag')
  " set grepprg=ag\ --nogroup\ --nocolor

endif
let &grepprg='"c:\program files\git\usr\bin\grep.exe" -rn'
" grep "StoredProcedure" "C:/src/Admin/JW.Admin.Server/JW.Admin.Field.ServiceInterface/"





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
nnoremap gqr :w<cr> :so %<cr> :nohl<cr> :echo<cr>
nnoremap gm vi(p
nnoremap gs vi'p
nnoremap gq vi"p
nnoremap gr @:
nnoremap g. :wqa<cr>
nnoremap gn :new +setl\ buftype=nofile







"————————————————————————————————————————————————————————————————————————————
" Plugins (using vundle) will have different save paths 
"————————————————————————————————————————————————————————————————————————————
let s:uname = system("uname -s")
if has("unix")
	if s:uname == "Darwin\n"
		" Do Mac stuff here

		set rtp+=~/.vim/bundle/Vundle.vim/
		call vundle#begin()
	elseif s:uname == "Linux\n"
		" Do Linux stuff here

		set rtp+=~/.vim/bundle/Vundle.vim/
		call vundle#begin()
	endif
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
" OVEWRITES DEFAULT COPY + PASTE BEHAVIOUR
"———————————————————————————————————————————————————————————————————————————
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
let loaded_matchparen = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0



"————————————————————————————————————————————————————————————————————————————
" vsvim (visual studio) and terminal keymaps
"————————————————————————————————————————————————————————————————————————————
" if this is a terminal
if &term == 'win32' || &term == 'xterm-256color'
	" used to be nnoremap go viw"0p
	nnoremap go viwp

	" fixes the problem when jumping up a 'count', with relative line
	" numbers on. if a v:count was not specified, then 'gj', move up visually a
	" line. else, apply the v:count to jump up real lines
	" interestingly, this isn't a problem in VsVim?
	nnoremap <expr> j v:count ? 'j' : 'gj'
	nnoremap <expr> k v:count ? 'k' : 'gk'
	nnoremap / /\\c
else
	" visual studio
	nnoremap go viwp
	nnoremap / /\c
endif     





let s:activatedh = 0 

" toggle chars
function! ToggleChars()
    if s:activatedh == 0
        let s:activatedh = 1 

		set listchars=tab:▸\ ,space:·	
		" listchars defined above
		set list
		highlight ExtraWhitespace ctermbg=red guibg=red
		match ExtraWhitespace /\s\+$/
    else
        let s:activatedh = 0 

		set nolist
        match none
    endif
endfunction


function! CurrentProject()
	" for windows machines, path is like C:\src\path, with backslashes
	let f_path = split(expand('%:p:h'), '\')
	call remove(f_path, 5, len(f_path)-1)
	let something = join(f_path, "/")

	echo "current project " something
endfunction

nnoremap gfp :call GrepInServerProject("<C-R><C-W>")

function! GrepInServerProject(regex)
	let f_path = split(expand('%:p:h'), '\')
	call remove(f_path, 5, len(f_path)-1)
	let cproject = join(f_path, "/")

	" basically, surround with quotes, to execute
	:execute "grep -rn " . "'" . a:regex . "'" . ' ' . "'" . cproject . "' --include \\*.cs --include \\*.xml"
	:execute "cw"
endfunction


