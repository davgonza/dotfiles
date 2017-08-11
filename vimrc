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
nnoremap <leader>x :NERDTreeFind<cr>
nnoremap <leader>s :CtrlP C:\\SRC\\Admin\\JW.Admin.Server<cr>
nnoremap <leader>c :CtrlP C:\\SRC\\Admin\\JW.Admin.Client<cr>
nnoremap <leader>d :CtrlP C:\\SRC\\Admin<cr>
nnoremap <leader><tab> :NERDTreeFocus<cr>

" for focusing quickfix window
nnoremap <leader>q <c-w>b

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
onoremap q i"
onoremap s i'
onoremap m i(
vnoremap m i(
" nnoremap vm %vi(
" nnoremap cm %ci(
" nnoremap <cr> f(l
" inoremap S-CR> <CR>k
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
nnoremap g/ /<c-r>*<cr>
nnoremap <silent>gw- :exe "15winc >"<CR>
nnoremap <silent>gw[ :exe "15winc <"<CR>
nnoremap <silent>gw= :exe "15winc +"<CR>
nnoremap <silent>gw] :exe "15winc -"<CR>
nnoremap gif :e $MYVIMRC<cr>
nnoremap gqr :w<cr> :so %<cr> :nohl<cr> :echo<cr>
nnoremap gm vi(p
nnoremap gs vi'p
nnoremap gq vi"p
nnoremap gr @:
nnoremap g0 :wqa<cr>
nnoremap gy *Nciw
nnoremap gnd :cd %:p:h<CR>
nnoremap ga 1hi<space>
nnoremap gnf :let @+ = expand("%:p")<cr>


nnoremap gpu :call GrepInProjectUnderCursor("<C-R><C-W>")<left><left>
nnoremap gpf :call GrepInProjectFree("")<left><left>

nnoremap gsu :call GrepInSolution("<C-R><C-W>", "*.xaml")<left><left>
nnoremap gsf :call GrepInSolutionFree("", "*.cs")<left><left><left><left><left><left><left><left><left><left>

nnoremap gio :call GrepInOtherProject("<C-R><C-W>", "Bethel Field Education Persons")<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

nnoremap <leader>gs :call ClipboardServer()<cr>
nnoremap <leader>gc :call ClipboardClient()<cr>
nnoremap gnn :call GetFileName()<cr>


" nnoremap ger :call EasyFindReplace("<C-R><C-W>", "<C-R><C-W>")

nnoremap dgp d/)<CR> :nohl<cr>bbw
nnoremap dgb d/}<CR> :nohl<cr>bbw
nnoremap dgq d/"<CR> :nohl<cr>bbw

" nnoremap cgm c/)<CR> :nohl<cr>bbw
" nnoremap cgm c/\()\|}\)<CR> :nohl<cr>bbw


" less latency, between giv, and giiv. possibly change later
" nnoremap giiv F=f"lvi"
" nnoremap giic F=f"lci"

" vnoremap giv <esc>f=f"lvi"
" nnoremap giv f=f"1lvi"
" nnoremap gic f=f"1lci"


"" tests " another test " thing"







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
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'
Plugin 'farmergreg/vim-lastplace'

" Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'scrooloose/nerdcommenter'









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
" Setting the theme for VIM in powershell is kind of cumbersome, basically:
"————————————————————————————————————————————————————————————————————————————
" download registry file here: https://github.com/reideast/cmd-colors-monokai
" and then "regedit /s C:\SRC\even_folder\monokai.reg"
"   OR new way: just run the .reg file
" create shortcut to C:\Windows\System32\WindowsPowerShell\v1.0 on desktop




"————————————————————————————————————————————————————————————————————————————
" Remaps for plugins
"————————————————————————————————————————————————————————————————————————————
set number
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
let g:ctrlp_mruf_max = 500

" more plugin remaps
nnoremap gnh :silent Glog -- %<CR> :cw<CR> G

nnoremap gnm :call MethodHistory("<C-R><C-W>")
nnoremap gnl :call LineHistory()



function! LineHistory()
    let f_path = expand('%:p')

    :execute "silent Git! log -L " . line(".") . "," . line(".") . ":" . f_path
endfunction


function! MethodHistory(regex)
    let f_path = expand('%:p')

    :execute "silent Git! log -L :" . a:regex . ":" . f_path
endfunction


nnoremap gwo :call ClearAllBuffers()<cr>
function! ClearAllBuffers()
    :%bd|e#
endfunction



let loaded_matchparen = 1 










setlocal foldexpr=matchstr(substitute(getline(v:lnum),'\|.*','',''),'^.*/')==#matchstr(substitute(getline(v:lnum+1),'\|.*','',''),'^.*/')?1:'<1'







hi MatchParen term=bold ctermbg=Red
" unique colors, in powershell with monokai theme 
" white, yellow, red, cyan, green, darkgray, darkmagenta



"————————————————————————————————————————————————————————————————————————————
" vsvim (visual studio) and terminal keymaps
"————————————————————————————————————————————————————————————————————————————
" if this is a terminal (including mingw )
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

    if has('gui_running')
        colorscheme molokai
        set guioptions-=m  "remove menu bar
        set guioptions-=T  "remove toolbar
        set guioptions-=L  

        hi Visual  guifg=Black guibg=white
    endif
else
    " visual studio
    nnoremap go viwP
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




autocmd Filetype qf setlocal statusline=\ %n\ \ %f%=%L\ lines\ 

function! GetFileName()
    let f_path = split(expand('%:p'), '\')
    let aIndex = len(f_path)-1
    let fileName = f_path[aIndex]

    let @+ = fileName
    echo "copied " . "'" . fileName . "'" . " to clipboard"
endfunction

function! GrepInProjectFree(searchPattern)
    call GrepInProjectUnderCursor(a:searchPattern)
endfunction

function! GrepInProjectUnderCursor(regex)
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

















let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.xml$|\.cs$'







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




function! GrepInSolutionFree(searchPattern, additionalFileFilter)
    call GrepInSolution(a:searchPattern, a:additionalFileFilter)
endfunction

function! GrepInSolution(regex, additionalFileFilter)
    let f_path = split(expand('%:p:h'), '\')
    call remove(f_path, 4, len(f_path)-1)
    let solution = join(f_path, "/")

    let solution = strpart(solution, 0, len(solution)-6)

    if IsClient() == 1
        let solution = solution . "Client"

        if len(a:additionalFileFilter) >= 0
            :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . solution . "' --include \\" . a:additionalFileFilter . " --exclude-dir=obj --exclude-dir=bin"
        else
            :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . solution . "' --include \\*.cs --include \\*.xaml --include \\*.resx --exclude-dir=obj --exclude-dir=bin"
        endif
    else
        let solution = solution . "Server"

        if len(a:additionalFileFilter) >= 0
            :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . solution . "' --include \\" . a:additionalFileFilter . " --exclude-dir=obj --exclude-dir=bin"
        else
            :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . solution . "' --include \\*.cs --include \\*.xml --exclude-dir=obj --exclude-dir=bin"
        endif
    endif

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
    let aVar = @+
    exe "normal \,s" . aVar
endfunction

function! ClipboardClient()
    let aVar = @+
    exe "normal \,c" . aVar
endfunction













nnoremap gni :call SimilarFile()<cr>
nnoremap guc :call UnderCursorInRepo("<C-R><C-W>")<cr>

function! UnderCursorInRepo(cursorWord)
    let word = a:cursorWord

    if IsClient() == 1
        exe "normal \,c" . word
    else
        exe "normal \,s" . word
    endif
endfunction









function! SimilarFile()
    let currentFile = expand("%:t")

    if IsClient() == 1
        if currentFile =~ ".*View.xaml"
            " extract View.xaml piece of file name.
            let currentFile = strpart(currentFile, 0, len(currentFile)-5)
            let viewmodel = currentFile . "Model.cs"
            exe "normal \,c" . viewmodel
        elseif currentFile =~ ".*ViewModel.cs"
            let currentFile = strpart(currentFile, 0, len(currentFile)-8)
            let view = currentFile . ".xaml"
            exe "normal \,c" . view
        endif
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

        exe "normal \,s" . currentFile
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









nnoremap <leader>t :call AnotherTest()<CR>
function! AnotherTest()
    let userInput = 'BMM'
    let aListOfStuff = ['C:\src\what\something\yeah\BethelMemberManager.cs', 'C:\src\what\something\yeah\TrainingSchoolClassManager.cs', 'C:\src\what\something\yeah\DepartmentSummaryManager.cs']
    let array = []

    for thing in aListOfStuff
        let a = split(thing, '\')
        let aIndex = len(a)-1
        let fileName = a[aIndex]
        
        let searchSplitUp = filter(split(toupper(userInput), '\zs'), 'v:val =~ "\\w"')

        echo join(map(searchSplitUp, 'v:val . "[0-9a-z_]*"'), '')
        let theregex = join(map(searchSplitUp, 'v:val . "[0-9a-z_]*"'), '')

        if fileName =~# theregex
            cal add(array, thing)
        endif
     endfor

     echo array
endfunction








"let g:ctrlp_match_func = { 'match': 'TestFunction' }
function! TestFunction(items, str, limit, mmode, ispath, crfile, regex)
    let array = []
    let userInput = input(a:str)

    for thing in a:items
        let a = split(thing, '\')
        let aIndex = len(a)-1
        let fileName = a[aIndex]
        
        let searchSplitUp = filter(split(toupper(userInput), '\zs'), 'v:val =~ "\\w"')

        echo join(map(searchSplitUp, 'v:val . "[0-9a-z_]*"'), '')
        let theregex = join(map(searchSplitUp, 'v:val . "[0-9a-z_]*"'), '')

        if fileName =~# theregex
            cal add(array, thing)
        endif
     endfor

     return array
endfunction









nnoremap <expr> <leader>/ SearchCamelCase('/')
nnoremap <expr> <leader>? SearchCamelCase('?')
function! SearchCamelCase(dir)
    call inputsave()
    let ab = input(a:dir)
    call inputrestore()
    let searchSplitUp = filter(split(toupper(ab), '\zs'), 'v:val =~ "\\w"')
    if len(searchSplitUp) > 0
        let searchSplitUp[0] = '[' . searchSplitUp[0] . tolower(searchSplitUp[0]) . ']'
    end
    let @/ = '\C\<' . join(map(searchSplitUp, 'v:val . "[0-9a-z_]*"'), '') . '\>' 

    return a:dir . "\r"
endfunction



" let g:path_to_matcher = "C:/src/profiles/matcher/matcher"
" let g:ctrlp_match_func = { 'match': 'GoodMatch' }

function! GoodMatch(items, str, limit, mmode, ispath, crfile, regex)

  " Create a cache file if not yet exists
  let cachefile = ctrlp#utils#cachedir().'/matcher.cache'
  if !( filereadable(cachefile) && a:items == readfile(cachefile) )
    call writefile(a:items, cachefile)
  endif
  if !filereadable(cachefile)
    return []
  endif

  " a:mmode is currently ignored. In the future, we should probably do
  " something about that. the matcher behaves like "full-line".
  let cmd = g:path_to_matcher.' --limit '.a:limit.' --manifest '.cachefile.' '
  if !( exists('g:ctrlp_dotfiles') && g:ctrlp_dotfiles )
    let cmd = cmd.'--no-dotfiles '
  endif
  let cmd = cmd.a:str

  return split(system(cmd), "\n")

endfunction

" let g:ctrlp_match_func = { 'match': 'Function_Name' }
function! Function_Name(items, str, limit, mmode, ispath, crfile, regex)
" Arguments:
" |
" +- a:items  : The full list of items to search in.
" |
" +- a:str    : The string entered by the user.
" |
" +- a:limit  : The max height of the match window. Can be used to limit
" |             the number of items to return.
" |
" +- a:mmode  : The match mode. Can be one of these strings:
" |             + "full-line": match the entire line.
" |             + "filename-only": match only the filename.
" |             + "first-non-tab": match until the first tab char.
" |             + "until-last-tab": match until the last tab char.
" |
" +- a:ispath : Is 1 when searching in file, buffer, mru, mixed, dir, and
" |             rtscript modes. Is 0 otherwise.
" |
" +- a:crfile : The file in the current window. Should be excluded from the
" |             results when a:ispath == 1.
" |
" +- a:regex  : In regex mode: 1 or 0.

    return

    let userInput = input(a:str)

    let array = []
    for thing in a:items
        let a = split(thing, '\')
        let aIndex = len(a)-1
        let fileName = a[aIndex]
        
        let searchSplitUp = filter(split(toupper(userInput), '\zs'), 'v:val =~ "\\w"')
        let searchSplitUp[0] = '[' . searchSplitUp[0] . tolower(searchSplitUp[0]) . ']'

        let theregex = join(map(searchSplitUp, 'v:val . "[0-9a-z_]*"'), '')

        if fileName =~ theregex
            cal add(array, thing)
        endif
     endfor
  return array
endfunction

fu! What(lines, input, limit, mmode, ispath, crfile, regex)
  if a:input == ''
    " Clear matches, that left from previous matches
    cal clearmatches()
    " Hack to clear s:savestr flag in SplitPattern, otherwise matching in
    " 'tag' mode will work only from 2nd char.
    cal ctrlp#call('s:SplitPattern', '')
    let array = a:lines[0:a:limit]
    if a:ispath && !empty(a:crfile)
      cal remove(array, index(array, a:crfile))
    en
    return array
  el
    if a:regex
      let array = []
      let func = a:mmode == "filename-only" ? 's:matchfname' : 'match'
      for item in a:lines
        if call(func, [item, a:input]) >= 0
          cal add(array, item)
        endif
      endfor
      cal sort(array, ctrlp#call('s:mixedsort'))
      cal s:highlight(a:input, a:mmode, a:regex)
      return array
    endif
    " use built-in matcher if mmode set to match until first tab ( in other case
    " tag.vim doesnt work
    if a:mmode == "first-non-tab"
      let array = []
      " call ctrlp.vim function to get proper input pattern
      let pat = ctrlp#call('s:SplitPattern', a:input)
      for item in a:lines
        if call('s:matchtabs', [item, pat]) >= 0
          cal add(array, item)
        en
      endfo
      "TODO add highlight
      cal sort(array, ctrlp#call('s:mixedsort'))
      return array
    en

    let matchlist = s:cmatcher(a:lines, a:input, a:limit, a:mmode, a:ispath, a:crfile)
  en

  cal s:highlight(a:input, a:mmode, a:regex)

  return matchlist
endf

fu! s:cmatcher(lines, input, limit, mmode, ispath, crfile)
python << EOF
lines = vim.eval('a:lines')
searchinp = vim.eval('a:input')
limit = int(vim.eval('a:limit'))
mmode = vim.eval('a:mmode')
ispath = int(vim.eval('a:ispath'))
crfile = vim.eval('a:crfile')

if ispath and crfile:
  try:
    lines.remove(crfile)
  except ValueError:
    pass

try:
  # TODO we should support smartcase. Needs some fixing on matching side
  matchlist = fuzzycomt.sorted_match_list(lines, searchinp.lower(), limit, mmode)
except:
  matchlist = []
EOF
return s:pyeval("matchlist")
endf
