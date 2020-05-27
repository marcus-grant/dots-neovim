" Miscellaneous settings, these should eventually be moved

" custom plugin to detect & highlight docker files
" Detect the filetype
au BufNewFile,BufRead [Dd]ockerfile,Dockerfile.*,*.Dockerfile set filetype=dockerfile
" Apply the highlighting rules
source ~/.config/nvim/syntax/dockerfile.vim

fun! GruvDarkColor()
    colorscheme gruvbox
    set background=dark
endfunction

fun! GruvLightColor()
    colorscheme gruvbox
    set background=light
endfunction

fun! PaperLightColor()
    colorscheme PaperColor
    set background=light
endfunction

fun! PaperDarkColor()
    colorscheme PaperColor
    set background=dark
endfunction

fun! C64Color()
    call GruvDarkColor()
    colorscheme C64
endfunction

command! GruvLight call GruvLightColor()
command! GruvDark call GruvDarkColor()
command! PaperLight call PaperLightColor()
command! PaperDark call PaperDarkColor()
command! C64Color call C64Color()
