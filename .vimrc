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
set statusline=%<%F\ %h%m%r%=%-14.(%l/%L%V%)\ %P
let mapleader = ","
let &showbreak = ' ?? '
let &showbreak = '>>>>'
set undodir=~/tmp//
set backupdir=~/tmp//
set directory=~/tmp//
set wrap
set cpo=n
set scrolloff=3
set autoread
autocmd SwapExists * let v:swapchoice = "o"                                            
" let &statusline .= '%{(&readonly || !&modifiable) ? " <EE><82><A2>" : ""} <EE><82><B1>'

syntax on                       " turn syntax highlighting on by default
filetype off
behave mswin

nnoremap s :w<cr>
nnoremap g9s :w !sudo tee %<CR>
nnoremap <space> :

" clipboard
" let @+ =
"


nnoremap <leader>a gg"*yG<c-o><c-o>zz
nnoremap <leader>b <c-w>p
nnoremap <leader>e :nohl<cr> :echo<cr>
nnoremap <leader>f :b#<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>
nnoremap <leader>v :CtrlPBuffer<cr>
nnoremap <leader>z :NERDTreeFind<cr> :redraw!<cr>
nnoremap <leader>s :CtrlP C:\\SRC\\Admin\\JW.Admin.Server<cr>
nnoremap <leader>c :CtrlP C:\\SRC\\Admin\\JW.Admin.Client<cr>
nnoremap <leader>d :CtrlP C:\\SRC\\Admin<cr>
nnoremap <leader>gg :CtrlP C:\\SRC\\symlinks<cr>
map <C-k><C-d> <plug>NERDCommenterToggle

" for focusing quickfix window
nnoremap <leader>q <c-w>b
nnoremap <C-p> :lprevious<CR>
nnoremap <C-n> :lnext<CR>

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


let &grepprg='"C:/Users/DaveGonzalez/AppData/Local/Programs/Git/usr/bin/grep.exe" -rn'



" global variables
let g:isConEmu = !empty($CONEMUBUILD)








"????????????????????????????????????????????????????????????????????????????
" CUSTOM 'G' MAPS
"????????????????????????????????????????????????????????????????????????????
imap jj <esc>
nnoremap gwl <C-w>v
nnoremap gwj <c-w>s
nnoremap gwu <c-w>q
nnoremap gyu :tabclose<CR>

nnoremap g/ /\\c<c-r>*<cr>
nnoremap <silent>gw- :exe "15winc >"<CR>
nnoremap <silent>gw[ :exe "15winc <"<CR>
nnoremap <silent>gw= :exe "15winc +"<CR>
nnoremap <silent>gw] :exe "15winc -"<CR>
" nnoremap gif :e $MYVIMRC<cr>
nnoremap gif :e ~/.vimrc<cr>
nnoremap gyr :w<cr> :so %<cr> :nohl<cr> :echo<cr>
nnoremap gr @:
nnoremap g0 :wqa<cr>
nnoremap gy *Nciw
nnoremap gnd :cd %:p:h<CR>
nnoremap ga 1hi<space>
nnoremap gnf :let @+ = expand("%:p")<cr>
nnoremap g9n :sav ~/notes/.txt<left><left><left><left>
nnoremap g9t :tabnew<CR>
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap g98 :call EasyFindReplace("", "")
" reset encoding
nnoremap g9e :set bomb<CR>
nnoremap g6g :e C:/src/Admin/JW.Admin.Server/JW.Admin.DocumentManagement.ServiceInterface/Documents/DocumentRecordSummaryManager.cs<CR>

" format table
nnoremap g9f :%!column -t
nnoremap grr ggVGP
nnoremap gri :set tabstop=2<CR> :set softtabstop=0<CR> :set expandtab<CR> :set shiftwidth=2<CR> :set smarttab<CR>gg=G



"nnoremap g9g :call NewFileName()<CR>
"function! NewFileName()
    "let currentTime = strftime('%H-%M-%S')
    ":tabnew

    "let fFileName = '~/notes/newnote' . '/' . currentTime
    ":echo fFileName . 'What'
"endfunc

nnoremap g<SPACE>b :Gblame<CR> <C-w>o


nnoremap gp :call GrepInProject("")<left><left>

