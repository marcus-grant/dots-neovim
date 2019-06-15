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

