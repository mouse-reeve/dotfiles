" --------------------------  General
syntax on
match ErrorMsg '\s\+$'      " Highlight trailing whitespace
set number
set hlsearch                " Highlight search results
set colorcolumn=81          " Red highlighting for culmn 81
set wildmenu                " Tab completion in the command line
set scrolloff=2             " Keep two lines from edge of screen

" --------------------------  Tabbing
set autoindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
filetype indent on

" --------------------------  Editing code
set suffixes+=.pyc,.pyo     " Ignore compuled Python
set wildignore+=*.pyc,*.pyo
set suffixes+=.class        " Ignore Java class files
set wildignore+=local/**    " For virtualenv
set wildignore+=build/**

if has("eval")
    let g:is_posix = 1      " Format shell scripts
endif

" --------------------------  Commands
command! CountMatches                   %s///n
command! NukeTrailingWhitespace         %s/\s\+$//
command! FindNonAscii                   normal /[^\x00-\x7f]<cr>

