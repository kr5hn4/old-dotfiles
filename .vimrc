"""""""""""""""""""""""""""""""
"Author:kr5hn4"""""""""""""""""
"""""""""""""""""""""""""""""""
" Ale specific vars
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_sign_column_always = 1
" Ale end

" set encoding and guifont to make vim devicons work
set encoding=utf8
set guifont=SauceCodePro\ Nerd\ Font\ Regular\ 14
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
" deoplete config
let g:deoplete#enable_at_startup = 1
" disable autocomplete
"let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
if has("gui_running")
    inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()
else
    inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
endif

" UltiSnips config
inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set number "show line number
set relativenumber "show relative line numbers
set ruler
set backspace=indent,eol,start
set background=dark
" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

call plug#begin()

  "add plugins in here
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-surround'
  Plug 'airblade/vim-gitgutter'
  Plug 'NLKNguyen/papercolor-theme'
  "Plug 'mattn/emmet-vim'
  "Plug 'bling/vim-airline'
  "Plug 'Zenburn'
  "Plug 'scrooloose/nerdcommenter'
  "Plug 'tmhedberg/matchit'
  "Plug 'jiangmiao/auto-pairs'
  "Plug 'easymotion/vim-easymotion'
  Plug 'ryanoasis/vim-devicons'
"  Plug 'neomake/neomake'
  Plug 'easymotion/vim-easymotion'
  Plug 'mhinz/vim-startify'
  Plug 'SirVer/ultisnips'
  Plug 'airblade/vim-gitgutter'
  Plug 'w0rp/ale'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'othree/html5.vim'
  Plug 'elzr/vim-json'
  Plug 'ap/vim-css-color'
  Plug 'tpope/vim-markdown'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'mattn/emmet-vim'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'honza/vim-snippets'
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
  Plug 'pangloss/vim-javascript'
  Plug 'gregsexton/MatchTag'
call plug#end()
"enable neomake
"autocmd! BufEnter,BufWritePost * Neomake

colorscheme PaperColor

""""""""""""""""""""""""""""""
"vim-airline"                "
""""""""""""""""""""""""""""""
let g:airline_powerline_fonts=1
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
set laststatus=2
set lazyredraw
""""""""""""""""""""""""""""
"""matchit""""""""""""""""""
""""""""""""""""""""""""""""
filetype plugin on 
""""""""""""""""""""""""""""

