" Go configs to setup IDE-like settings
" Many of these settings use the vim-go plugin

au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
" Go to the definition of something using F12
au FileType go nmap <F12> <Plug>(go-def)
au FileType go nmap <F10> :GoTest -short<cr>
" bring up test coverage mode
au FileType go nmap <F11> :GoCoverageToggle -short<cr>
" Jump to definition using F12
" TODO check if this can be replaced with C-g for all filetypes
au FileType go nmap <C-g> <Plug>(go-def)
" Keys to make debugging & running in delve a bit more pleasant
" These are typical keys for most IDE's when debugging and running
" F5 to run & to continue debugging
au FileType go nmap <F5> :w<cr>:DlvDebug<cr>
au FileType go nmap <F6> :w<cr>:GoRun<cr>
au FileType go nmap <F9> :DlvToggleBreakpoint<cr>
" TODO: Add more later, and also consider them for other languages in debug

"    highlighting settings
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
" TODO: Look into a disable sameid highlighter key
let g:go_auto_sameids = 1 " nifty highlighter for same named entities
" auto import of new deps - with this, on save go will import the deps
let g:go_fmt_command = "goimports"
" linting is handled in ALE section
" JSON tagging and transform to make JSON work easier
" let g:go_addtags_transform = "camelcase"
" reveal types by hovering cursor
" TODO some massive errors occur with this plugin when using this option
" Check back here on this issue to see any new updates that might arise
" For now it must be disbaled - Link: http://bit.ly/2pGfgpC
" let g:go_auto_type_info = 1
" Go snips engine
let g:go_snippet_engine = "ultisnips"
