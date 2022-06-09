" to normalize line endings in vim, try the following:
" %s/^M$//g
" on a mac, that's Ctrl+V,M for ^M symbol
" another easy way :w! ++ff=unix
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
set statusline=%<%F\ %h%m%r%=%-14.(%l/%L,%c%V%)\ %P
let mapleader = ","
"let &showbreak = ' ?? '
"let &showbreak = '>>>>'
let &showbreak = '    '
set undodir=~/tmp//
set autochdir
set backupdir=~/tmp//
set directory=~/tmp//
set wrap
set cpo=n
set scrolloff=3
set autoread
set linebreak
autocmd SwapExists * let v:swapchoice = "o"
let &statusline .= '%{(&readonly || !&modifiable) ? " <EE><82><A2>" : ""} <EE><82><B1>'

syntax on                       " turn syntax highlighting on by default
filetype off
behave mswin

nnoremap s :w<cr>
nnoremap g9s :w !sudo tee %<CR>
nnoremap <space> :


nnoremap <leader>a gg"*yG<c-o><c-o>zz
nnoremap <leader>b <c-w>p
nnoremap <leader>e :nohl<cr> :echo<cr>
nnoremap <leader>f :b#<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>
nnoremap <leader>v :CtrlPBuffer<cr>
nnoremap <leader>z :NERDTreeVCS<cr> <C-w>l :NERDTreeFind<cr> :redraw!<cr> <C-w>h :vertical resize 60<CR>
nnoremap <leader>r :Telescope git_files<cr>

nnoremap <leader>gg :CtrlP C:\\SRC\\symlinks<cr>
map <C-k><C-d> <plug>NERDCommenterToggle

" for focusing quickfix window
nnoremap <leader>q <c-w>b

nnoremap h g^
nnoremap l g$
nnoremap 1h h
nnoremap 1l l


nnoremap co "_ciw
nnoremap vo viw
nnoremap do diw
noremap yo yiw
nnoremap yu ^y$
nnoremap yl y$
nnoremap du ^d$

nnoremap gnt gnxP

nnoremap vu ^v$
nnoremap vl v$
nnoremap vh v^
nnoremap vv V

onoremap l g$
onoremap h g^
onoremap 8 iW
nnoremap d8 daW

