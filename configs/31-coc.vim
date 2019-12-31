" coc settings - autocomplete features
" some stuff taken from: http://bit.ly/2WHw2lB

if g:autocomplete_engine ==? 'coc'
" specify which coc extensions to use:
let g:coc_global_extensions = [
            \ 'coc-tsserver',
            \ 'coc-tslint',
            \ 'coc-tslint-plugin',
            \ 'coc-eslint',
            \ 'coc-prettier',
            \ 'coc-css',
            \ 'coc-json',
            \ 'coc-yaml',
            \ ]
" if hidden isnt set, text edit might fail
set hidden
" Better display for messages
set cmdheight=2 " TODO come back to this if annoyed by 2 height it's recommended
" Set the update time for cursor hold for autocomplete
set updatetime=300 " milliseconds
" Less time for cursor updates
set shortmess+=c
" always show signcolumns
set signcolumn=auto
" don't give |ins-completion-menu| messages.
set shortmess+=c

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Tab to navigate S-Tab backwards TODO supertab flips out for some reason
inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos g + (d)ef / (t)ype / (i)mplement / (r)ef
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Go to next / prev coc error
nmap <silent> <leader>e <Plug>(coc-diagnostic-next)
nmap <silent> <leader>w <Plug>(coc-diagnostic-prev)



" Untested options from http://bit.ly/2WHw2lB
" ===========================================

" Use tab for trigger completion with characters ahead and navigte
" Use command ':verbose imap <tab> to ensure tab isn't mapped
" Taken from the listed article at header
" inoremap <silent> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" My custom pum config
" inoremap <expr><TAB>
"     \ pumvisible() ? "\<C-n>" :
"     \ <SID>check_back_space() ? "\<TAB>" :
"     \ coc#refresh()

" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1] =~# '\s'
" endfunction

" Use <leader>q to trigger completion.
" TODO investigate this one, I'm not sure why I would want it this way
" inoremap <silent><expr> <leader>, coc#refresh()

" Use '[q' & ']q' to nav diagnostics in coc
" nmap <silent> [q <Plug>(coc-diagnostic-prev)
" nmap <silent> ]q <Plug>(coc-diagnostic-next)

" Remap for rename current word
" nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region - check article for implement

" Manage COC extensions
" nnoremap <silent> qe :<C-u>CocList commands<cr>

" SuperTab Settings for COC
endif
