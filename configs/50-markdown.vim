" Markdown settings, many of which are markdown engines or previewers

" vim-pandoc
let g:pandoc#syntax#conceal#urls = 1
" let g:pandoc#folding#level = 2
let g:pandoc#syntax#colorcolumn = 0
" let g:pandoc#formatting#mode = "ha"
" fixes irritating fold column on left https://github.com/vim-pandoc/vim-pandoc/issues/200
let g:pandoc#folding#fdc = 0
" leave spelling off by default & enable it by opting in
set nospell

" vim-markdown-composer
"  Turn off automatic opening of the specified browser
let g:markdown_composer_open_browser = 0
