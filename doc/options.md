# NeoVim Built in Features and Defaults

## Introduction

There are many built in features in NeoVim,
far too many to list or describe here.
In this section we'll go over some of the more common ones and
how to configure them.
This will be done with a new file in the `lua` folder called `options.lua`.

## Expected Files

Let's revisit the folder structure of the config root.
So it's easier to reason about the changes coming.
First create a new file called `options.lua` in the `lua` folder.
You can do that with this `touch` command,
`touch ~/.config/nvim/lua/options.lua`.
Then the folder structure should look like this:

```sh
tree ~/.config/nvim
.
├── init.lua
├── lua
│   ├── lazy-config.lua
│   ├── options.lua
│   └── plugins.lua
```

The only thing that should've changed from the last section should be
the addition of the `options.lua` file.

## Configuring Built-in Features

### Edit the Options File

Now open the `options.lua` file in your editor, could be neovim.
Below is the whole file with comments explaining what each option does.
Most of them alter the default behavior of neovim in some way.

```lua
-- lua/options.lua
-- Set an alias variable for vim.opt for easier use
local opt = vim.opt

-- The built-in options
opt.autowrite = true -- Save changes when switching tabs/buffers/panes/timeout
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect" -- autocomplete sources
opt.conceallevel = 3 -- ie hide * markup for bold and italic in markdown
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.incsearch = true
opt.laststatus = 0
opt.list = true -- Show some invisible characters (tabs...
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 5 -- Lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true -- Round indent
opt.shiftwidth = 4 -- Size of an indent
opt.shortmess:append { W = true, I = true, c = true }
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 4 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.timeoutlen = 500 -- speed must be under 500ms inorder for keys to work, increase if you are not able to.
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
```

### Some Notes on the Options

* You can find more information on any options by
  running `:help <option_name>` in neovim.
  * This will open the help documentation for that option in neovim.
* The `opt.formatoptions` are set by including a set of
  letters representing options.
  * To see the table of the options use `:help fo-table`.
  * The default value is `tcqj` as shown in the comments.
* The `laststatus = 0` option is to hide the statusline because
  a status line is going to be installed later.
* The `vim.g.markdown_recommended_style = 0` option is there to
  turn off the broken built-in markdown formatting.
  * This will be better handled later.

### Load the Options

Now that the options are defined in the `options.lua` file,
loading them in the `init.lua` file is easy.
Just add this line to the top of the `init.lua` file,
we want the options to be loaded before anything else.

```lua
require "options"
require "lazy-config"
```

The only change to the `init.lua` file is the addition of the
`require "options"` line.
To reload the running neovim instance with the new options,
simply run `:source init.lua` in neovim.
That or simply exit neovim and start it again.

## Summary

Now you know how to configure some of the built-in features of neovim.
The behavior of neovim should now be a little different.
Feel free to comment out, delete or play with some of these options after
learning about them by using the `:help` command.
