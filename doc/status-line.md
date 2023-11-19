# NeoVim Status Line

There's a default status line provided by NeoVim,
essentially a line near the bottom of the editor that
shows a lot of information about the current buffer.
The default status line is rather plain and less informative,
so we're going to use [nvim-lualine/lualine.nvim][lualine-gh],
a *"blazing fast and easy to configure"* status line plugin.
It doesn't look half bad either even without any configuration.

## Directory Structure

There's no extra files in this part.
We're going to add the plugin to the `./lua/plugins.lua` file.
Then we're going to configure it in the `./lua/appearance.lua` file.
If we look at the directory structure like below it should be the same.

```sh
tree ~/.config/nvim
.
├── init.lua
└── lua
    ├── appearance.lua # Modified
    ├── keys.lua
    ├── lazy-config.lua
    ├── options.lua
    └── plugins.lua # Modified
```

## Installation

This is a plugin, so they should be added in the `./lua/plugins.lua` file,
or whatever file you have dedicated to specifying plugins.
All that must be done is to add the following line to the file,
then save it and let the lazy plugin manager do the rest.

```lua
-- lua/plugins.lua
return {
  -- ... other plugins ...

  -- LuaLine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
}
```

Note the `dependencies` field.
This is a list of plugins that must be installed before this one and
it's a supported feature in the lazy plugin manager.
A great way to spruce up UI elements in NeoVim is to include icon fonts.
The `nvim-tree/nvim-web-devicons` plugin is a dependency for LuaLine that
gives it access to a whole host of icons that you'll see really improves
the experience.

## Configuration

Now remember,
all plugins usually require a `require` statement and
many of these require a `setup` function call.
So no new status line will appear until we configure it with
a `require('lualine').setup(options)` call.
We'll use the default configurations explicitly defined for now.
Go to `./lua/appearance.lua` and add the following lines.

```lua
-- lua/appearance.lua
-- ... older configs ...
-- LuaLine Configuration
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
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
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
```

## References

* [GitHub: nvim-lualine/lualine.nvim][lualine-gh]
<!-- Hidden References -->
[lualine-gh]: https://github.com/nvim-lualine/lualine.nvim "GitHub: nvim-lualine/lualine.nvim"