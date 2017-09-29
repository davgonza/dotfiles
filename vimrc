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
set statusline=%<%F\ %h%m%r%=%-14.(%l/%L,%c%V%)\ %P 
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
nnoremap <leader>b <c-w>p
nnoremap <leader>e :nohl<cr> :echo<cr>
nnoremap <leader>f :b#<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>
nnoremap <leader>v :CtrlPBuffer<cr>
nnoremap <leader>x :NERDTreeFind<cr> :redraw!<cr>
nnoremap <leader>s :CtrlP C:\\SRC\\Admin\\JW.Admin.Server<cr>
nnoremap <leader>c :CtrlP C:\\SRC\\Admin\\JW.Admin.Client<cr>
nnoremap <leader>d :CtrlP C:\\SRC\\Admin<cr>
" nnoremap <leader>r :CtrlPLastMode C:\\SRC\\Admin<cr>
nnoremap <leader><tab> :NERDTreeFocus<cr> :redraw!<cr>

" for focusing quickfix window
nnoremap <leader>q <c-w>b

" only alt maps
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-h> <C-w>h
nnoremap <M-l> <C-w>l

nnoremap h g^
nnoremap l g$
nnoremap 1h h
nnoremap 1l l


nnoremap co "_ciw
nnoremap vo viw
nnoremap do diw
noremap yo yiw
nnoremap yu ^y$
nnoremap du ^d$

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
" nnoremap <cr> f(l
" inoremap S-CR> <CR>k

" some random test (between ) and more text here (ok more )
inoremap <S-CR> <CR><C-o>k

vnoremap 8 iW
vnoremap q i"
vnoremap s i'
nnoremap r @a
nnoremap Y y$
nnoremap K i<CR><Esc>l
nnoremap - W
map <C-j> :cn<CR>zz
map <C-k> :cp<CR>

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
nnoremap gtu :tabclose<CR>

nnoremap g/ /<c-r>*<cr>
nnoremap <silent>gw- :exe "15winc >"<CR>
nnoremap <silent>gw[ :exe "15winc <"<CR>
nnoremap <silent>gw= :exe "15winc +"<CR>
nnoremap <silent>gw] :exe "15winc -"<CR>
nnoremap gif :e $MYVIMRC<cr>
nnoremap gqr :w<cr> :so %<cr> :nohl<cr> :echo<cr>
" nnoremap gm vi(p
" nnoremap gs vi'p
" nnoremap gq vi"p
nnoremap gr @:
nnoremap g0 :wqa<cr>
nnoremap gy *Nciw
nnoremap gnd :cd %:p:h<CR>
nnoremap ga 1hi<space>
nnoremap gnf :let @+ = expand("%:p")<cr>
nnoremap g<SPACE>n :sav ~/notes/


nnoremap gp :call GrepInProject("")<left><left>

nnoremap <expr> gs IsClient() == 1 ? ":call GrepInSolution('', '*.cs,*.xaml')<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>" : ":call GrepInSolution('', '*.xml,*.cs')<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>"

nnoremap gio :call GrepInOtherProject("<C-R><C-W>", "Bethel Field Education Persons")<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

nnoremap <leader>gs :call ClipboardServer()<cr>
nnoremap <leader>gc :call ClipboardClient()<cr>
nnoremap <leader>ga :call ToggleHiddenAll()<CR> :echo<cr>
nnoremap <leader>lc :let @+=@:<CR>

nnoremap gnn :call GetFileName()<cr>
nnoremap gw8 <C-w>o
" nnoremap gnc L <C-d><C-d><C-o>gg<C-o>zzj

" make string a cool variable name
nnoremap gdr :.s/\\(^\\\|\\([A-z]\\)\\@<=\\).\\{-}\\($\\\|[A-z]\\)\\@=//g<cr> :nohl<cr> :echo<cr>


" nnoremap ger :call EasyFindReplace("<C-R><C-W>", "<C-R><C-W>")

nnoremap dgp d/)<CR> :nohl<cr>bbw
nnoremap dgb d/}<CR> :nohl<cr>bbw
nnoremap dgq d/"<CR> :nohl<cr>bbw









"————————————————————————————————————————————————————————————————————————————
" vundle will have different save paths 
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
    hi Visual  ctermfg=Black ctermbg=white gui=none
    
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
endif


Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'farmergreg/vim-lastplace'

" Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kkoenig/wimproved.vim'
Plugin 'ryanoasis/vim-devicons'









call vundle#end()                    " required
filetype plugin indent on            " required



"————————————————————————————————————————————————————————————————————————————
" OVERWRITES DEFAULT COPY + PASTE BEHAVIOUR
"———————————————————————————————————————————————————————————————————————————
nnoremap x "_dl
vnoremap x "_d
nnoremap dx "_dd
" nnoremap dy d/\\()\\\|}\\)<CR> :nohl<cr>bbw
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


