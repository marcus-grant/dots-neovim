-- [[
-- Created on 2021-12-28
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- My NeoVim configurations, all submodules get loaded here (in-order).
-- No other logic or configuration should get used here.

-- TODO: Make this into a local list and loop through in order
--require('plugins')
--require('defaults')

nvim_modules = {
	'plugins',
	'defaults',
}

function _G.LoadConfigs()
	for _, mod in ipairs(nvim_modules) do
		print(vim.env.HOME .. '/.config/nvim/lua/' .. mod .. '.lua')
		dofile(vim.env.HOME .. '/.config/nvim/lua/' .. mod .. '.lua')
	end
end
LoadConfigs()

-- TODO move these to keymaps
-- local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
-- local keymap = vim.api.nvim_set_keymap

-- keymap()
