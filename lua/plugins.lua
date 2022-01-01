-- [[
-- Created on 2021-12-28
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- The plugins to load, in order, using vim-plug
-- No other logic or configuration should get used here.
-- ]]

print('Module: Plugin manager loaded')

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand to reload neovim whenever plugins.lua updates
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

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