"————————————————————————————————————————————————————————————————————————————
" Colors + Themes
"————————————————————————————————————————————————————————————————————————————
" Setting the theme for Vim in powershell is kind of cumbersome, basically:
"————————————————————————————————————————————————————————————————————————————
" download registry file here: https://github.com/reideast/cmd-colors-monokai
" and then "regedit /s C:\SRC\even_folder\monokai.reg"
"   OR new way: just run the .reg file
" create shortcut to C:\Windows\System32\WindowsPowerShell\v1.0 on desktop




"————————————————————————————————————————————————————————————————————————————
" Remaps for plugins
"————————————————————————————————————————————————————————————————————————————
" set number

" looks weird, but it only remaps in normal mode
let g:NumberToggleTrigger="<C-h>"

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_lazy_update = 5
let NERDTreeIgnore = ['\.xaml.cs$', '.*pdb.*', '.*Tests.*', '.*bin.*', '.*obj.*', '.*feature.cs.*']
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let NERDTreeShowHidden=1
au VimEnter * RainbowParentheses
let g:rainbow#max_level = 16
let g:ctrlp_mruf_max = 1000




" more plugin remaps
nnoremap gnh :silent Glog -- %<CR> :cw<CR> G

nnoremap gnm :call MethodHistory("<C-R><C-W>")
nnoremap gnl :call LineHistory()



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



let loaded_matchparen = 1 
nnoremap <S-Return> gnc
nnoremap gnc ggVG<ESC><C-o> 






setlocal foldexpr=matchstr(substitute(getline(v:lnum),'\|.*','',''),'^.*/')==#matchstr(substitute(getline(v:lnum+1),'\|.*','',''),'^.*/')?1:'<1'




" unique colors, in powershell with monokai theme 
" white, yellow, red, cyan, green, darkgray, darkmagenta



