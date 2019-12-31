" Deoplete configs

if g:autocomplete_engine ==? 'deo'
" echo('deoplete in use')

let g:deoplete#enable_at_startup = 1

" Delay before querying, can help with slow responsiveness
" TODO: This needs tweaking because quick javascript deoplete use can really
" bog things donw.

let g:deoplete#auto_complete_start_length = 2
" Autocmd to conditionally enable deoplete using tab, c-n and ...?
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Coordinate completion plugins
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]
" let g:deoplete#omni#functions.javascript.jsx = [
"   \ 'tern#Complete',
"   \ 'jspc#omni'
" \]

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources.javascript = ['buffer', 'file', 'ultisnips', 'tern']
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#file#enable_buffer_path=1
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]

" TODO: this might be an odd addition
if exists('g:plugs["tern_for_vim"]')
  " Enable excellent keyboard shortcuts
  let g:tern_map_keys=1
  " Display argument type hints when the cursor is left over a function
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" Python sourcing
let g:deoplete#sources#jedi#server_timeout = 6

" autocomplete
" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType typescript let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType go let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType python let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType yaml let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType php let g:SuperTabDefaultCompletionType = "<c-n>"
autocmd FileType bash let g:SuperTabDefaultCompletionType = "<c-n>"
let g:UltiSnipsExpandTrigger="<C-j>"
"
" TODO: shouldn't this be reversed?
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Improvement to make the preview window close after PUM dissapears
" From http://bit.ly/2wxYLSi
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Bind the PopUpMenu for deoplete to deal better with ultisnips
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" deoplete + neosnippet + autopairs - taken from http://bit.ly/2BFJFem
" let g:AutoPairsMapCR=0
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
" imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"

" Check for OS type, if mac then set python path
if has('macunix')
  let g:python2_host_prog = '/usr/local/bin/python'
  let g:python3_host_prog = '/usr/local/bin/python3'
endif

" End of file-level enabler
endif

