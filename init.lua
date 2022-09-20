-- [[
-- Created on 2021-12-28
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- My NeoVim configurations, all submodules get loaded here (in-order).
-- No other logic or configuration should get used here.

require('defaults')
require('plugins')
require('appearance')
require('fzf')
require('keymap')

-- function _G.LoadConfigs()
    -- local nvim_modules = {
        -- 'defaults',     -- Should be early
        -- 'plugins',      -- Should be one of the first
        -- 'appearance',   -- Should be early, but after defaults
        -- 'fzf',          -- Should be before keymap
        -- 'keymap',       -- Keymap should be near the end to override
    -- }
    -- for _, mod in ipairs(nvim_modules) do
        -- -- print(vim.env.HOME .. '/.config/nvim/lua/' .. mod .. '.lua')
        -- -- dofile(vim.env.HOME .. '/.config/nvim/lua/' .. mod .. '.lua')
        -- local ok, _ = pcall(require, mod)
        -- if not ok then
            -- error('Error loading ' .. module '\n\n' .. err)
        -- end
    -- end
    -- print('Loaded configs')
-- end
-- LoadConfigs()