nnoremap <expr> gs IsClient() == 1 ? ":call GrepInSolution('', '*.cs,*.xaml')<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>" : ":call GrepInSolution('', '*.hcg,*.cs')<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>"

nnoremap gio :call GrepInOtherProject("<C-R><C-W>", "Bethel Field Education Persons")<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

nnoremap <leader>gs :call ClipboardServer()<cr>
nnoremap <leader>gc :call ClipboardClient()<cr>
nnoremap <leader>ga :call ToggleHiddenAll()<CR> :echo<cr>
nnoremap <leader>lc :let @+=@:<CR>

nnoremap gnn :call GetFileName()<cr>
nnoremap gw8 <C-w>o

" make string a cool variable name
nnoremap gdr :.s/\\(^\\\|\\([A-z]\\)\\@<=\\).\\{-}\\($\\\|[A-z]\\)\\@=//g<cr> :nohl<cr> :echo<cr>



nnoremap dgp d/)<CR> :nohl<cr>bbw
nnoremap dgb d/}<CR> :nohl<cr>bbw
nnoremap dgq d/"<CR> :nohl<cr>bbw
nnoremap dg; d/;<CR> :nohl<cr>bbw

nnoremap cgp c/)<CR> <ESC>:nohl<cr>xi
nnoremap cgb c/}<CR> <ESC>:nohl<cr>xi
nnoremap cgq c/"<CR> <ESC>:nohl<cr>xi
nnoremap cg; c/;<CR> <ESC>:nohl<cr>xi
nnoremap gfl :%s/\\r\\n/



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
    







    
    " git clone https://github.com/qualiabyte/vim-colorstepper.git C:/Users/DaveGonzalez/vimfiles/bundle/colorstepper/colorstepper.vim
    source ~/vimfiles/bundle/colorstepper/colorstepper.vim/colorstepper.vim




    set rtp+=~/vimfiles/bundle/Vundle.vim/
    set rtp+=~/fzf
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


Plugin 'tpope/vim-dispatch'
if has("win32")
    Plugin 'vim-syntastic/syntastic'
endif
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

" only load omnisharp, when not inside conemu
" actually, please ignore omnisharp for now. thanks
"if empty($CONEMUBUILD)
    "Plugin 'OmniSharp/omnisharp-vim'
"endif

" only load eleline when inside windows environment
if has("win32")
    " Plugin 'liuchengxu/eleline.vim'

    let g:eleline_slim = 0
endif

Plugin 'inkarkat/vim-spellcheck'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'shinglyu/vim-codespell'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'








call vundle#end()                    " required
filetype plugin indent on            " required




let g:OmniSharp_server_path = 'C:\src\omnisharp\OmniSharp.exe'
let g:OmniSharp_start_server = 0


augroup omnisharp_commands
    autocmd!

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <buffer> <F5> :wa!<CR>:OmniSharpBuild<CR>
    " Builds can also run asynchronously with vim-dispatch installed
    " autocmd FileType cs nnoremap <buffer> <Leader>b :wa!<CR>:OmniSharpBuildAsync<CR>

    " Show type information automatically when the cursor stops moving
    " autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    autocmd BufWritePost *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    " autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    " Cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <buffer> <Leader>x  :OmniSharpFixIssue<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>ty :OmniSharpDocumentation<CR>
    "autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    "autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>


    " Navigate up and down by method/property/field
    " autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    " autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Add syntax highlighting for types and interfaces
nnoremap <Leader>th :OmniSharpHighlightTypes<CR>


"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch

"Super tab settings
let g:SuperTabDefaultCompletionType = 'context'
"let g:SuperTabContextDefaultCompletionType = "<c-n>"
"let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-n>","&completefunc:<c-n>"]
let g:SuperTabClosePreviewOnPopupClose = 1




set completeopt-=preview




if has('syntastic') && has('win32')
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
	let g:syntastic_cs_checkers = ["mcs"]
endif

"Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
set omnifunc=OmniSharp#Complete
let g:OmniSharp_timeout = 10

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
map gx :call HandleURL()<cr>





" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif





  
nnoremap <C-Space> :CtrlP<CR>






"????????????????????????????????????????????????????????????????????????????
" OVERWRITES DEFAULT COPY + PASTE BEHAVIOUR
"???????????????????????????????????????????????????????????????????????????
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
vnoremap P "_dP
map <leader>y "*y


