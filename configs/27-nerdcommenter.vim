" NERDCommenter

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multiline comments
let g:NERDCompactSexyComs = 1
" Align linewise comment delimiters flush left instead of following indents
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful for commenting regions)
let g:NERDCommentEmptyLines = 1
" Trim trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" From https://bit.ly/2kp8npv
" Used to recognize & handle jsx comments
let g:NERDCustomDelimiters = { 'javascript.jsx': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' } }

" Extra Ctrl+/ comment toggle which many IDEs use
nmap <leader>/ <Plug>NERDCommenterToggle<CR>
vmap <leader>/ <Plug>NERDCommenterToggle<CR>

nmap <leader>c<Space> <Plug>NERDCommenterToggle<CR>
vmap <leader>c<Space> <Plug>NERDCommenterToggle<CR>

nmap <C-\/> <Plug>NERDCommenterToggle<CR>
vmap <C-\/> <Plug>NERDCommenterToggle<CR>

