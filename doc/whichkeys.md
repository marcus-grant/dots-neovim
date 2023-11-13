# Which-Key Plugin

The first plugin to be used in this series is the
[folke/which-key.nvim][which-key-gh] plugin.
It provides a UI popup on the leader key press that
provides a visible menu of keys to press next to
perform any assignable action.
This helps build out a large number of key-maps that
lead to a more efficient but also memorable workflow.
No new files will be made for this section we're only going to
edit the `lua/plugins.lua` file and `lua/keys.lua` file.

## Installation

Since this is the first actual plugin to be installed,
it's worth going over the process of using the lazy plugin manager.
Since we created the `lua/plugins.lua` file before,
and only gave it a return value of an empty table,
this is the placeholder to define the plugins to install.

To install any plugin with lazy in this workflow,
open the `lua/plugins.lua` file and
add a table entry.
In this case it's going to be `"folke/which-key.nvim"` and
we're going to specify to lazy load it.
Lazy loading is a feature of lazy that allows which is that
it will only load the plugin when it's needed.
This is as opposed to older plugin managers that would load every
plugin at startup regardless of whether it's going to be used or not.

```lua
-- lua/plugins.lua
return {
  -- Which-Key extension
  "folke/which-key.nvim",
  lazy = true,
}
```

Depending on the version of lazy plugin manager,
once the `plugins.lua` file is saved,
lazy will automatically install the plugin.
If not,
then run `:Lazy` to bring up the Lazy plugin manager menu and
enter the capitalized `I` key to ask it to install the plugin.
You should get a prompt reporting a successful install if it worked.

## Which-Key Key Bindings

Now to configure our new key-bindings for which-key along with
configuring the plugin itself.
To preface, which-key works best for key-bindings that are
prefixed with the leader key.
A good use for leader key commands are the more advanced ones,
maybe ones that aren't built-in to neovim or
ones that are more complicated to remember.
I think of my leader key commands as ones that in GUI based editors I would
have to go into a menu to find or invoke.

The which-key configurations will all go into
the same `lua/keys.lua` file that we've been using before to
define built-in key-bindings.
Open it up and add any of the following configurations within the `setup` table.
Feel free to skip or edit some lines that aren't to your liking.

```lua
-- lua/keys.lua

-- Previous key bindings here
-- ...

-- Which-Key Setup Section
local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
    return
end

local setup = {
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
            enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
            suggestions = 20, -- how many suggestions should be shown in the list?
        },
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true, -- bindings for prefixed with g
        },
    },
    -- add operators that will trigger motion and text object completion
    -- to enable all native operators, set the preset / operators plugin above
    -- operators = { gc = "Comments" },
    key_labels = {
        -- override the label used to display some keys. It doesn't effect WK in any other way.
        -- For example:
        -- ["<space>"] = "SPC",
        -- ["<cr>"] = "RET",
        -- ["<tab>"] = "TAB",
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+", -- symbol prepended to a group
    },
    popup_mappings = {
        scroll_down = "<c-d>", -- binding to scroll down inside the popup
        scroll_up = "<c-u>", -- binding to scroll up inside the popup
    },
    window = {
        border = "rounded", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        winblend = 0,
    },
    layout = {
        height = { min = 4, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 3, -- spacing between columns
        align = "left", -- align columns left, center or right
    },
    ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    triggers = "auto", -- automatically setup triggers
    -- triggers = {"<leader>"} -- or specify a list manually
    triggers_blacklist = {
        -- list of mode / prefixes that should never be hooked by WhichKey
        -- this is mostly relevant for key maps that start with a native binding
        -- most people should not need to change this
        i = { "j", "k" },
        v = { "j", "k" },
    },
}

local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {

    ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" },  -- Close current file
    ["p"] = { "<cmd>Lazy<CR>", "Plugin Manager" }, -- Invoking plugin manager
    ["q"] = { "<cmd>wqall!<CR>", "Quit" }, -- Quit Neovim after saving the file
    ["w"] = { "<cmd>w!<CR>", "Save" }, -- Save current file

}

which_key.setup(setup)
which_key.register(mappings, opts)
```

### WhichKeys Notes

This code block above that was added to `lua/keys.lua`,
has quite a few configurations.
And more will be added later,
so it's important to understand a few things.

* The earlier portion of this addition is configuring...
  * Basic behaviors of the which-key popup
    * Think showing of registers, breadcrumbs, operators, motions, etc.
  * The size and appearance of the popup 
  * What keys prompt the popup
* The `local mappings` configuration defines what keymaps get defined with menus.

## References

* [GitHub: folke/which-key.nvim][which-key-gh]

<!-- Hidden References -->
[which-key-gh]: https://github.com/folke/which-key.nvim "GitHub: folke/which-key.nvim"
