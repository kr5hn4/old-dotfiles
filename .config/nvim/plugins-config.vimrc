" Ale specific vars
let g:ale_javascript_eslint_use_global = 1
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['prettier-eslint']}
let g:ale_javascript_prettier_eslint_options = '--single-quote'
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
" Ale end

" UltiSnips config
inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Airline config
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" deoplete config
let g:deoplete#enable_at_startup = 1

