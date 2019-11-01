TODOs
=====

* [ ] Add leader + '/' binding to toggle comments to make it more inline with default IDE hotkeys
* [ ] Fix `vim-markdown`'s handling of bold text *ie it should be able to show conceals that make it distinct*
* [ ] Add vim-grepper & do all the different searching tricks from [this]()
* [ ] ansible syntax
* [ ] ansible snippets
* [ ] ansible linting
* [ ] ansible autocomplete
* [ ] move all snippets into `./snips`
    - Use coc-snippets instead
* [ ] js prettier handler (and other langs if time)
* [ ] typescript autocomplete
* [ ] typescript linter
* [ ] typescript prettier
* [ ] Better markdown concealer options
* [ ] Auto fold h2 & lower
* [ ] Block Editing
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

* [x] Gruvbox color schemes both light & dark
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
