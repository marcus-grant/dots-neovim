" Here plugins are loaded using vim plug. All new plugins to install go here

" Begin vim plug loading
" ======================================================================
call plug#begin("~/.config/nvim/plugged/")
" Plugins list, ONLY USE SINGLE QUOTES for references

" SuperTab (for some reason needs early load) 
"================================
" Supertab to control completions
if g:autocomplete_engine ==? 'deo'
    Plug 'ervandew/supertab'
endif


" TMUX 
"================================
" Sessions (Also used with tmux-resurrect)
"================================
Plug 'tpope/vim-obsession'

" TMUX
"================================
" vim-tmux-navigator to integrate panes with tmux
Plug 'christoomey/vim-tmux-navigator'
"}}}

" Completion & Snippets {{{
"================================

" deoplete autocompletion
if g:autocomplete_engine ==? 'deo'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
elseif g:autocomplete_engine ==? 'coc'
    Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

        " {'branch': 'release'}
        " {'tag': '*', 'do': { -> coc#util#install()}}
    " TODO keep going there's much more to this
endif

" Snippets
"================================
" Implements a global var to determine if ultisnips should be used
if g:snippet_manager ==? 'ultisnips'
  Plug 'sirver/ultisnips' "| Plug 'honza/vim-snippets'
elseif g:snippet_manager ==? 'neosnippet'
  Plug 'Shougo/neosnippet.vim' | Plug 'Shougo/neosnippet-snippets' | Plug 'honza/vim-snippets'
endif

" TernJS
"================================
" Disabled for now since it might be a bit silly to use both
" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': { 'mac': 'npm install -g tern', 'unix': 'npm install -g tern' }}
if g:autocomplete_engine ==? 'deo'
    Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g tern' }
endif

" JSPC - Parameter Completion
" TODO I'm not sure this works, it's inactive and might be slow, investigate
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }


" Python Completion 
"================================
if g:autocomplete_engine ==? 'deo'
    Plug 'zchee/deoplete-jedi'
endif
"}}}

" UI {{{ 
"================================
" Status Line 
if g:airline_enabled
  Plug 'powerline/fonts', { 'do': './install.sh' }
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
endif

" Indents 
"================================
" Plug 'mkitt/tabline.vim'
Plug 'yggdroot/indentLine'
" Plug 'nathanaelkane/vim-indent-guides'

" Color Schemes 
"================================
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-scripts/C64.vim'
"}}}

" Debuggers {{{
"========================
"}}}

" NERD  {{{
"================================
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" NERD commenter for better filetype comments
Plug 'scrooloose/nerdcommenter'

" Tagbar & NERDTree + Tagbar
"================================
Plug 'majutsushi/tagbar'
Plug 'pseewald/nerdtree-tagbar-combined'
nmap <F7> :ToggleNERDTreeAndTagbar<CR>
"}}}

" FZF {{{
"================================
" Changed because ansible is now handling fzf config separately
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug '~/.local/share/fzf'
Plug 'junegunn/fzf.vim'
"}}}

" Linting {{{
"================================
" ALE - Asynchronous Lint Engine
" TODO determine if you lose anything desirable without ALE on COC
" if g:autocomplete_engine ==? 'deo' || !(g:lint_engine ==? 'coc')
if !(g:lint_engine ==? 'coc')
    Plug 'dense-analysis/ale'
endif

" Language Plugins {{{
"================================

" Javascript Plugins
"================================
" Improved JS & JSX support
" load only for *.js & *.jsx extensions
" TODO: accomplish some kind of lazy loading for this plugin for JS & JSX
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'

" Go 
"================================
" vim-go for syntax and basic regognition
" swiss army knife for go (compile, install, test, run, debug, complettion,
" gotodef, docs, rename/refactor, test/coverage, taggs, lint)
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Delve - go debugging
Plug 'sebdah/vim-delve'

" Python 
"================================
" python-mode is the swiss army knif of vim development of python.
Plug 'python-mode/python-mode', { 'branch': 'develop' }
let g:pymode_python = 'python3'
Plug 'python-mode/python-mode', { 'branch': 'develop' }


" Ansible 
"================================
" syntax plugin for ansible supporting yaml, jinja2 & hostfiles.
Plug 'pearofducks/ansible-vim'
Plug 'stephpy/vim-yaml'


" Git 
"================================
" fuGITive - Best git wrapper ever
Plug 'tpope/vim-fugitive'

" Vim-git - syntax highlighting for git integrators
Plug 'tpope/vim-git'

" Still experimenting 
" Python virtual env workaround
" Plug 'plytophogy/vim-virtualenv'

" typescript 
" syntax
" Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
" general tooling incl. deoplete source
" Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }


" markdown
" ===============================

" vim-pandoc 
" TODO try out vim-markdown at some point
if g:markdown_engine ==? 'pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'vim-pandoc/vim-pandoc'
  " Plug 'vim-pandoc/vim-pandoc-syntax', { 'for': ['markdown', 'pandoc'] }
  " Plug 'vim-pandoc/vim-pandoc', { 'for': ['markdown', 'pandoc'] }
elseif g:markdown_engine ==? 'vim-markdown'
  Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
endif

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': ['markdown', 'pandoc'] }
" autocmd! User goyo.vim echom 'Goyo is now loaded!'

" euclio/vim-markdown-composer a rust-based web server that live-renders markdown
if g:markdown_composer_enabled
    function! BuildComposer(info)
      if a:info.status != 'unchanged' || a:info.force
        if has('nvim')
          !cargo build --release
        else
          !cargo build --release --no-default-features --features json-rpc
        endif
      endif
    endfunction
endif

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }


" Ansible 
"================================
" syntax plugin for ansible supporting yaml, jinja2 & hostfiles.
Plug 'pearofducks/ansible-vim'
Plug 'stephpy/vim-yaml'
"}}}

" Git (TODO: Move to a project manage category?){{{
"================================
" fuGITive - Best git wrapper ever
Plug 'tpope/vim-fugitive'

" Vim-git - syntax highlighting for git integrators
Plug 'tpope/vim-git'
"}}}

" Still experimenting  {{{
" Python virtual env workaround
" Plug 'plytophogy/vim-virtualenv'

" typescript  - TODO test and move to language section
" 
" syntax
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
" general tooling incl. deoplete source
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
"}}}

" Test Running {{{
"================================
" vim-test
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'

" BATS
" ===============================
Plug 'vim-scripts/bats.vim'
"}}}

" Initialize plugin system
call plug#end()
