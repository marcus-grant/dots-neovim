" Use vim-plug to load all plugins here.
" All configs should be loaded after this one, except for variables.

" Start by checking for vim-plug being installed, if not download
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif


