"""""""""""""""""""""""""""""""
"Author:kr5hn4"""""""""""""""""
"""""""""""""""""""""""""""""""

call plug#begin()
  "add plugins in here
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
  " Plug 'airblade/vim-gitgutter'
  Plug 'SirVer/ultisnips'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ap/vim-css-color'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'elzr/vim-json'
  Plug 'fatih/vim-go'
  Plug 'flazz/vim-colorschemes'
  Plug 'godlygeek/tabular'
  Plug 'gregsexton/MatchTag'
  Plug 'honza/vim-snippets'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'mattn/emmet-vim'
  Plug 'metakirby5/codi.vim'
  Plug 'mhinz/vim-startify'
  Plug 'othree/html5.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'rust-lang/rust.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'w0rp/ale'
  Plug 'wellle/targets.vim'
call plug#end()

source ~/.config/nvim/general.vimrc
source ~/.config/nvim/keymaps.vimrc
source ~/.config/nvim/options.vimrc
source ~/.config/nvim/plugins-config.vimrc
source ~/.config/nvim/statusLine.vimrc
