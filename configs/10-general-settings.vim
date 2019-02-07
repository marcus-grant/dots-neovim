" General Configurations
" This is for general behavior of nvim.
" Things like indentation, smart search, etc.
" These are loaded early so other files can potentially override them.


set showcmd		" show partial commands in statusline
set showmatch	" show matching brackets
set showmode	" show current mode

set noerrorbells	" no beeps please
set modeline		" enable modeline

if g:show_ruler
    set ruler		" show ruler
endif
if g:show_line_numbers
    set number		" show line numbers
endif

" More natural splitting behaviors
set splitbelow
set splitright

" Better search defaults
set ignorecase		" make searching case-INSENSITIVE
set smartcase		" ...UNLESS the query has capital letters within it
set gdefault		" use 'g' flag by default with :s/foo/bar/
set magic		" use 'magic' patterns (regex extensions)

" set default fold level to unfolded
set foldlevel=99

" Turn off conceal on cursor to make reading markdown entries easier
" Taken from http://bit.ly/2GbSBLF
set concealcursor=""
" specify foldmethod by filetype
autocmd BufRead,BufNewFile   *.sh,*.vim set foldmethod=marker

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
au FileType yaml setlocal tabstop=2 shiftwidth=2
au FileType yaml.ansible setlocal tabstop=2 shiftwidth=2
au FileType yml setlocal tabstop=2 shiftwidth=2
au FileType typescript setlocal tabstop=2 shiftwidth=2
au FileType html setlocal tabstop=2 shiftwidth=2
" Go specific ( might not be needed as go uses 4:4 format )
au FileType go set softtabstop=4

