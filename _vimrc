"$Id$

"
" Vim Configuration
"

" Need to call pathogen to load each vim plugin
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"" toggle foldmethod=indent 
function ToggleFoldIdent()
    if &foldenable
       set nofoldenable
    else
       set foldenable
       set foldmethod=indent
    endif
endfunction

" terminal title
set title

" scroll screen three lines sooner
set scrolloff=3

" tab expansion
set expandtab
set tabstop=4
set shiftwidth=4

" this isnt vi
set nocompatible

" stop beeping
set visualbell

" smart matching 
set smartcase
set ignorecase

" history
set history=5000

" filename completion
set wildmenu
set wildmode=list:longest
set scrolloff=5

" this fixes some problems when using vim with screen
set term=xterm

" automagically detect filetype and load plugins 
filetype plugin on

" disable folds
set nofoldenable

" syntax highlighting on
syn on

" toggle foldmethod=indent
nmap <F3> :call ToggleFoldIdent()<CR>

" quickly cwd to dir of open file
nmap <silent> <Leader>cd :cd %:p:h<CR>

" colors
set background=light

"
" Plugins Config

" SuperTab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" pep8
let g:pep8_map='<leader>8'
