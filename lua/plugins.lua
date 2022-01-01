-- [[
-- Created on 2021-12-28
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- The plugins to load, in order, using vim-plug
-- No other logic or configuration should get used here.
-- ]]

print('Module: Plugin manager loaded')


return require('packer').startup(function()
	-- Packer to manage itself.
	use 'wbthomason/packer.nvim'

	-- Plenary combines a lot of common utility functions.
	-- Many plugins will use them to not reuse code.
	-- Think of it like LoDash in JS.
	use 'nvim-lua/plenary.nvim'

	-- Telescope, a more integrated fuzzy finder than fzf
	-- Trying it out for now, maybe I'll go back to fzf
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	-- Colorschemes (only lua based ones).
	-- Lush gets used since it's easier to define colorschemes.
	use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
end)