"————————————————————————————————————————————————————————————————————————————
" vsvim (visual studio) and terminal keymaps
"————————————————————————————————————————————————————————————————————————————
" if this is a terminal (including mingw ) OR gvim. Basically if 
" it's not VsVim (Vim for visual studio)
if &term == 'win32' || &term == 'xterm-256color' || has('unix') || has('gui_running')

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

    " NOTE: specifically gvim
    if has('gui_running')
        " startup window size
        set lines=40 columns=150

        colorscheme molokai
        " set guioptions-=m  "remove menu bar
        set guioptions-=T  "remove toolbar
        set guioptions-=L  
	    set guifont=Source_Code_Pro_Semibold:h10:cANSI:qDRAFT

        " text highlighting
        hi Visual  guifg=Black guibg=white
    endif

    " NOTE: specifically for vim in conemu 
    if !empty($CONEMUBUILD)
        set mouse=a
        set term=xterm
        " perhaps `nocompatible` is not required
        set nocompatible
        set t_Co=256
        let &t_AB="\e[48;5;%dm"
        let &t_AF="\e[38;5;%dm"

        let &showbreak = ' ~~ '

        " this part is pretty nice, because ConEmu can have its own colorscheme,
        " but as soon as Vim gets activated, this colorscheme will take over
        " currently using <Solarized Git> in ConEmu, molokai in Vim
        colorscheme monokai
        hi Visual  ctermfg=black ctermbg=magenta 
        hi Search ctermfg=yellow ctermbg=blue

        " weird options for using ConeEmu with xterm set
        " This will sometimes cause characters to be entered, when scrolling
        " really fast through a document. Must set "ttimeoutlen" to small value
        inoremap <Char-0x07F> <BS>
        nnoremap <Char-0x07F> <BS>
        cnoremap <Char-0x07F> <BS>

        let g:ctrlp_prompt_mappings = {
            \ 'PrtInsert("c")':       ['g)'],
            \ 'PrtBS()': ['<Char-0x07F>', '<c-h>']
        \ }
        
        " Must set "ttimeoutlen" to small value
        set timeoutlen=500 ttimeoutlen=50

        execute "set <M-j>=^[j"
        nnoremap <M-j> <C-w>j

        set <M-k>=^[k
        nnoremap <M-k> <C-w>k

        set <M-h>=^[h
        nnoremap <M-h> <C-w>h

        set <M-l>=^[l
        nnoremap <M-l> <C-w>l

    else
        " Else, if it's not ConEmu, I want this mapping to work with others
        " like Gvim, Powershell, etc. 
        " Basically, still in the Shell, just NOT conemu
        let g:ctrlp_prompt_mappings = {
            \ 'PrtInsert("c")':       ['g)'],
            \ }
    endif

else
    " visual studio
    nnoremap go viwP
    nnoremap / /\c

    " mapped before, now just remapping for vs
    onoremap l $
    onoremap h ^
endif     


" For going full screen in gvim (without Conemu :^/)
":autocmd GUIEnter * call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)
map <F11> :call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR> 





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




autocmd Filetype qf setlocal statusline=\ %n\ \ %f%=%L\ lines\ 

function! GetFileName()
    let f_path = split(expand('%:p'), '\')
    let aIndex = len(f_path)-1
    let fileName = f_path[aIndex]

    let @+ = fileName
    echo "copied " . "'" . fileName . "'" . " to clipboard"
endfunction

function! RandomMethod(searchPattern)
    call GrepInProjectUnderCursor(a:searchPattern)
endfunction

function! GrepInProject(regex)
    let f_path = split(expand('%:p:h'), '\')
    call remove(f_path, 5, len(f_path)-1)
    let cproject = join(f_path, "/")

    if IsClient() == 1
        :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . cproject . "' --include \\*.cs --include \\*.xaml --include \\*.resx --exclude-dir=obj --exclude-dir=bin"
    else
        :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . cproject . "' --include \\*.cs --include \\*.xml --exclude-dir=obj --exclude-dir=bin"
    endif

    :execute "cw"
    :execute "normal \,b"
endfunction









function! GrepInOtherProject(regex, projects)
" :grep -rn "ExpressionHelpers" C:/src/Admin/JW.Admin.Server/JW.Admin.Field.ServiceInterface C:/src/Admin/JW.Admin.Server/JW.Admin.Bethel.ServiceInterface --include \*.cs --include \*.xml --exclude-dir=obj --exclude-dir=bin

    let userProjects = split(a:projects, " ")

    let standardDirectories = "C:/src/Admin/JW.Admin.Server/JW.Admin.PlaceHolder.Requirements C:/src/Admin/JW.Admin.Server/JW.Admin.PlaceHolder.ServiceInterface C:/src/Admin/JW.Admin.Server/JW.Admin.PlaceHolder.ServiceModel"
    let grepDirectory = ""

    let toCount = len(userProjects) - 1
    for i in range(0, toCount) 
        let grepDirectory = grepDirectory . substitute(standardDirectories, "PlaceHolder", userProjects[i], "g")
        let grepDirectory = grepDirectory . " "
    endfor

    let grepDirectory = strpart(grepDirectory, 0, len(grepDirectory)-1)

    "project is supplied by user
    if IsClient() == 1
        echo "only works with server"
       " :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . grepDirectory . " --include \\*.cs --include \\*.xaml --include \\*.resx --exclude-dir=obj --exclude-dir=bin"
    else
        :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . grepDirectory . " --include \\*.cs --include \\*.xml --exclude-dir=obj --exclude-dir=bin"
    endif

    :execute "cw"
    :execute "normal \,b"
endfunction




function! GrepInSolution(regex, singleFilter)
    let f_path = split(expand('%:p:h'), '\')
    call remove(f_path, 4, len(f_path)-1)
    let solution = join(f_path, "/")

    let solution = strpart(solution, 0, len(solution)-6)

    let includeStr = ''

    let filters = split(a:singleFilter, ',')
    let toCount = len(filters) - 1

    for i in range(0, toCount) 
        let includeStr = includeStr . '--include \' . filters[i]
        let includeStr = includeStr . ' '
        let i = i + 1
    endfor

    if IsClient() == 1
        let solution = solution . "Client"
    else
        let solution = solution . "Server"
    endif
    
    :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . solution . "'" . " " . includeStr . " --exclude-dir=obj --exclude-dir=bin --exclude=*Resources.Designer.cs --exclude=*.feature.cs"

    :execute "cw"
    :execute "normal \,b"
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







function! ClipboardServer()
    let currentClipboard = @+

    exe "normal \,s"
    exe "normal g)"
endfunction

function! ClipboardClient()
    let currentClipboard = @+

    exe "normal \,c"
    exe "normal g)"
endfunction











nnoremap gni :call SimilarFile()<cr>
nnoremap guc :call UnderCursorInRepo("<C-R><C-W>")<cr>

function! SimilarFile()
    let currentFile = expand("%:t")
    let currentClipboard = @+

    if IsClient() == 1
        if currentFile =~ ".*View.xaml"
            " extract View.xaml piece of file name.
            let currentFile = strpart(currentFile, 0, len(currentFile)-5)
            let viewmodel = currentFile . "Model.cs"

            let @+ = viewmodel
        elseif currentFile =~ ".*ViewModel.cs"
            let currentFile = strpart(currentFile, 0, len(currentFile)-8)
            let view = currentFile . ".xaml"

            let @+ = view
        endif

        exe "normal \,c" 
        exe "normal g)"
    else
        if currentFile =~ ".cs"
            let currentFile = strpart(currentFile, 0, len(currentFile)-3)
        elseif currentFile =~ ".xml"
            let currentFile = strpart(currentFile, 0, len(currentFile)-4)
        end

        if currentFile =~ "Manager"
            let currentFile = strpart(currentFile, 0, len(currentFile)-7)

            if currentFile[0] == "I"
                let currentFile = strpart(currentFile, 1, len(currentFile))
            endif
        endif

        let @+ = currentFile
        exe "normal \,s"
        exe "normal g)"
    endif

    let @+ = currentClipboard
endfunction

function! UnderCursorInRepo(cursorWord)
    let currentClipboard = @+

    let word = a:cursorWord
    let @+ = word

    if IsClient() == 1
        exe "normal \,c"
    else
        exe "normal \,s"
    endif
    
    exe "normal g)"
    let @+ = currentClipboard
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













