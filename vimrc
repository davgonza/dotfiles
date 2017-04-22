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
set expandtab                   " insert 4 spaces instead of the tab char
set shiftwidth=4
set splitbelow
set splitright
set hlsearch
set nolist
set undofile                    " Save undo's after file closes
set enc=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
let mapleader = ","
let &showbreak = ' ◄◄ '
set undodir=~/tmp//
set backupdir=~/tmp//
set directory=~/tmp//
set wrap
set cpo=n
set scrolloff=3

syntax on                       " turn syntax highlighting on by default
filetype off
behave mswin

nnoremap s :w<cr>
nnoremap <space> :


nnoremap <leader>a gg"*yG<c-o><c-o>zz
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
" nnoremap L g$
" onoremap L g$
" vnoremap L g$
" nnoremap H g^
" onoremap H g^
" vnoremap H g^

nnoremap h g^
nnoremap l g$
nnoremap 1h h
nnoremap 1l l


nnoremap co "_ciw
nnoremap vo viw
nnoremap do diw
nnoremap yo yiw
nnoremap yu ^y$
nnoremap du ^d$
nnoremap vu ^v$

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
nnoremap K i<CR><Esc>l
nnoremap - W

" The Silver Searcher
if executable('ag')
  " set grepprg=ag\ --nogroup\ --nocolor

endif
let &grepprg='"c:\program files\git\usr\bin\grep.exe" -rn'



if &diff
    " less confusing diffs...
    colorscheme bw
    syntax off
    hi DiffAdd      cterm=none    ctermfg=White         ctermbg=Green
    hi DiffChange   cterm=none    ctermfg=White         ctermbg=none
    hi DiffDelete   cterm=bold    ctermfg=White         ctermbg=red
    hi DiffText     cterm=none    ctermfg=White         ctermbg=darkmagenta
endif
nnoremap g<tab> :wincmd J<cr>


"————————————————————————————————————————————————————————————————————————————
" CUSTOM 'G' MAPS
"————————————————————————————————————————————————————————————————————————————
imap gh <esc>
vmap gh <esc>
nnoremap gwl <C-w>v
nnoremap gwj <c-w>s
nnoremap gwu <c-w>q
nnoremap g/ /<c-r>*<cr>
nnoremap <silent>gw- :exe "15winc >"<CR>
nnoremap <silent>gw[ :exe "15winc <"<CR>
nnoremap <silent>gw= :exe "15winc +"<CR>
nnoremap <silent>gw] :exe "15winc -"<CR>
nnoremap gqf :e $MYVIMRC<cr>
nnoremap gqr :w<cr> :so %<cr> :nohl<cr> :echo<cr>
nnoremap gm vi(p
nnoremap gs vi'p
nnoremap gq vi"p
nnoremap gr @:
nnoremap g. :wqa<cr>
" nnoremap gn :new +setl\ buftype=nofile
nnoremap gy *Nciw
nnoremap gnd :cd %:p:h<CR>

nnoremap gns :call GrepInServerProject("<C-R><C-W>")
nnoremap gnc :call GrepInClientProject("<C-R><C-W>")
nnoremap gnf :let @+ = expand("%:p")<cr>
nnoremap gu :call EasyFindReplace("<C-R><C-W>", "<C-R><C-W>")

nnoremap dgm d/)<CR> :nohl<cr>bbw
nnoremap cgm c/)<CR> :nohl<cr>bbw
" nnoremap cgm c/\()\|}\)<CR> :nohl<cr>bbw

nnoremap giv f=f"lvi"
nnoremap gic f=f"lci"

" less latency, between giv, and giiv. possibly change later
nnoremap giiv F=f"lvi"
nnoremap giic F=f"lci"

" easy way to scroll through strings... ?
vnoremap giv <esc>f=f"lvi"








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
    else
        " Gotta be mingw

        set rtp+=~/vimfiles/bundle/Vundle.vim/
        let path='~/vimfiles/bundle'
        call vundle#begin(path)
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
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()                    " required
filetype plugin indent on            " required



"————————————————————————————————————————————————————————————————————————————
" OVERWRITES DEFAULT COPY + PASTE BEHAVIOUR
"———————————————————————————————————————————————————————————————————————————
nnoremap x "_dl
vnoremap x "_d
nnoremap dx "_dd

nnoremap X "_D
vnoremap X "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C

