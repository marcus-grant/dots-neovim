" Indentation settings
" considered superior to smartindent: http://bit.ly/2y03n3x
filetype plugin on
filetype plugin indent on
"set smartindent     " chose which setting based off file
set expandtab		" insert spaces when TAB is pressed
" Set default tab behaviors and then specific filetypes with 2 spaces
set tabstop=4		" default spaces used for tabs as 4
set shiftwidth=4	" indentation increments when using '<' & '>'
au FileType javascript setlocal tabstop=2 shiftwidth=2
au FileType javascript.jsx setlocal tabstop=2 shiftwidth=2
au FileType yaml setlocal et ts=2 ai sw=2 sts=0
" au FileType yaml.ansible setlocal tabstop=2 shiftwidth=2
au FileType typescript setlocal tabstop=2 shiftwidth=2
au FileType html setlocal tabstop=2 shiftwidth=2
" Go specific ( might not be needed as go uses 4:4 format )
au FileType go set softtabstop=4

