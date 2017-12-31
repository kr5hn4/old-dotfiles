"""""""""""""""""""""""""""""""
"Author:kr5hn4"""""""""""""""""
"""""""""""""""""""""""""""""""

call plug#begin()
  "add plugins in here
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-surround'
  Plug 'mattn/emmet-vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'flazz/vim-colorschemes'
  Plug 'mhinz/vim-startify'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'airblade/vim-gitgutter'
  Plug 'w0rp/ale'
  Plug 'othree/html5.vim'
  Plug 'elzr/vim-json'
  Plug 'ap/vim-css-color'
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
  Plug 'pangloss/vim-javascript'
  Plug 'gregsexton/MatchTag'
  Plug 'tomtom/tcomment_vim'
  Plug 'rust-lang/rust.vim'
  Plug 'Numkil/ag.nvim'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'fatih/vim-go'
  Plug 'godlygeek/tabular'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'vim-airline/vim-airline'
call plug#end()

source ~/.config/nvim/options.vimrc
source ~/.config/nvim/keymaps.vimrc
source ~/.config/nvim/plugins.vimrc
source ~/.config/nvim/statusLine.vimrc
