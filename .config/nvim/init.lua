--[[
Neovim init file
Version: 0.2.0 - 2022/04/19
--]]

-- Import Lua modules
require('packer_init');
require('core/options');
require('core/autocmds');
require('core/keymaps');
require('core/colors');
require('plugins/cmp').setup();
require('plugins/telescope').setup();
require('plugins/treesitter').setup();
require('plugins/todo').setup();
require('plugins/lspconfig');
require('plugins/handlers').setup();
require('plugins/null-ls').setup();
require('plugins/blankline').setup();
require('plugins/lualine').setup();
