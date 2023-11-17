# Appearance

## Introduction

Now let's start some basic styling configuration and functionality.
A good way to do this is to download some color schemes you like,
in this case `folke/tokyonight.nvim` and `ellisonleao/gruvbox.nvim`.
These two both have light and dark variants and are very well considered.
We will also be creating a `lua/appearance.lua` file to store all the
configurations and functionality related to appearance.
This includes some functions and commands to toggle between light and dark modes.
Then we will add some key-bindings to toggle between the two modes in which-key.

## Folder Overview

There will be one new lua file created for this section, `lua/appearance.lua`.
The `lua/plugins.lua` file will be modified to add the color schemes and
the `lua/keys.lua` file will be modified to add the key-bindings.
When that is created with for example the `touch lua/appearance.lua` command,
and followed by the tree command like below, you get this tree structure.

```sh
tree ~/.config/nvim
.
├── init.lua
└── lua
    ├── appearance.lua # New File
    ├── keys.lua # Modified
    ├── lazy-config.lua
    ├── options.lua
    └── plugins.lua # Modified File
```

## Install Colorscheme Plugins

In this example,
two color schemes will be installed and configured,
`folke/tokyonight.nvim` and `ellisonleao/gruvbox.nvim`.
The *tokyonight* colorscheme is going to be used as a light mode theme and
the *gruvbox* colorscheme is going to be used as a dark mode theme.

To do this open up the `lua/plugins.lua` file and
in the returned table add the following entries.
We are only loading the plugins and not configuring them here.

```lua
-- lua/plugins.lua
return {
  -- ... other plugins

   -- Gruvbox
    { "ellisonleao/gruvbox.nvim" },

    -- Tokyo Night
    { "folke/tokyonight.nvim" },
}
```

## Configure Appearance

Now we can configure the color schemes in the `lua/appearance.lua` file.
This configuration file will be used to handle all appearance configurations and
functionality related to how the editor looks.
Later this will include things like statusline and tabline configurations.

### Configure Color Schemes

This section will configure the color schemes we installed earlier.
They're all configuration options provided by the color scheme plugins.
They're shown with their default values and can easily be skipped if you want
the defaults.
They're good to show though with their default options and descriptions because
that way you know what you can change later.


```lua
-- lua/appearance.lua
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
```

### Dark Mode Functionality

To enable dark mode functionality we can create four simple functions that
set dark mode on or off, toggle between them and finally a function to
set the mode based on the hour of the day.
That last function will be used on startup to set the mode based on the time of
the day.

```lua
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
```

#### Notes on Dark Mode Functions

* `dark_mode_on`
  * Set dark mode tracking variable `vim.g.dark_mode` to true.
    * This is what the toggle function will use to know the next mode.
  * Set the colorscheme to `gruvbox`.
    * This is the color scheme we've chosen for the dark mode.
  * Set the background to `dark`.
    * Obviously the dark mode background should be dark.
* `dark_mode_off`
  * Set dark mode tracking variable `vim.g.dark_mode` to false.
  * Set the colorscheme to `tokyonight`.
  * Set the background to `light`.
* `dark_mode_by_time`
  * This function takes two optional arguments, `lite_hr` and `dark_hr`.
    * These are the hours of the day that the light and dark modes should be set.
    * The default values are `6` and `15` respectively.
      * I'm in winter time in Stockholm, so not a lot of sinlight right now.
      * Set this to whatever you want or setup functions to change it by year.
  * Get the current hour of the day with `vim.fn.strftime("%H")`.
    * This returns a string of the current hour in 24 hour format.
  * Convert the string to a number with `tonumber()`.
  * If the hour is greater than or equal to the dark hour or less than the light hour,
    set dark mode with `dark_mode_on()`.
  * Otherwise set light mode with `dark_mode_off()`.
* `dark_mode_toggle`
  * If dark mode is on, turn it off with `dark_mode_off()`.
  * Otherwise turn it on with `dark_mode_on()`.
* The last lines of code are to give each function a vim command to call.
* The last line runs the function `dark_mode_by_time` with the hours to
  set the starting mode based off the hour of the day.

## Update Which-Keys Key Bindings and Menus

Now that we've added some functionality,
adding to the menu system provided by `which-key` key binds is a good way to
access these functions and remind you of the key-bindings.
You can still toggle the dark mode by entering the command `:DarkModeToggle` but
this is an even easier way of doing it.

### Nest Key Bind Menus

Think of the which-key bindings as a menu system on any UI based app.
Each key in sequence, starting with the leader key, is a menu item,
and the next key in sequence accesses a sub-menu.
The final key in the sequence then leads to the function or command.
To show how to nest menus,
we'll create a root menu for the `w` key and
then create a sub-menu for the `d` key for **d**ark mode.
Then 3 actions will be added to the sub-menu:

* `0` to turn off dark mode
* `1` to turn on dark mode
* `space` or space bar to toggle dark mode

To do this we'll define nested tables that will go into the `mapping` variable that
the `whick-key` `register` function takes to define the menus.

```lua
local wd_map = { -- (W)indow/Color Submmappings > (D)ark Mode SubMappings
    name = "Dark Mode",
    ["0"] = { "<cmd>DarkModeOff<CR>", "DarkModeOff" }, -- Dark Mode Off (0)
    ["1"] = { "<cmd>DarkModeOn<CR>", "DarkModeOn" }, -- Dark Mode On (1)
    [" "] = { "<cmd>DarkModeToggle<CR>", "ToggleDarkMode"}, -- Toggle Dark Mode
}

local w_map = { -- (W)indow/Colors mappings
    name = "(W)indow/UI",
    ["d"] = { wd_map, "(D)ark Mode" } -- Submappings following d for dark mode
}

local mappings = {

    ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" },  -- Close current file
    ["e"] = { "<cmd>Lazy<CR>", "Plugin Manager" }, -- E is for Extensions
    ["q"] = { "<cmd>wqall!<CR>", "Quit" }, -- Quit Neovim after saving the file
    ["w"] = w_map, -- Submappings following w
}
```

### Which Key Dark Mode Notes

* The `wd_map` defines the actions within the dark mode sub-menu.
  * The commands are defined just like before.
    * The key is set by `["SOME_KEY"]`.
    * The associated command is set with the first entry in the table.
    * The second entry is the description that shows up in the menu.
* The `w_map` defines the actions within the window menu.
  * The `name` key is the name of the menu.
  * This menu for now only includes its sub-menu for dark mode.
    * Add a submenu by including another nested table of menu items.
    * Set the key like any other menu item, in this case `d` for dark mode.
* To add this tree of sub-menus for window/UI and its nested dark mode menu...
  * Set the key map associated with the menu to the `w_map` table, `w` for window.
  * This will then show the menu when you press `<leader>w`.
  * Then add the table representing the sub-menu and key maps to that key.

## Summary

Now we've added some color schemes and configured them.
We've also shown how to use some basic lua to add functionality to the editor.
Finally we've added some key-bindings to access the functionality and
shown how to setup up nested key-bindings to the menu system of `which-key`.
