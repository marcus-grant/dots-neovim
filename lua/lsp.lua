-- lua/lsp.lua
-- Author: Marcus Grant
-- Created: 2024-01-10
-- Description:
-- Manages language servers, completion engines, daps, snippets, etc.

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'als',
        'bashls',
        -- 'clangd',
        'cssls',
        -- 'dockerls',
        -- 'gopls',
        -- 'graphql',
        'html',
        'jsonls',
        -- 'jdtls',
        'tsserver',
        'lua_ls',
        'pyright',
        -- 'sqlls',
        'zk',
    },
})

-- Taken from https://youtu.be/lpQMeFph1RE?si=B-kJOtJkFyDNLZ4e
-- TODO: Figure out how to put these in whichkey w/ better binds for action
local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    -- TODO: Find ways to do this with fzf instead or just w/o telescope
    -- vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- Taken from https://github.com/neovim/nvim-lspconfig
local lspCfg = require('lspconfig')
-- taken from https://github.com/neovim/neovim/issues/21686#issuecomment-1522446128
lspCfg.als.setup { }
lspCfg.lua_ls.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            runtime = { version = 'LuaJIT' },
            diagnostics = { globals = { 'vim', 'require' } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = { enable = false },
        }
    }
}
lspCfg.pyright.setup {}



