" These are the base variables that are treated as defaults that affect
" ...how all configurations are set.
" These variables can be used to ignore configuration files,
" ...modify configurations, color schemes, keymaps, or make presets
" DONT modify the settings here unless the defaults should be changed.
" Another file, "./local-variables.vim" exists for that purpose, to
" ...override those default variables.

""" Host specific variable auto-definition

" TODO figure out which settings need to be changed by OS, by default use unix
" host OS settings
" set ff="unix"
" if has("unix")
"   let s:uname = system("uname")
"   if s:uname == "Darwin\n"
"     " Do Mac stuff here
"   endif
" endif


""" Miscelaneous variables

" This is crucial to loading all configs
let g:configs_dir = '~/.config/nvim/configs'


""" Plugin selection variables

let g:airline_enabled = 1 " 1 enables airline plugin
let g:snippet_manager = 'ultisnips' " specify snippets manager plugin
let g:markdown_engine = 'vim-markdown' " which markdown engine plugin?
let g:markdown_composer_enabled =  1 " enables markdown composer (huge plug, needs rust)
let g:autocomplete_engine = 'deo' " deo | coc
" let g:autocomplete_engine = 'coc' " deo | coc
" let g:


""" General editor variables

" Show the line ruler
let g:show_ruler = 1
" Show line numbers column on side
let g:show_line_numbers = 0


""" Appearance Variables

" case-sens. name for color scheme to use, must be inside ./colors
let g:color_scheme = 'PaperColor' 
" Sets color scheme options based on time of day, defined in
let g:enable_time_basaed_colors = 1
" This variable gets ignored if using time based color schemes
let g:dark_background = 0

