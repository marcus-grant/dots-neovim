" Python IDE configs, many using pymode.vim
" Many cues taken from here:
" https://www.vimfromscratch.com/articles/vim-for-python/

nmap <silent> <leader>ln :lnext<cr>
nmap <silent> <leader>lp :lprevious<cr>

" Pymode specific stuff
" TODO remove if satisfactory functioning after having removed pymode
let g:pymode_python = 'python3'
let g:pymode_python_lint_on_write = 1

au BufNewFile,BufRead *.py
    \ set expandtab       | " replace tabs with spaces
    \ set autoindent      | " copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set foldmethod=indent

let g:ale_fix_on_save = 1
