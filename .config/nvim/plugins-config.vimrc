" Ale config 
let g:ale_javascript_eslint_use_global = 1
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['prettier-eslint']}
let g:ale_javascript_prettier_eslint_options = '--single-quote'
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
