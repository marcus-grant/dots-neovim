-- [[
-- Created on 2021-12-28
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- My NeoVim configurations, all submodules get loaded here (in-order).
-- No other logic or configuration should get used here.
-- ]]
print("Keymap loaded")

-- Set these default options to be used in the mapping functions
local opts = { noremap = true, silent = true }
local terms_opts = { silent = true } 

-- Shorten the function name and pull out its reference from vim.api
local keymap = vim.api.nvim_set_keymap

-- Modes string
--      normal          = 'n'
--      insert          = 'i'
--      visual          = 'v'
--      visual_block    = 'x'
--      terminal        = 't'
--      command         = 'c'

-- Some UTF8 Hexcodes to help assign tricky character keys
--      +       2b
--      -       2d
--      <       3c
--      =       3d
--      >       3e
--      ?       3f
--      \       5c
--      _       5f

-- First map the leader key (spacebar)
vim.g.mapleader = ' '


-- Normal Mode
-- ===========
-- LoadConfigs() as <leader>rc
keymap('n', '<leader>rc', ':lua LoadConfigs()<CR>', opts)

-- Better Ctrl+hjkl navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Resize (more) with <leader>+w+hjkl
keymap('n', '<leader>wh', '4<C-w><Char-0x3C><CR>', opts)
keymap('n', '<leader>wj', '4<C-w><Char-0x2D><CR>', opts)
keymap('n', '<leader>wk', '4<C-w><Char-0x2B><CR>', opts)
keymap('n', '<leader>wl', '4<C-w><Char-0x3E><CR>', opts)
-- ... and equalize with <leader>w=
keymap('n', '<leader>w=', '<C-w><Char-0x3D><CR>', opts)

