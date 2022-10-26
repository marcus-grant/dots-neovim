-- Default options
-- Mainly generic and global editor settings during default launches

-- print('Module: Default options loaded')

vim.wo.number				= true
vim.o.expandtab				= true
vim.o.smarttab				= true
vim.o.smartindent			= true
vim.o.tabstop				= 4
vim.o.softtabstop			= 4
vim.o.shiftwidth            = 4
vim.o.shiftwidth			= 4

-- Autodarkmode
local auto_dark_mode = require('auto-dark-mode')
auto_dark_mode.setup({
    update_interval = 60,
    set_dark_mode = function()
        vim.api.nvim_set_option('background', 'dark')
        vim.cmd('colorscheme gruvbox')
    end,
    set_light_mode = function()
        vim.api.nvim_set_option('background', 'light')
        vim.cmd('colorscheme newpaper')
    end,
})
auto_dark_mode.init()
