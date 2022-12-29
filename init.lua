-- [[
-- Created on 2021-12-28
-- Marcus Grant (https://github.com/marcus-grant)
-- GPLv3
--
-- My NeoVim configurations, all submodules get loaded here (in-order).
-- No other logic or configuration should get used here.

require('defaults')
require('plugins')
require('keymap')
require('appearance')
require('fzf')
require('zk').setup()