"????????????????????????????????????????????????????????????????????????????
" Colors + Themes
"????????????????????????????????????????????????????????????????????????????
" Setting the theme for Vim in powershell is kind of cumbersome, basically:
"????????????????????????????????????????????????????????????????????????????
" download registry file here: https://github.com/reideast/cmd-colors-monokai
" and then "regedit /s C:\SRC\even_folder\monokai.reg"
"   OR new way: just run the .reg file
" create shortcut to C:\Windows\System32\WindowsPowerShell\v1.0 on desktop




"????????????????????????????????????????????????????????????????????????????
" Remaps for plugins
"????????????????????????????????????????????????????????????????????????????

" looks weird, but it only remaps in normal mode
let g:NumberToggleTrigger="<C-h>"


let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

let g:ctrlp_follow_symlinks=1

if !empty(glob("C:/Users/DaveGonzalez/AppData/Local/Programs/Git/usr/bin/grep.exe"))
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others | "C:/Users/DaveGonzalez/AppData/Local/Programs/Git/usr/bin/grep.exe" -v "xaml.cs$"']
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others | grep -v "xaml.cs$"']
endif


" let g:ctrlp_user_command = 'fd --type f --color=never "" %s'

"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(C:\src\Admin\JW.Admin.Client\JW.Admin.Accounting.Client|C:\src\Admin\JW.Admin.Client\JW.Admin.Accounting.Client.Requirements|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ 'link': 'some_bad_symbolic_links',
  "\ }
  "
let g:ctrlp_custom_ignore = {
    \ 'dir': 'JW.Admin.Accounting.Client.Requirements$'
\ }
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/](JW.Admin.Accounting.Client$\|JW.Admin.Accounting.Client.Requirements$\|node_modules)'
  "\ }
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"let g:ctrlp_user_command = 'find %s -type f ""'
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_by_filename = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_lazy_update = 5
let NERDTreeIgnore = ['\.xaml.cs$', '.*pdb.*', '.*Tests.*', '.*\bin.*', '.*obj.*', '.*feature.cs.*']
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let NERDTreeShowHidden=1
" au VimEnter * RainbowParentheses
au VimEnter * execute "normal \<C-h>"
au VimEnter * execute "set number relativenumber"

let g:rainbow#max_level = 16
let g:ctrlp_mruf_max = 4000



let g:ctrlp_match_window = 'results:100' " overcome limit imposed by max height




" more plugin remaps
" nnoremap gnh :silent Glog -- %<CR> :cw<CR>
nnoremap gnh :call FileHistory()<CR>
nnoremap gi :call DiffFileHistory()<CR>

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

    :execute "silent Glog -200 -- " . filePath
    :execute "cw"
    :execute "normal ,b"
