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
