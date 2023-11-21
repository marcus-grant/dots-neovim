# FZF

## Introduction

FZF is a fuzzy finder that can be used to search through
a large collection of entities.
This can be files, text, buffers, git objects, help pages, etc.

## Current Directory

For this part since a lot of the configuration is quite good by default,
there's not a lot of need for a separate file to configure fzf.
Instead we're just going to modify the `plugins.lua` & `keys.lua` files.
You'll see the current configuratin directory below using a `tree` command.

```sh
tree ~/.config/nvim
.
├─ init.lua
└── lua
    ├── appearance.lua
    ├── keys.lua -- Modify to add key binds for FzfLua functions
    ├── lazy-config.lua
    ├── options.lua
    └── plugins.lua -- Modify to load the fzf-lua plugin
```

## Load the Fzf-Lua Plugin

The first thing to do is to load the plugin.
The plugin we're using is the [`ibhagwan/fzf-lua`][fzf-lua-gh] plugin.
This tries to replicate the **really** awesome
[`junegunn/fzf`][fzf-lua-gh] plugin from old-school vim in lua.
To add it simply add the following line to the `plugins.lua` file.

```lua
return {
  -- fzf-lua
  { "ibhagwan/fzf-lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function() -- calling `setup` is optional for customization
          require("fzf-lua").setup({})
      end
  },
}
```

>**Note:** If you want to customize the plugin itself later,
> then you should add another lua file, load it and call the `setup` function
> like above but with a table containing your customizations.

## Key Bindings

Now to map some key bindings for the which key menu.
Note that you can modify these in any way you like,
if you follow the structure of the `keys.lua` file.
To help you out, below is a `Commands` section to fill in bindings.

```lua
-- lua/keys.lua
local mappings = {
  -- other mappings
      ["f"] = { -- (f)ind
        name = "(f)ind",
        ["f"] = { "<cmd>FzfLua files<CR>", "Files "},
        [" "] = { "<cmd>FzfLua live_grep<CR>", "Full Text"},
        ["b"] = { "<cmd>FzfLua buffers<CR>", "Buffers"},
        ["h"] = { "<cmd>FzfLua help_tags<CR>", "Help"},
        ["g"] = { "<cmd>FzfLua git_files<CR>", "Git Files"},
        ["w"] = { "<cmd>FzfLua grep_cword<CR>", "Word"},
        ["c"] = { "<cmd>FzfLua colorschemes<CR>", "Colorschemes"},
        ["k"] = { "<cmd>FzfLua keymaps<CR>", "Keymaps"},
        ["s"] = { "<cmd>FzfLua git_status<CR>", "Git Status"},
    },
}
```

## Commands

These are the command tables taken from the README of the plugin.

### Buffers and Files

| Command          | List                                       |
| ---------------- | ------------------------------------------ |
| `buffers`          | open buffers                               |
| `files`            | `find` or `fd` on a path                       |
| `oldfiles`         | opened files history                       |
| `quickfix`         | quickfix list                              |
| `quickfix_stack`   | quickfix stack                             |
| `loclist`          | location list                              |
| `loclist_stack`    | location stack                             |
| `lines`            | open buffers lines                         |
| `blines`           | current buffer lines                       |
| `tabs`             | open tabs                                  |
| `args`             | argument list                              |

### Search

| Command          | List                                       |
| ---------------- | ------------------------------------------ |
| `grep`             | search for a pattern with `grep` or `rg`       |
| `grep_last`        | run search again with the last pattern     |
| `grep_cword`       | search word under cursor                   |
| `grep_cWORD`       | search WORD under cursor                   |
| `grep_visual`      | search visual selection                    |
| `grep_project`     | search all project lines (fzf.vim's `:Rg`)   |
| `grep_curbuf`      | search current buffer lines                |
| `lgrep_curbuf`     | live grep current buffer                   |
| `live_grep`        | live grep current project                  |
| `live_grep_resume` | live grep continue last search             |
| `live_grep_glob`   | live_grep with `rg --glob` support           |
| `live_grep_native` | performant version of `live_grep`            |

### Tags

| Command          | List                                       |
| ---------------- | ------------------------------------------ |
| `tags`             | search project tags                        |
| `btags`            | search buffer tags                         |
| `tags_grep`        | grep project tags                          |
| `tags_grep_cword`  | `tags_grep` word under cursor                |
| `tags_grep_cWORD`  | `tags_grep` WORD under cursor                |
| `tags_grep_visual` | `tags_grep` visual selection                 |
| `tags_live_grep`   | live grep project tags                     |

### Git

| Command          | List                                       |
| ---------------- | ------------------------------------------ |
| `git_files`        | `git ls-files`                               |
| `git_status`       | `git status`                                 |
| `git_commits`      | git commit log (project)                   |
| `git_bcommits`     | git commit log (buffer)                    |
| `git_branches`     | git branches                               |
| `git_tags`         | git tags                                   |
| `git_stash`        | git stash                                  |

### LSP/Diagnostics

| Command          | List                                       |
| ---------------- | ------------------------------------------ |
| `lsp_references`             | References                       |
| `lsp_definitions`            | Definitions                      |
| `lsp_declarations`           | Declarations                     |
| `lsp_typedefs`               | Type Definitions                 |
| `lsp_implementations`        | Implementations                  |
| `lsp_document_symbols`       | Document Symbols                 |
| `lsp_workspace_symbols`      | Workspace Symbols                |
| `lsp_live_workspace_symbols` | Workspace Symbols (live query)   |
| `lsp_code_actions`           | Code Actions                     |
| `lsp_incoming_calls`         | Incoming Calls                   |
| `lsp_outgoing_calls`         | Outgoing Calls                   |
| `lsp_finder`                 | All LSP locations, combined view |
| `diagnostics_document`       | Document Diagnostics             |
| `diagnostics_workspace`      | Workspace Diagnostics            |
| `lsp_document_diagnostics`   | alias to `diagnostics_document`    |
| `lsp_workspace_diagnostics`  | alias to `diagnostics_workspace`   |

### Misc

| Command          | List                                       |
| ---------------- | ------------------------------------------ |
| `resume`           | resume last command/query                  |
| `builtin`          | fzf-lua builtin commands                   |
| `profiles`         | fzf-lua configuration profiles             |
| `help_tags`        | help tags                                  |
| `man_pages`        | man pages                                  |
| `colorschemes`     | color schemes                              |
| `highlights`       | highlight groups                           |
| `commands`         | neovim commands                            |
| `command_history`  | command history                            |
| `search_history`   | search history                             |
| `marks`            | :marks                                     |
| `jumps`            | :jumps                                     |
| `changes`          | :changes                                   |
| `registers`        | :registers                                 |
| `tagstack`         | :tags                                      |
| `autocmds`         | :autocmd                                   |
| `keymaps`          | key mappings                               |
| `filetypes`        | filetypes                                  |
| `menus`            | menus                                      |
| `spell_suggest`    | spelling suggestions                       |
| `packadd`          | :packadd `<package>`                         |

## References

* [ibhagwan/fzf-lua][fzf-lua-gh]

[fzf-lua-gh]: https://github.com/https://github.com/ibhagwan/fzf-lua "Github: ibhagwan/fzf-lua"
