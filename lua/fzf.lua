-- [[
-- Created on 2022-01-04
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- Configurations for FZF plugin
-- See more config ideas and info @ https://github.com/ibhagwan/fzf-lua
-- ]]

print('Module Load: FZF Lua configs')

local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true } 

-- Search command keymaps
-- PWD files
keymap('n', '<leader>ff', "<cmd>lua require('fzf-lua').files()<CR>", default_opts)
-- PWD (Rip)Grep
keymap('n', '<leader>fg', "<cmd>lua require('fzf-lua').grep_project()<CR>", default_opts)
-- Buffers
keymap('n', '<leader>fb', "<cmd>lua require('fzf-lua').buffers()<CR>", default_opts)
