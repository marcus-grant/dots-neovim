TODOs
=====

* [ ] Ctrl + / remap for NerdCommenter Toggle like [this](http://bit.ly/2S250VE)
* [ ] Fix CMD display area for COC which 
* [ ] Sort PUM of COC correctly, most likely closest to tab
* [ ] vim-test config init
* [ ] ansible syntax
* [ ] ansible snippets
* [ ] ansible linting
* [ ] ansible autocomplete
* [ ] jest vim-test config
* [ ] move all snippets into `./snips`
* [ ] js prettier handler (and other langs if time)
* [ ] typescript autocomplete
* [ ] typescript linter
* [ ] typescript prettier
* [ ] coc spelling and grammar on regular text files like md
* [ ] go vim-test config
* [ ] Better markdown concealer options
* [ ] coc-snippets
* [ ] CoC preview window for each completion - *(might need newer nvim ver.)*
* [ ] Close preivew window when CoC completion done
* [ ] Auto fold h2 & lower
* [ ] Block Editing
* [ ] Was disabling ALE on COC a good choice?
* [ ] Was disabling SuperTab on COC good?
* [ ] Custom rg/fzf fd/fzf functions to search all notes & all code
* [ ] Indentation grids
* [ ] graphQL highlighting

Planning
========

* [ ] PlatformIO IDE features
    * Might be enough to just have a few C/C++/Rust shortcuts + cli utility
* [ ] Markdown linting Grammar & Spelling *(write-good?)*
* [ ] Automatic references link or bibilography for md
* [ ] Latex Blocks
* [ ] Some kind of *org-mode*-like features
    * Perhaps `vimwiki`
    * concealer syntaxes for markdown
* [ ] Profile neovim to improve performance
    - checkout the plugin built for it
* [ ] Better folding techniques
  * A good [guide][01]
* [ ] Consider new markdown engine
* [ ] Markdown table formatting
* [ ] Settings from this [article](https://hackernoon.com/vim-for-writers-ee15d2a8f512)
* [ ] Emmet for static HTML, templating & maybe jsx
* [ ] HTML and scope chars surrounds
* [ ] RGB highlighting for color codes

Complete
========

* [x] CoC extions: coc-tsserver coc-eslint coc-json coc-prettier coc-css
* [x] Enter to complete CoC completions
* [x] Tab / S-Tab to cycle CoC completions
* [x] Disable SuperTab when COC active
* [x] Jump to next error in coc using <leader>e and <leader>w
* [x] Disable ALE when using COC (For Now Determine later if good)
* [x] Split configs into `./configs` dir & load all files there in order in `init.vim`
* [x] Add TODOs.md `d7348be`
* [x] Distraction free mode [goyo][14]
* [x] Snippets [`Github: SirVer/ultisnips`][14]
* [x] Proper Syntax & Spacing
* [x] JSX recognition with `vim-javascript`
* [x] Markdown highlighting
* [x] `noh` binding, using leader key
* [x] `foldmethod=marker` for vim & sh
* [x] Sufficient Defaults
* [x] Pane Management w/ Keymaps
* [x] `noh` binding, using leader key
* [x] External Renderer with `vim-markdown-composer`
* [x] `fzf` plugin
* [x] NERDTree
* [x] Tmux integration
* [x] Plugin Manager
* [x] Install Script

References
==========

1. [Steve Losh - Advanced Folding][01]

[01]: http://learnvimscriptthehardway.stevelosh.com/chapters/49.html "Steve Losh - Advanced Folding"
