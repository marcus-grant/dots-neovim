" Miscellaneous settings, these should eventually be moved

" custom plugin to detect & highlight docker files
" Detect the filetype
au BufNewFile,BufRead [Dd]ockerfile,Dockerfile.*,*.Dockerfile set filetype=dockerfile
" Apply the highlighting rules
source ~/.config/nvim/syntax/dockerfile.vim
