-- lua/appearance.lua
-- Author: Marcus Grant
-- Created: 2023-11-17
-- Description:
-- This file is used to define the appearance of neovim.
-- It's also used to define functions and commands related to appearance.

-- Gruvbox default settings recommended by repo
require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
      strings = true,
      emphasis = true,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
  })

-- Gruvbox default settings recommended by repo
require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})
--   vim.cmd("colorscheme gruvbox")

-- Define function to set dark mode colors
function _G.dark_mode_on()
  vim.g.dark_mode = true -- Set dark mode tracking variable to true
  vim.cmd("colorscheme " .. "gruvbox") -- Set "dark mode" colorscheme
  vim.opt.background = "dark" -- Set background to dark
end

-- Define function to set light mode colors
function _G.dark_mode_off()
  vim.g.dark_mode = false -- Set dark mode tracking variable to false
  vim.cmd("colorscheme " .. "tokyonight") -- Set "light mode" colorscheme
  vim.opt.background = "light" -- Set background to light
end

-- Function to set dark mode based on time with default hour of 15
function _G.dark_mode_by_time(lite_hr, dark_hr)
  dark_hr = dark_hr or 15 -- default hour of 15
  lite_hr = lite_hr or 6 -- default hour of 6
  local hr = tonumber(vim.fn.strftime("%H")) -- Get current hour (24hr)
  -- If before dark_hr or after lite_hr, set dark mode
  if hr >= dark_hr or hr < lite_hr then dark_mode_on()
  else set_light_mode() end -- Or else set light mode
end

-- Function that toggles between light and dark mode
function _G.dark_mode_toggle()
  if vim.g.dark_mode then dark_mode_off()
  else dark_mode_on() end
end

-- Make these Dark Mode functions available as commands & start by time
vim.cmd("command! DarkModeOn lua dark_mode_on()")
vim.cmd("command! DarkModeOff lua dark_mode_off()")
vim.cmd("command! DarkModeByTime lua dark_mode_by_time()")
vim.cmd("command! DarkModeToggle lua dark_mode_toggle()")
dark_mode_by_time(15, 7) -- When starting, set dark mode by time
