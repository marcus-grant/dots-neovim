" Airline specific settings

"  Non-display airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" vim-javascript & vim-jsx
" syntax highlighting for jsdocs
let g:javascript_plugin_jsdoc = 1
" enable working with flow
let g:javascript_plugin_flow = 1
" code folding based on syntax file of plugin
" set foldmethod=syntax
" for jsx....
" enable jsx handling of js extension as well
let g:jsx_ext_required = 0

" change maxlinenr to nothing because I can't find unicode 0133 (3310?)
" TODO: remove maxlinenr
let g:airline_symbols = get(g:,'airline_symbols',{})
let g:airline_symbols.maxlinenr=''
" include buffer number (BN:)
let g:airline_section_y = 'BN: %{bufnr("%")}'
" this comes from w0rp/ale linter to show error/warnings in status line
let g:airline#extensions#ale#enabled = 1

" indentline
let g:indentLine_enabled = 1
let g:indentLine_char = '¦'
" let g:indent_setColors = 0
" let g:indentLine_color_term = 244
" let g:indentLine_color_gui = 244

" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "⇒"
" let g:javascript_conceal_underscore_arrow_function = "⇒"
