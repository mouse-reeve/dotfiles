execute pathogen#infect()

" ----------------------------------  General
syntax on                           " Show syntax highlighting
match ErrorMsg '\s\+$'              " Highlight trailing whitespace
set number
set hlsearch                        " Highlight search results
set incsearch                       " Highlight search as it's typed
set wildmode=longest,list,full
set wildmenu                        " Tab completion in the command line
set scrolloff=2                     " Keep two lines from edge of screen
set backspace=indent,eol,start
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
let g:syntastic_check_on_wq = 1
let g:syntastic_java_javac_config_file_enabled = 1
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
set suffixes+=.pyc,.pyo             " Ignore compuled Python
set wildignore+=*.pyc,*.pyo
set suffixes+=.class                " Ignore Java class files
set wildignore+=local/**            " For virtualenv
set wildignore+=build/**

if has("eval")
    let g:is_posix = 1              " Format shell scripts
endif

" ----------------------------------  Tab complete
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"
