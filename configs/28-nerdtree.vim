" NERDTree condigs

"  Automatically close NERDTree pane after selection
" let NERDTreeQuitOnOpen=1
" Toggle NERDTree with leader + t
" nnoremap <leader>t :NERDTree<CR>:NERDTreeFocus<CR>
" nnoremap <leader>T :NERDTreeFocus<CR>
" Set nerdtree to toggle instead by using leader key
" nnoremap <leader>t :NERDTreeToggle<cr>
" Set expand/collapse chars
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" set default width of nerdtree pane
let g:NERDTreeWinSize=12

" ==== combine with tagbar
" nnoremap <leader>t :ToggleNERDTreeAndTagbar<cr>
nnoremap <leader><tab> :ToggleNERDTreeAndTagbar<cr>

