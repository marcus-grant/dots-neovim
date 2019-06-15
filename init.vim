" init.vim
" This is the entrypoint for all configurations.
" This file itself doesn't set any configurations.
" It only loads them in-order based off of the starting number
" ...of the filenames inside ./configs
" First it loads ./base-variables.vim to load the default
" ...variables that alter the current configuration.
" These variables will effect plugins being used, color schemes, presets for
" ...slower machines, etc.
" Then it will load all configs in order from ./configs
" Then it will load a final file, ./local-variables.vim that will override
" ...specific settings that are ignored by this repo.


" Start by loading default variables
so $HOME/.config/nvim/default-vars.vim

" Then load the locally defined overides of all vars
" But only do so if it exists
if filereadable(expand('$HOME/.config/nvim/local-vars.vim'))
    exe 'source' expand('$HOME/.config/nvim/local-vars.vim')
endif

" Now go through every config in directory ./configs
" Every directory should start with a 2 digit number
" specifying the order it should be loaded so the
" loop is in numberical order.
for s:fpath in split(globpath(g:configs_dir, '*.vim'), '\n')
    exe 'source' s:fpath
endfor

" Then finally load all local overrides last so they can truly supercede
" But only do so if it exists
if filereadable(expand('$HOME/.config/nvim/local-configs.vim'))
    exe 'source' expand('$HOME/.config/nvim/local-configs.vim')
endif
