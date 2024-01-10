-- lua/plugins.lua
-- Author: Marcus Grant
-- Created: 2023-11-10
-- Description:
-- This will manage all the plugins for lazy to load.

-- Plugins get returned from this module as a table.
return {
    -- Plugin entries go here

    -- Which-Key extension
    { "folke/which-key.nvim", lazy = true },

    -- Gruvbox
    { "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
        config = true },

    -- Melange
    { "savq/melange-nvim" },

    -- Tokyo Night
    { "folke/tokyonight.nvim" },

    -- LuaLine
    { 'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' } },

    -- fzf-lua
    { "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function() -- calling `setup` is optional for customization
            require("fzf-lua").setup({})
        end
    }, -- icon support

    -- comment.nvim
    {
        "numToStr/Comment.nvim",
    },
    -- { "terrortylor/nvim-comment",
        -- config = function()
        --     require('nvim_comment').setup({ create_mappings = false })
        -- end
    -- },
}