onoremap q i"
onoremap s i'
onoremap m i(
vnoremap m i(
nnoremap vm %vi(
nnoremap cm %ci(

inoremap <S-CR> <CR><C-o>k

vnoremap 8 iW
vnoremap q i"
vnoremap s i'
nnoremap r @a
nnoremap Y y$
nnoremap K i<CR><Esc>l
nnoremap - W
"map <C-j> :cn<CR>zz
"map <C-k> :cp<CR>


let &grepprg='"c:\program files\git\usr\bin\grep.exe" -rn'










"????????????????????????????????????????????????????????????????????????????
" CUSTOM 'G' MAPS
"????????????????????????????????????????????????????????????????????????????
imap jj <esc>
nnoremap gwl <C-w>v
nnoremap gwj <c-w>s
nnoremap gwu <c-w>q
nnoremap gyu :tabclose<CR>

" Cmd map, so instead of Ctrl + R, then *... just do Ctrl + G
cmap <C-g> <C-r>*
inoremap <C-g> <C-r>*

nnoremap g/ /\\c<c-r>*<cr>
nnoremap <silent>gw0 :exe "15winc >"<CR>
nnoremap <silent>gw9 :exe "15winc <"<CR>
nnoremap <silent>gw7 :exe "15winc +"<CR>
nnoremap <silent>gw6 :exe "15winc -"<CR>
" nnoremap gif :e $MYVIMRC<cr>
nnoremap gif :e C:/Users/default.LAPTOP-H6AC3BCC/AppData/Local/nvim/init.vim<cr>
nnoremap gyr :w<cr> :so %<cr> :nohl<cr> :echo<cr>
nnoremap gr @:
nnoremap g0 :wqa<cr>
nnoremap gy *Nciw
nnoremap gnd :cd %:p:h<CR>
nnoremap ga 1hi<space>
nnoremap gnf :call GetDirectoryPath()<cr>

function! GetDirectoryPath()
    let @+ = expand("%:p")

    let fileName = @+
    echo "copied " . "'" . fileName . "'" . " to clipboard"
endfunction

nnoremap gnfo :call LinuxPath()<cr>
function! LinuxPath()
    let localPath = expand("%:p")
    let linuxy = substitute(localPath, '\\', '\/', 'g')
    let @+ = linuxy

    let fileName = @+
    echo "copied " . "'" . fileName . "'" . " to clipboard"
endfunction

nnoremap g9n :sav ~/notes/
nnoremap g9t :tabnew<CR>
" reset encoding
nnoremap g9e :set bomb<CR>

" format table
nnoremap g9f :%!column -t

" override entire file with clipboard
nnoremap grr ggVGP
nnoremap gri :set tabstop=2<CR> :set softtabstop=0<CR> :set expandtab<CR> :set shiftwidth=2<CR> :set smarttab<CR>gg=G
nnoremap <C-'> :NERDTreeFind<cr>zz

nnoremap g<SPACE>b :Gblame<CR> <C-w>o




nnoremap <leader>ga :call ToggleHiddenAll()<CR> :echo<cr>
nnoremap <leader>lc :let @+=@:<CR>

nnoremap gnn :call GetFileName()<cr>
nnoremap gnotes :set norelativenumber \| set nu! \| call ToggleHiddenAll() \| echo<CR>
nnoremap gw8 <C-w>o

" make string a cool variable name
nnoremap gdr :.s/\\(^\\\|\\([A-z]\\)\\@<=\\).\\{-}\\($\\\|[A-z]\\)\\@=//g<cr> :nohl<cr> :echo<cr>
nnoremap gfl :%s/\\r\\n/

map gx :call HandleURL()<cr>






"####################################################################################################
" CUSTOM '[' MAPS
"####################################################################################################
nnoremap <A-[> :Telescope git_files<cr>
nnoremap [f :call Test()<cr>
function! Test()
    Telescope live_grep
    execute "normal <C-g>"
endfunction





" more remaps
" nnoremap gnh :silent Glog -- %<CR> :cw<CR>
nnoremap gnh :call FileHistory()<CR>
nnoremap gi :call DiffFileHistory()<CR>
nnoremap gnm :call MethodHistory("<C-R><C-W>")
nnoremap gnl :call LineHistory()











nnoremap dgp d/)<CR> :nohl<cr>bbw
nnoremap dgb d/}<CR> :nohl<cr>bbw
nnoremap dgq d/"<CR> :nohl<cr>bbw
nnoremap dg; d/;<CR> :nohl<cr>bbw

nnoremap cgp c/)<CR> <ESC>:nohl<cr>xi
nnoremap cgb c/}<CR> <ESC>:nohl<cr>xi
nnoremap cgq c/"<CR> <ESC>:nohl<cr>xi
nnoremap cg; c/;<CR> <ESC>:nohl<cr>xi



" )




"????????????????????????????????????????????????????????????????????????????
" vundle will have different save paths
"????????????????????????????????????????????????????????????????????????????
if has("unix")
	hi Visual  ctermfg=white ctermbg=magenta gui=none

    set rtp+=~/.vim/bundle/Vundle.vim/
    call vundle#begin()

    "mingw
        "set rtp+=~/vimfiles/bundle/Vundle.vim/
        "let path='~/vimfiles/bundle'
        "call vundle#begin(path)

elseif has("win32")
    " beloved windows
    hi Visual  ctermfg=Black ctermbg=white gui=none

    let g:agprg="C:/ProgramData/chocolatey/bin/ag.exe --column"

    " The Silver Searcher
    if executable('ag')
      "set grepprg=ag\ --nogroup\ --nocolor
    endif







    source ~/vimfiles/bundle/colorstepper/colorstepper.vim




    set rtp+=~/vimfiles/bundle/Vundle.vim/
    set rtp+=~/fzf
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
endif


Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'farmergreg/vim-lastplace'


Plugin 'tpope/vim-dispatch'
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kkoenig/wimproved.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-markdown'
Plugin 'sotte/presenting.vim'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'epmatsw/ag.vim'

Plugin 'liuchengxu/eleline.vim'
Plugin 'inkarkat/vim-spellcheck'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'shinglyu/vim-codespell'
Plugin 'Xuyuanp/scrollbar.nvim'
Plugin 'dstein64/nvim-scrollview'

Plugin 'nvim-lua/popup.nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'mfussenegger/nvim-dap'
Plugin 'Pocco81/DAPInstall.nvim'
Plugin 'akinsho/toggleterm.nvim'






call vundle#end()                    " required
filetype plugin indent on            " required






"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch


set completeopt-=preview




vnoremap <silent> <C-F5> :<C-U>let old_reg=@"<CR>gvy:silent!!cmd /cstart <C-R><C-R>"<CR><CR>:let @"=old_reg<CR>
function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!start ".s:uri
  else
    echo "No URI found in line."
  endif
endfunction



" let g:eleline_slim = 0






" ##########################################################################
" OVERWRITES DEFAULT COPY + PASTE BEHAVIOUR
" ##########################################################################
nnoremap x "_dl
vnoremap x "_d
nnoremap dx "_dd
" some test with a parenthesis__)__also a squiggly bracket__}__and then more text

nnoremap X "_D
vnoremap X "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C

" register
vnoremap p "_dp
map <leader>y "*y


" ##########################################################################
" Colors + Themes
" ##########################################################################
" Setting the theme for Vim in powershell is kind of cumbersome, basically:
" ##########################################################################
" download registry file here: https://github.com/reideast/cmd-colors-monokai
" and then "regedit /s C:\SRC\even_folder\monokai.reg"
"   OR new way: just run the .reg file
" create shortcut to C:\Windows\System32\WindowsPowerShell\v1.0 on desktop




" ##########################################################################
" Remaps for plugins
" ##########################################################################

" looks weird, but it only remaps in normal mode
let g:NumberToggleTrigger="<C-h>"


let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_follow_symlinks=1

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others | "c:\program files\git\usr\bin\grep.exe" -v "xaml.cs$"']

let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_lazy_update = 5
let NERDTreeIgnore = ['\.xaml.cs$', '.*pdb.*', '.*Tests.*', '.*\bin.*', '.*obj.*', '.*feature.cs.*']
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let NERDTreeShowHidden=1
au VimEnter * execute "normal \<C-h>"
au VimEnter * execute "set number relativenumber"

let g:ctrlp_mruf_max = 4000



function! DiffFileHistory()
    exec "/\\c" . ".*JW.Admin.*" . @m
    exec "normal O"
    exec "normal zR"

    exec "normal gg]czz"

    :windo set wrap
endfunction


function! FileHistory()
    let f_path = split(expand('%:p'), '\')
    let aIndex = len(f_path)-1
    let fileName = f_path[aIndex]

    let @m = fileName

    let filePath = expand("%:p")

    :execute "silent Glog -30 -- " . filePath
    :execute "cw"
    :execute "normal ,b"
endfunction







function! MethodHistory(regex)
    let f_path = split(expand('%:p'), '\')
    let f_path2 = remove(f_path, 3, len(f_path)-1)
    let fileNamePathInRepo = join(f_path2, "/")

    :execute "silent Git! log -L :" . a:regex . ":" . fileNamePathInRepo
endfunction

function! LineHistory()
    let f_path = split(expand('%:p'), '\')
    let f_path2 = remove(f_path, 3, len(f_path)-1)
    let fileNamePathInRepo = join(f_path2, "/")

    :execute "silent Git! log -L " . line(".") . "," . line(".") . ":" . fileNamePathInRepo
endfunction






" last active tab
if !exists('g:lasttab')
  let g:lasttab = 1
endif
nmap <Leader>3 :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()





let loaded_matchparen = 1



setlocal foldexpr=matchstr(substitute(getline(v:lnum),'\|.*','',''),'^.*/')==#matchstr(substitute(getline(v:lnum+1),'\|.*','',''),'^.*/')?1:'<1'




" unique colors, in powershell with monokai theme
" white, yellow, red, cyan, green, darkgray, darkmagenta



"????????????????????????????????????????????????????????????????????????????
" vsvim (visual studio) and terminal keymaps
"????????????????????????????????????????????????????????????????????????????
" if this is a terminal (including mingw ) OR gvim. Basically if
" it's not VsVim (Vim for visual studio)
if &term == 'win32' || &term == 'xterm-256color' || has('unix') || has('gui_running') || &term == 'nvim'

    " used to be nnoremap go viw"0p
    nnoremap go viw"0p

    " fixes the problem when jumping up a 'count', with relative line
    " numbers on. if a v:count was not specified, then 'gj', move up visually a
    " line. else, apply the v:count to jump up real lines
    " interestingly, this isn't a problem in VsVim?
    nnoremap <expr> j v:count ? 'j' : 'gj'
    nnoremap <expr> k v:count ? 'k' : 'gk'
    nnoremap / /\\c


    function! SuperCleverTab()
        if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
            return "\<Tab>"
        else
            if &omnifunc != ''
                return "\<C-X>\<C-O>"
            elseif &dictionary != ''
                return "\<C-K>"
            else
                return "\<C-N>"
            endif
        endif
    endfunction

    inoremap <C-b> <C-R>=SuperCleverTab()<cr>


    " hack; highlighting doesn't work when doing normal n unless nohlsearch is
    " used before the method call
    noremap n :set nohlsearch\|:call SearchNext()<CR>
    noremap N :set nohlsearch\|:call SearchPrev()<CR>

    " NOTE: specifically gvim
    if has('gui_running')
        " startup window size
        set lines=40 columns=150
        set guicursor+=n-v-c:blinkon0

        " colorscheme molokai

        " colorscheme delek
        " colorscheme jellybeans
        colorscheme elflord

        set guioptions-=T  "remove toolbar
        set guioptions-=L
	    set guifont=Source_Code_Pro_Semibold:h9:cANSI:qDRAFT
        set guifont=DroidSansMono_Nerd_Font_Mono:h10:cANSI:qDRAFT
        set guifont=Consolas:h11:cANSI:qDRAFT

        " text highlighting
        hi Visual  guifg=white guibg=magenta
    endif

    " NOTE: specifically for vim in conemu
    if !empty($CONEMUBUILD)
        set mouse=a
        set term=xterm

        " NOTE: not even actually sure if this even works anymore, as we are
        " handling it through ConEmu now.
        "
        "inoremap <Esc>[62~ <C-X>4<C-E>
        "inoremap <Esc>[63~ <C-X>4<C-Y>
        "nnoremap <Esc>[62~ 4<C-E>
        "nnoremap <Esc>[63~ 4<C-Y>

        " weird options for using ConEmu with xterm set
        " This will sometimes cause characters to be entered, when scrolling
        " really fast through a document. Must set "ttimeoutlen" to small value
        inoremap <Char-0x07F> <BS>
        nnoremap <Char-0x07F> <BS>
        cnoremap <Char-0x07F> <BS>

        " perhaps `nocompatible` is not required
        set nocompatible
        set t_Co=256
        let &t_AB="\e[48;5;%dm"
        let &t_AF="\e[38;5;%dm"


        " this part is pretty nice, because ConEmu can have its own colorscheme,
        " but as soon as Vim gets activated, this colorscheme will take over
        " currently using <Solarized Git> in ConEmu, molokai in Vim
        colorscheme jellybeans

        hi Visual  ctermfg=black ctermbg=lightblue
        hi Search ctermfg=black ctermbg=green
        hi Comment ctermfg=496



        :hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen

        let g:ctrlp_prompt_mappings = {
            \ 'PrtInsert("c")':       ['g)'],
            \ 'PrtBS()': ['<Char-0x07F>', '<c-h>']
        \ }

        " Must set "ttimeoutlen" to small value
        set timeoutlen=500 ttimeoutlen=50

        " set <M-h>=^[h
        execute "set <M-h>=\eh"
        nnoremap <M-h> <C-w>h

        execute "set <M-j>=\ej"
        nnoremap <M-j> <C-w>j

        execute "set <M-k>=\ek"
        nnoremap <M-k> <C-w>k

        execute "set <M-l>=\el"
        nnoremap <M-l> <C-w>l

    else
        " Else, if it's not ConEmu, I want this mapping to work with others
        " like Gvim, Powershell, etc.
        " Basically, still in the Shell, just NOT conemu
        let g:ctrlp_prompt_mappings = {
            \ 'PrtInsert("c")':       ['g)'],
            \ }
    endif

    " NOTE: If in Gvim inside ConEmu
    if has('gui_running') && has('gui_running')
        :set guioptions-=m

        hi Visual  guifg=black guibg=magenta
        hi Search guifg=white guibg=#009999


        let g:ctrlp_prompt_mappings = {
            \ 'PrtInsert("c")':       ['g)']
        \ }
        "\ 'PrtBS()': ['<Char-0x07F>', '<c-h>']
    endif

else
    " visual studio
    nnoremap go viwP
    nnoremap / /\c
    nnoremap g/ /\c<c-r>*<cr>

    " mapped before, now just remapping for vs
    onoremap l $
    onoremap h ^
endif






let s:activatedh = 0

" toggle chars
function! ToggleChars()
    if s:activatedh == 0
        let s:activatedh = 1

        set listchars=tab:?\ ,space:·
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




autocmd Filetype qf setlocal statusline=\ %n\ \ %f%=%L\ lines\


function! GetFileName()
    let f_path = split(expand('%:p'), '\')
    let aIndex = len(f_path)-1
    let fileName = f_path[aIndex]

    let @+ = fileName
    echo "copied " . "'" . fileName . "'" . " to clipboard"
endfunction











com! -nargs=1 Search :let @/='\V'.escape(<q-args>, '\\')| normal! n





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



let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

" Triple scrolling "speed"
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


if has("gui_running")
  function! ScreenFilename()
    if has('amiga')
      return "s:.vimsize"
    elseif has('win32')
      return $HOME.'\_vimsize'
    else
      return $HOME.'/.vimsize'
    endif
  endfunction

  function! ScreenRestore()
    " Restore window size (columns and lines) and position
    " from values stored in vimsize file.
    " Must set font first so columns and lines are based on font size.
    let f = ScreenFilename()
    if has("gui_running") && g:screen_size_restore_pos && filereadable(f)
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      for line in readfile(f)
        let sizepos = split(line)
        if len(sizepos) == 5 && sizepos[0] == vim_instance
          silent! execute "set columns=".sizepos[1]." lines=".sizepos[2]
          silent! execute "winpos ".sizepos[3]." ".sizepos[4]
          return
        endif
      endfor
    endif
  endfunction

  function! ScreenSave()
    " Save window size and position.
    if has("gui_running") && g:screen_size_restore_pos
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      let data = vim_instance . ' ' . &columns . ' ' . &lines . ' ' .
            \ (getwinposx()<0?0:getwinposx()) . ' ' .
            \ (getwinposy()<0?0:getwinposy())
      let f = ScreenFilename()
      if filereadable(f)
        let lines = readfile(f)
        call filter(lines, "v:val !~ '^" . vim_instance . "\\>'")
        call add(lines, data)
      else
        let lines = [data]
      endif
      call writefile(lines, f)
    endif
  endfunction

  if !exists('g:screen_size_restore_pos')
    let g:screen_size_restore_pos = 1
  endif
  if !exists('g:screen_size_by_vim_instance')
    let g:screen_size_by_vim_instance = 1
  endif
  autocmd VimEnter * if g:screen_size_restore_pos == 1 | call ScreenRestore() | endif
  autocmd VimLeavePre * if g:screen_size_restore_pos == 1 | call ScreenSave() | endif
endif




" from help
" to use:
" :set tabline=%!MyCustomTabLine()

" :set tabline=%!MyCustomTabLine()





function! MyCustomTabLine()
  let s = ''
  " loop through each tab page
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " background color
    "if i + 1 == tabpagenr()
      "let s .= '%#TabLineSel#' " WildMenu
    "else
      "let s .= '%#Title#'
    "endif

    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T '
    " set page number string
    let s .= i + 1 . ''
    " get buffer names and statuses
    let n = ''  " temp str for buf names
    let m = 0   " &modified counter
    let buflist = tabpagebuflist(i + 1)
    " loop through each buffer in a tab
    for b in buflist
      if getbufvar(b, "&buftype") == 'help'
        " let n .= '[H]' . fnamemodify(bufname(b), ':t:s/.txt$//')
      elseif getbufvar(b, "&buftype") == 'quickfix'
        " let n .= '[Q]'
      elseif getbufvar(b, "&modifiable")
        let n .= fnamemodify(bufname(b), ':t') . ', ' " pathshorten(bufname(b))
      endif
      if getbufvar(b, "&modified")
        let m += 1
      endif
    endfor
    " let n .= fnamemodify(bufname(buflist[tabpagewinnr(i + 1) - 1]), ':t')
    let n = substitute(n, ', $', '', '')
    " add modified label
    if m > 0
      let s .= '+'
      " let s .= '[' . m . '+]'
    endif
    if i + 1 == tabpagenr()
      let s .= ' %#TabLineSel#'
    else
      let s .= ' %#TabLine#'
    endif
    " add buffer names
    if n == ''
      let s.= '[New]'
    else
      let s .= n
    endif
    " switch to no underlining and add final space
    let s .= ' '
  endfor
  let s .= '%#TabLineFill#%T'
  " right-aligned close button
  " if tabpagenr('$') > 1
  "   let s .= '%=%#TabLineFill#%999Xclose'
  " endif
  return s
endfunction






if has('nvim')
    set mouse=a
    hi Visual  guifg=black guibg=cyan

endif




" remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e



let s:fontsize = 11
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! CaskaydiaCove\ Nerd\ Font\ Mono:h" . s:fontsize
endfunction

" In normal mode, pressing numpad's+ increases the font
noremap <C-=> :call AdjustFontSize(1)<CR>
noremap <C--> :call AdjustFontSize(-1)<CR>

" brackets around file icons in NERDTREE
set conceallevel=3

nnoremap <A-h> :tabprevious<CR>
nnoremap <A-l> :tabnext<CR>











autocmd VimEnter * call AfterVimInit()

" for strange cases, where something will
" only work, after vim has been initialized
"----------------------------------------------------------------------------------------------------
function! AfterVimInit()
    call AdjustFontSize(1)

    GuiTabline 0
    set tabline=%!MyCustomTabLine()

    nnoremap <C-k> :wincmd k<CR>
    nnoremap <C-j> :wincmd j<CR>
    nnoremap <C-h> :wincmd h<CR>
    nnoremap <C-l> :wincmd l<CR>
    :execute "ScrollViewDisable"
endfunction

