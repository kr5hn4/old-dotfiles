" Ale config 
let g:ale_javascript_eslint_use_global = 0
let g:ale_linters = {'javascript': ['eslint']}
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'css': ['prettier'],
" \}
let g:ale_fixers = {'javascript': ['prettier_eslint']}
" let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'
" let g:ale_javascript_prettier_eslint_options = '--single-quote --trailing-comma es5'
let g:ale_javascript_prettier_eslint_use_global = 0
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
" Ale end

" UltiSnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Airline config
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
set completeopt=longest,menuone,preview


" NertTree config
" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" map a specific key or shortcut to open NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" jump to the main window.
" autocmd VimEnter * wincmd p

let NERDTreeMinimalUI = 1
let g:webdevicons_enable = 0
let g:NERDTreeWinSize=20

" Set up supertab for tab completion
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>" 
" Close preview window automatically
let g:SuperTabClosePreviewOnPopupClose = 1


" Limelight
let g:limelight_conceal_ctermfg = 'gray'
" autocmd VimEnter * Limelight

" Goyo
let g:goyo_linenr=1

" Make ack use ag for searching
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" Default fzf layout
" - down / up / left / right
" let g:fzf_layout = { 'up': '~40%' }

" Reverse the layout to make the FZF list top-down
let $FZF_DEFAULT_OPTS='--layout=reverse'

" Using the custom window creation function
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

" Function to create the custom floating window
function! FloatingFZF()
  " creates a scratch, unlisted, new, empty, unnamed buffer
  " to be used in the floating window
  let buf = nvim_create_buf(v:false, v:true)

  " 90% of the height
  let height = float2nr(&lines * 0.9)
  " 60% of the height
  let width = float2nr(&columns * 0.6)
  " horizontal position (centralized)
  let horizontal = float2nr((&columns - width) / 2)
  " vertical position (one line down of the top)
  let vertical = 1

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height
        \ }

  " open the new window, floating, and enter to it
  call nvim_open_win(buf, v:true, opts)
endfunction