endfunction






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
if &term == 'win32' || &term == 'xterm-256color' || has('unix') || has('gui_running')

    " used to be nnoremap go viw"0p
    nnoremap go viw"_dP

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
        set title titlestring=%(%{expand(\"%:t\")}%)\ -\ VIM

        " colorscheme molokai

        " colorscheme delek
        " colorscheme jellybeans
        " colorscheme torte
        colorscheme delek

        set guioptions-=T  "remove toolbar
        set guioptions-=L
        set guioptions-=m
	    set guifont=Source_Code_Pro_Semibold:h8:cANSI:qDRAFT
        set guifont=DroidSansMono_Nerd_Font_Mono:h8:cANSI:qDRAFT

        " text highlighting
        hi Visual  guifg=white guibg=magenta
    
        " reset it, but only for gvim
        nnoremap go viwP
    endif

    " NOTE: specifically for vim in conemu
    if g:isConEmu
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

        let &showbreak = ' ~~ '



        :hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen

        let g:ctrlp_prompt_mappings = {
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

        set term=win32

        " this part is pretty nice, because ConEmu can have its own colorscheme,
        " but as soon as Vim gets activated, this colorscheme will take over
        " currently using <Solarized Git> in ConEmu, molokai in Vim
        " colorscheme jellybeans
        "
        " protip... when messing around with term, and such maybe try just
        " rearranging where you assign colorscheme... could save you bunch
        colorscheme torte
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

        set listchars=tab:?\ ,space:?
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










function! GrepInProject(regex)
    let f_path = split(expand('%:p:h'), '\')
    call remove(f_path, 5, len(f_path)-1)
    let cproject = join(f_path, "/")

    if IsClient() == 1
        :execute "silent lgrep -rn " . "'" . a:regex . "'" . ' ' . "'" . cproject . "' --include \\*.cs --include \\*.xaml --include \\*.resx --exclude-dir=obj --exclude-dir=bin --exclude-dir=bin --exclude=*.g.i.cs --exclude=*.g.cs --exclude=*Resources.Designer.cs --exclude=*.feature.cs"
    else
        :execute "silent lgrep -rn " . "'" . a:regex . "'" . ' ' . "'" . cproject . "' --include \\*.cs --include \\*.hcg --exclude-dir=obj --exclude-dir=bin --exclude-dir=bin --exclude=*.g.i.cs --exclude=*.g.cs --exclude=*Resources.Designer.cs --exclude=*.feature.cs"
    endif

    :execute "lopen"
    :execute "normal \,b"
endfunction



function! GrepInFolder2(regex, fileType)
    let currentFolder = expand('%:p:h')

    let includeStr = includeStr . '--include \' . fileType

    if IsClient() == 1
        :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . currentFolder . "' --include \\*.cs --include \\*.xaml --include \\*.resx --exclude-dir=obj --exclude-dir=bin --exclude-dir=bin --exclude=*.g.i.cs --exclude=*.g.cs --exclude=*Resources.Designer.cs --exclude=*.feature.cs"
    else
        :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . cproject . "' --include \\*.cs --include \\*.hcg --exclude-dir=obj --exclude-dir=bin --exclude-dir=bin --exclude=*.g.i.cs --exclude=*.g.cs --exclude=*Resources.Designer.cs --exclude=*.feature.cs"
    endif

    :execute "cw"
    :execute "normal \,b"
endfunction




function! GrepInFolder(folder, regex, type)

    let includeStr = ''
    let includeStr = includeStr . '--include \' . a:type

    :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . "'" . a:folder . "' --include \\*.cs --include \\*.xaml --include \\*.resx --exclude-dir=obj --exclude-dir=bin --exclude-dir=bin --exclude=*.g.i.cs --exclude=*.g.cs --exclude=*Resources.Designer.cs --exclude=*.feature.cs"

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

    :execute "silent lgrep -rn " . "'" . a:regex . "'" . ' ' . "'" . solution . "'" . " " . includeStr . " --exclude-dir=obj --exclude-dir=bin --exclude=*.g.i.cs --exclude=*.g.cs --exclude=*Resources.Designer.cs --exclude=*.feature.cs"

    :execute "lopen"
    :execute "normal \,b"
endfunction









function! GrepInOtherProject(regex, projects)
" :grep -rn "ExpressionHelpers" C:/src/Admin/JW.Admin.Server/JW.Admin.Field.ServiceInterface C:/src/Admin/JW.Admin.Server/JW.Admin.Bethel.ServiceInterface --include \*.cs --include \*.hcg --exclude-dir=obj --exclude-dir=bin

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
        :execute "silent grep -rn " . "'" . a:regex . "'" . ' ' . grepDirectory . " --include \\*.cs --include \\*.hcg --exclude-dir=obj --exclude-dir=bin"
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





" ApplicantManager.cs

function! ClipboardServer()
    let currentClipboard = @+

    exe "normal \,s"

    if g:isConEmu
      exe "normal \<Insert>"
    else
      exe "normal g)"
    endif

endfunction

function! ClipboardClient()
    let currentClipboard = @+

    exe "normal \,c"

    if g:isConEmu
      exe "normal \<Insert>"
    else
      exe "normal g)"
    endif
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

        if g:isConEmu
          exe "normal \<Insert>"
        else
          exe "normal g)"
        endif
    else
        if currentFile =~ ".cs"
            let currentFile = strpart(currentFile, 0, len(currentFile)-3)
        elseif currentFile =~ ".hcg"
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

        if g:isConEmu
          exe "normal \<Insert>"
        else
          exe "normal g)"
        endif
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

    if g:isConEmu
      exe "normal \<Insert>"
    else
      exe "normal g)"
    endif

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

" Triple scrolling "speed"
nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>




" TODO: Write plugin for fast copy+paste by taking what lines they've sent in,
" and pasting them where cursor is currently


" TODO: Make function, for easy execution of shell commands, (e.g. escape %,
" insert bang, with double quotes
"
" read !git log --stat --since="1 Day Ago" --graph --pretty=format:"\%C(yellow)\%h\%Creset ------------\%C(red)\%d\%Creset \%C(magenta)(\%s) \%C(dim green)(\%cr) \%C(cyan)<\%an>\%Creset" --abbrev-commit --date=relative -30)


function! What()
    let f = ScreenFilename()
    let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
    for line in readfile(f)
        for character in line
            echo character

        endfor
        "let line = getline(".") 
        "if len(sizepos) == 5 && sizepos[0] == vim_instance
          "silent! execute "set columns=".sizepos[1]." lines=".sizepos[2]
          "silent! execute "winpos ".sizepos[3]." ".sizepos[4]
          "return
        "endif
    endfor

endfunction





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

  function! RefreshScreen()
    :execute "normal gg"
    :execute "normal G"
    :execute "normal ^b"
    :execute "normal V"
    :execute "normal 100j"
  endfunction



" notepad colorscheme
"autocmd BufNewFile,BufRead *.txt   set guifont=Consolas:h15:cANSI:qDRAFT|colorscheme zellner|set lines=20 columns=100

" xaml syntax highlighting
autocmd BufNewFile,BufRead *.xaml set filetype=xml

" html
au BufReadPost *.*html set syntax=html



" from help

" to use:
" :set tabline=%!MyTabLine()

set tabline=%!MyTabLine()

function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T'

    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999Xclose'
  endif

  return s
endfunction

function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let curFilePath = bufname(buflist[winnr - 1])

  let pathList = ""

  if curFilePath =~ '.*\\.*'
    let pathList = split(curFilePath, '\')
  else
    let pathList = split(curFilePath, '/')
  endif

  if len(pathList) == 0
    return "*new*"
  endif

  let fileName = pathList[len(pathList)-1]

  return fileName
endfunction






set guitablabel=%t 












nnoremap gib :call BibleLookup("")<LEFT><LEFT>

function BibleLookup(lookup)
  let lookup = a:lookup
  let fullDir = "C:/src/misc/bible-text-files/"

  let splitByNumbers = split(lookup, '[A-z]\|,')
  let verse = splitByNumbers[len(splitByNumbers)-1]
  let chapter = splitByNumbers[len(splitByNumbers)-2]

  let splitByGroupedLetters = split(lookup, '[0-9]')

  let unsanitizedBook = splitByGroupedLetters[0]

  " sanitize
  let sanitized = toupper(unsanitizedBook[0]) . strpart(unsanitizedBook, 1, len(unsanitizedBook))

  " combine
  let book = ((len(splitByNumbers) == 2) ? "" : splitByNumbers[0]) . sanitized
  let allBibleBookFileNames = systemlist('dir /b C:\src\misc\bible-text-files')

  for fileName in allBibleBookFileNames
    let trimmed = strpart(fileName, 7, 100)
    let trimmed = fnamemodify(trimmed, ":r")

    if trimmed =~ (book . "_E")
      let fullDir = fullDir . fileName

      "echo "it worked"

      break
    endif
  endfor

  let command = ":tabnew " . substitute(fullDir, '
', '', '')
  execute command

  execute "normal G"

  let search = "?Chapter \\<" . chapter . "\\>"
  execute search

  let search = "/\\<" . verse . "\\>"
  execute search

  execute "normal f" . verse

endfunction




"Chapter 14
"1 Now in the days of Am'raphel king of Shi'nar, Ar'ioch king of Ella'sar, Chedorlao'mer king of E'lam, and Ti'dal king of Goi'im, 2 these made war with Be'ra king of Sod'om, Bir'sha king of Gomor'rah, Shi'nab king of Ad'mah, Sheme'ber king of Zeboi'im, and the king of Be'la, that is, Zo'ar. 3 All of these joined forces at the Valley of Sid'dim, that is, the Salt Sea.









" HACK: try applying conemu schemes at the end
if g:isConEmu
    hi Visual  ctermfg=black    ctermbg=darkmagenta
    hi Search  ctermfg=black    ctermbg=darkcyan
    hi Comment ctermfg=darkgray ctermbg=none cterm=none guifg=#75715e guibg=NONE gui=NONE
endif








