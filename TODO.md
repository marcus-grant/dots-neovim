TODOs
=====

Current
-------

* [ ] Version unlock coc extension `coc-python` from version `1.2.9`
* [ ] These below are interrelated with problems between coc / ale / pythonmode when editing in python
* [ ] remove: python-mode - no need for all those features add as needed
* [ ] fix: (related to below) ALE deployament problems
* [ ] fix: coc for python development, namely jedi timeouts and autocomplete
* [ ] Try using `ale_fixers` with prettier and yapf
* [ ] fix `:Rg` so it doesn't search ignores (https://bit.ly/2sfBCTl)
* [ ] update coc configs like the repo [documentation](http://bit.ly/2L8xxbw) example shows
* [ ] Any other new extensions for coc like [these](http://bit.ly/2S0cYyl)
* [ ] Try getting CoC & ALE to play nice together according to these hints/issues
    * [ale github issue](https://github.com/dense-analysis/ale/issues/2017)
    * [reddit coc ale thread](https://www.reddit.com/r/vim/comments/bs95ud/announcement_changing_default_linting_options_for/eom60ub?utm_source=share&utm_medium=web2x)
* [ ] fugitive view diffs from stage view & stage only patches keymaps/funcs
* [ ] Open `Session.vim` if it exists & create if doesn't exist
    * Try using the `QuitPre` command
    * Use it to check for remaining open buffers/splits
    * If none left close the session and delete Session.vim
* [ ] New FZF/RG/CoC Bindings
    * [ ] `C-p` to bring up `Files` function to search filenames
    * [ ] `Shift+C-p` to bring up `Commands`? function to search vim commands to run
    * [ ] `C-f` to bring up `Rg` function to search strings of project
    * [ ] `F2` for coc renaming elements of code
    * [ ] `gd` to go-to definition in coc
    * [x] `C-/` in conjuction with OS rebind to spit out `?/#` sequence that toggles comments
        * Update alacritty's dotfiles to include these keybindings
* [ ] Add leader + '/' binding to toggle comments to make it more inline with default IDE hotkeys
* [ ] vim-test config init
* [ ] `coc-settings.json` link while keeping the tracked config in dot repo
    * this includes link from `role-mydotfiles` to `~/.config/coc/coc-settings.json`
* [ ] Fix `vim-markdown`'s handling of bold text *ie it should be able to show conceals that make it distinct*
* [ ] Add vim-grepper & do all the different searching tricks from [this]()
* [ ] Sort PUM of COC correctly, most likely closest to tab
* [ ] Consider either vim-test or coc extensions to display and run tests

Planning
--------

* [ ] ansible syntax
* [ ] Python IDE features like [this](https://www.vimfromscratch.com/articles/vim-for-python/)
* [ ] Consider `coc-pairs` plugin
* [ ] Find way to make ALE work alongside CoC either by filetype or ...?
* [ ] custom function to go to previously open buffer
* [ ] ansible snippets
* [ ] ansible linting
* [ ] ansible autocomplete
* [ ] add if block around ALE config file to stop reading it if not used
* [ ] Remove ALE entirely?
* [ ] jest vim-test config
* [ ] move all snippets into `./snips`
    - Use coc-snippets instead
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


Future
------

* [ ] Refactor keymaps into one keymaps file
* [ ] Auto fold h2 & lower
* [ ] Block Editing
* [ ] Was disabling ALE on COC a good choice?
* [ ] Was disabling SuperTab on COC good?
* [ ] Custom rg/fzf fd/fzf functions to search all notes & all code
* [ ] Indentation grids
* [ ] graphQL highlighting
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
--------

* [x] hotfix: vim plug errors, probably from bad merge
* [x] Disable ALE when CoC is running
* [x] Ctrl + / remap for NerdCommenter Toggle like [this](http://bit.ly/2S250VE)
    * Unfortunately I can't seem to get vim to recognize `<C-/>` like vscode uses
    * I recall reading something about that combination not working from stackO don't know why
* [x] CoC extions: coc-tsserver coc-eslint coc-json coc-prettier coc-css
* [x] Enter to complete CoC completions
* [x] Tab / S-Tab to cycle CoC completions
* [x] Disable SuperTab when COC active
* [x] Jump to next error in coc using <leader>e and <leader>w
* [x] Disable ALE when using COC (For Now Determine later if good)
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
