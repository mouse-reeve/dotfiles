execute pathogen#infect()

set backspace=indent,eol,start
" ----------------------------------  General
syntax on                           " Show syntax highlighting
match ErrorMsg '\s\+$'              " Highlight trailing whitespace
set number
set hlsearch                        " Highlight search results
set incsearch                       " Highlight search as it's typed
set wildmenu                        " Tab completion in the command line
set scrolloff=2                     " Keep two lines from edge of screen
filetype plugin on

" ----------------------------------  Status bar
set laststatus=2                    " Keep the status bar visible
set statusline=
set statusline+=%<%f                " Show status filename
set statusline+=\                   " Space
set statusline+=%r                  " Read only status

" ----------------------------------  Tabbing
set autoindent
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
filetype indent on

" ----------------------------------  Editing code
let g:syntastic_html_checkers = []  " Don't try to validate html
set statusline+=%#warningmsg#
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set suffixes+=.pyc,.pyo             " Ignore compiled Python
set wildignore+=*.pyc,*.pyo
set suffixes+=.class                " Ignore Java class files
set wildignore+=local/**            " For virtualenv
set wildignore+=build/**

if has("eval")
    let g:is_posix = 1              " Format shell scripts
endif

" ----------------------------------  Tab complete
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
