-- lua/lazy.lua
-- Author: Marcus Grant
-- Created: 2023-11-10
-- Description:
-- Here is where the lazy.nvim plugin manager is
-- installed if not present, configured and
-- instructed of which plugins to install and how.

-- print("hello")
-- Setup the path where lazy will store plugins and where manager itself lives
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy already exists, if not use git to clone the latest stable vers
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy Options
lazy_opts = {}

-- Now we add this line to tell lazy.nvim what file defines the plugins
require("lazy").setup("plugins", lazy_opts)