" register
vnoremap p "_dp
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
let g:ctrlp_lazy_update = 5
let NERDTreeIgnore = ['\.xaml.cs$', '.*pdb.*', '.*Tests.*']
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let NERDTreeShowHidden=1



"————————————————————————————————————————————————————————————————————————————
" vsvim (visual studio) and terminal keymaps
"————————————————————————————————————————————————————————————————————————————
" if this is a terminal
if &term == 'win32' || &term == 'xterm-256color'
    " used to be nnoremap go viw"0p
    nnoremap go viw"0p

    " fixes the problem when jumping up a 'count', with relative line
    " numbers on. if a v:count was not specified, then 'gj', move up visually a
    " line. else, apply the v:count to jump up real lines
    " interestingly, this isn't a problem in VsVim?
    nnoremap <expr> j v:count ? 'j' : 'gj'
    nnoremap <expr> k v:count ? 'k' : 'gk'
    nnoremap / /\\c

    " hack; highlighting doesn't work when doing normal n unless nohlsearch is
    " used before the method call
    noremap n :set nohlsearch\|:call SearchNext()<CR>
    noremap N :set nohlsearch\|:call SearchPrev()<CR>

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


function! GrepInServerProject(regex)
    let f_path = split(expand('%:p:h'), '\')
    call remove(f_path, 5, len(f_path)-1)
    let cproject = join(f_path, "/")

    " basically, surround with quotes, to execute
    :execute "grep -rn " . "'" . a:regex . "'" . ' ' . "'" . cproject . "' --include \\*.cs --include \\*.xml"
    :execute "cw"
endfunction

function! GrepInClientProject(regex)
    let f_path = split(expand('%:p:h'), '\')
    call remove(f_path, 5, len(f_path)-1)
    let cproject = join(f_path, "/")

    " basically, surround with quotes, to execute
    :execute "grep -rn " . "'" . a:regex . "'" . ' ' . "'" . cproject . "' --include \\*.cs --include \\*.xaml --include \\*.resx"
    :execute "cw"
endfunction


function! EasyFindReplace(old,new)
    let line=getline('.')

    while line !~ "public.*(" && line !~ "private.*("
        :execute "normal! k"
        let line=getline('.')
    endwhile
    let startingLineNumber=line('.')

    " now that we're at the method, go to the beginning, and find first
    " bracket, then find corresponding bracket
    :execute "normal! 0/{\<cr>%"
    let lastLineNumber=line('.')
    echo lastLineNumber

    let exp=':silent ' . startingLineNumber . ',' . lastLineNumber . 's/\<' . a:old .'\>/'. a:new .'/g'

    execute exp
endfunction





let s:szz = 0
function! SearchNext()
  set hlsearch
  " next result (may or may not be on the same page)
  let nextFindLineNumber = search(@/, 'n')

  " current lines, btw
  let nextFindResultIsOnSamePage = line('w0') <= nextFindLineNumber && nextFindLineNumber <= line('w$')
  let s:szz = !nextFindResultIsOnSamePage

  if s:szz == 0
    normal! n
  else
    normal! nzz
  endif
endfunction

let s:szz2 = 0
function! SearchPrev()
  set hlsearch
  " prev result (may or may not be on the same page)
  let prevFindLineNumber = search(@/, 'bn')

  " current lines, btw
  let prevFindResultIsOnSamePage = line('w0') <= prevFindLineNumber && prevFindLineNumber <= line('w$')
  let s:szz2 = !prevFindResultIsOnSamePage

  if s:szz2 == 0
    normal! N
  else
    normal! Nzz
  endif
endfunction


nnoremap gni :call SimilarFile()<cr>

function! SimilarFile()
    let currentFile = expand("%:t")

    if IsClient() == 1
        let dest = ""

        if currentFile =~ ".*View.xaml"
            " extract View.xaml piece of file name.
            let dest = strpart(currentFile, 0, len(currentFile)-5)
            let viewmodel = dest . "Model.cs"
            exe "normal \,c" . viewmodel
        elseif currentFile =~ ".*ViewModel.cs"
            let dest = strpart(currentFile, 0, len(currentFile)-8)
            let view = dest . ".xaml"
            exe "normal \,c" . view
        endif
    else
        " exe "normal \,s" . viewmodel
    endif
endfunction



function! IsClient()

    let f_path = split(expand('%:p:h'), '\')
    call remove(f_path, 4, len(f_path)-1)
    let project = join(f_path, "/")

    let isclient = 0
    if project =~ '.*Client.*'
        let isclient = 1
    endif

    return isclient
endfunction

