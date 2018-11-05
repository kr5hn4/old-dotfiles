" Change cursor style dependent on mode
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif

" Set space bar as leader key
let mapleader = "\<Space>"

" Hide statusbar in terminal mode
augroup TerminalStuff
  au! 
  autocmd TermOpen * setlocal nonumber norelativenumber laststatus=0
augroup END

" Hide tmux status bar when vim is opened inside tmux
autocmd VimEnter,VimLeave * silent !tmux set status
