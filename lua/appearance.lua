-- [[
-- Created on 2022-01-04
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- Appearance based configs, should be loaded fairly early
-- ]]

-- print('Module Loaded: Appearance')

-- Setup color scheme plugins
-- require('newpaper').setup()

-- Default to gruvbox (for now)
-- vim.o.background = 'dark'
-- vim.cmd([[colorscheme gruvbox]])

-- TODO implement os-aware dark mode detection
local isdarkmode = true -- this should be a function call to fill in the bool
local darkmode_theme = 'gruvbox'
local darkmode_line_theme = darkmode_theme
local litemode_theme = 'newpaper'
local litemode_line_theme = 'papercolor'
local lualine_theme = isdarkmode and darkmode_line_theme or litemode_line_theme

-- Set the color scheme & background
if isdarkmode then
    vim.o.background = 'dark'
    vim.cmd('colorscheme ' .. darkmode_theme)
else
    vim.o.background = 'light'
    vim.cmd('colorscheme ' .. litemode_theme)
end

-- Set the cursor line
vim.opt.cursorline = true

-- LuaLine
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = lualine_theme,
    -- theme = 'auto',
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
