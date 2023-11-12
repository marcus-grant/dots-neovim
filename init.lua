-- init.lua
-- Author: Marcus Grant
-- Created: 2023-11-10
-- Description:
-- Main entrypoint for neovim to configure editor, installed plugins and
-- and custom lua code.
-- Mainly used for in-order loading of other lua files.

require "options"
require "lazy-config"
require "keys"

