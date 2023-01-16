local fn = vim.fn;
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  -- List Plugins
  -- Add you plugins here:
  use 'wbthomason/packer.nvim' -- packer can manage itself

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Autopair
  use 'windwp/nvim-autopairs'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Indent line
  use 'lukas-reineke/indent-blankline.nvim'

  -- LSP Config
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Octo
  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function ()
      require"octo".setup()
    end
  }

  -- Status Line
  use 'nvim-lualine/lualine.nvim'

  use 'simrat39/symbols-outline.nvim'

  -- Color schemes
  -- use 'navarasu/onedark.nvim'
  -- use 'folke/tokyonight.nvim'
  -- use 'vv9k/bogster'
  use "rebelot/kanagawa.nvim"

  -- Automatically set up your config after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
