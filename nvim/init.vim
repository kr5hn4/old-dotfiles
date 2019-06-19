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
  Plug 'carlitux/deoplete-ternjs'
  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'mbbill/undotree'
  Plug 'wincent/terminus'
  Plug 'airblade/vim-gitgutter'
  Plug 'mileszs/ack.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'SirVer/ultisnips'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-sensible'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ap/vim-css-color'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'elzr/vim-json'
  Plug 'fatih/vim-go'
  Plug 'flazz/vim-colorschemes'
  Plug 'godlygeek/tabular'
  Plug 'gregsexton/MatchTag'
  Plug 'honza/vim-snippets'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'mattn/emmet-vim'
  Plug 'metakirby5/codi.vim'
  Plug 'mhinz/vim-startify'
  Plug 'othree/html5.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'rust-lang/rust.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ervandew/supertab'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'w0rp/ale'
  Plug 'wellle/targets.vim'
  Plug 'othree/html5.vim'
call plug#end()

source ~/.config/nvim/general.vimrc
source ~/.config/nvim/keymaps.vimrc
source ~/.config/nvim/options.vimrc
source ~/.config/nvim/plugins-config.vimrc
source ~/.config/nvim/statusLine.vimrc
