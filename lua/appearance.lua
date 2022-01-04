-- [[
-- Created on 2022-01-04
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- Appearance based configs, should be loaded fairly early
-- ]]

print('Module Loaded: Appearance')
-- Setup color scheme plugins
require('newpaper').setup()

-- Default to gruvbox (for now)
vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])
