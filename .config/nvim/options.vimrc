colorscheme gruvbox

set autochdir                   " Automatically change the current working directory
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set guifont=SauceCodePro\ Nerd\ Font\ 12 
set number                      " Show line number
set relativenumber              " Show relative line numbers
set ruler
set backspace=indent,eol,start
set background=dark
set laststatus=2                " Enable status bar all the time
set inccommand=nosplit          " Show effects of command incrementally as you type
set autoread                    " Automatically read file changes if it has been changed by some other program
set cursorline                  " Highlight the line on which the cursor is
" set foldopen=all              " Automatically open folds when the cursor is on them
" set foldclose=all             " Automatically close folds when cursor moves out of the fold area

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
" Uncomment the next line to make Vim more Vi-compatible
"set compatible

syntax on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

set showcmd                     " Show (partial) command in status line.
set showmatch                   " Show matching brackets.
set ignorecase                  " Do case insensitive matching
set smartcase                   " Do smart case matching
set incsearch                   " Incremental search
"set autowrite                  " Automatically save before commands like :next and :make
"set hidden                     " Hide buffers when they are abandoned
set mouse=a                     " Enable mouse usage (all modes)

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

filetype plugin on 
