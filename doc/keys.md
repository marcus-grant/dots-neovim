# Customize Key Bindings of NeoVim

## Introduction

NeoVim is infamous for it's key bindings and modal editing scheme,
vis a vis changing how keys behave by changing the mode you're in.
To summarize,

* `NORMAL` mode is for moving around.
* `INSERT` mode is for inserting text.
* `VISUAL` mode is for selecting text.
* `COMMAND` mode is for entering commands.
* `TERMINAL` mode is for using a terminal emulator.

## Configuration Structure

The only new file to make here is the `keys.lua` file in the `lua` folder.
This will hold all the key bindings for the entire configuration.
Just create it with the `touch` command as before,
`touch ~/.config/nvim/lua/keys.lua`.
Then the folder structure should look like this:

```sh
tree ~/.config/nvim
.
├── init.lua
└── lua
    ├── keys.lua
    ├── lazy-config.lua
    ├── options.lua
    └── plugins.lua
```

The only changes made here are the addition of the `keys.lua` file.
And below is the single line change to the `init.lua` file to load it.
Note that some plugins will have their own key bindings,
so it could be good to have the `keys.lua` file loaded near the end.

```lua
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

    -- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) -- left window
keymap("n", "<C-k>", "<C-w>k", opts) -- up window
keymap("n", "<C-j>", "<C-w>j", opts) -- down window
keymap("n", "<C-l>", "<C-w>l", opts) -- right window

-- Resize with arrows when using multiple windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<c-down>", ":resize +2<cr>", opts)
keymap("n", "<c-right>", ":vertical resize -2<cr>", opts)
keymap("n", "<c-left>", ":vertical resize +2<cr>", opts)


-- navigate buffers
keymap("n", "<tab>", ":bnext<cr>", opts) -- Next Tab 
keymap("n", "<s-tab>", ":bprevious<cr>", opts) -- Previous tab
keymap("n", "<leader>h", ":nohlsearch<cr>", opts) -- No highlight search

-- move text up and down
keymap("n", "<a-j>", "<esc>:m .+1<cr>==gi", opts) -- Alt-j 
keymap("n", "<a-k>", "<esc>:m .-2<cr>==gi", opts) -- Alt-k

-- insert --
-- press jk fast to exit insert mode 
keymap("i", "jk", "<esc>", opts) -- Insert mode -> jk -> Normal mode
keymap("i", "kj", "<esc>", opts) -- Insert mode -> kj -> Normal mode

-- visual --
-- stay in indent mode
keymap("v", "<", "<gv", opts) -- Right Indentation
keymap("v", ">", ">gv", opts) -- Left Indentation

-- move text up and down
keymap("v", "<a-j>", ":m .+1<cr>==", opts)
keymap("v", "<a-k>", ":m .-2<cr>==", opts)

-- Visual Block --
-- Move text up and down
    --Terminal --
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

--Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
```

### Notes about the Key Bindings

* There's a ton of keymaps here so best just go over the overview of them.
* The `leader key` mappings need to be handled before loading lazy.
  * I typically will define it in the `options.lua` file.
* Most of the sections of keymaps involve navigating windows/panes/buffers easier.
* The `<C-hjkl>` keymaps are for navigating windows left, down, up, right respectively.
  * This notation means you hold the `Ctrl` key and press `h` to move left.
* The `<C-UpDownLeftRight>` keymaps are for resizing windows.
  * This notation means you hold the `Ctrl` key and press the arrow keys to resize.
* The `<tab>` and `<s-tab>` keymaps are for navigating buffers.
  * This notation means you press the `tab` key to go to the next buffer.
  * This notation means you press the `shift` and `tab` keys to go to the previous buffer.
* The `<leader>h` keymap is for clearing the search highlight.
  * This notation means you press the `leader` key and then the `h` key.
* The stay in indent mode keymaps are for staying in indent mode.
  * This notation means you press the `>` key to indent right.
  * This notation means you press the `<` key to indent left.
  * Repeating this key means you can keep moving the indent without re-selecting.
* Then there's some keymaps to make moving in and out of
  a terminal pane or buffer easier.

## Summary

This is a very basic set of keymaps to get started with.
There's a lot more to learn about keymaps in neovim.
Take your time and figure out what features are nice to have.
Then look up how to map them to keys using this as a template.
Later we will use the `which-key` plugin to make a nice keymap reference for
more advanced functionality or to invoke different plugin functionality.
