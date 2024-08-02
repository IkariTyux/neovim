---                     ----
-- Install Packer plugins --
---                     ----

-- Packer Itself

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

-- Theme
use('folke/tokyonight.nvim')

-- Telescope

use {
	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}

-- Tabs
use ('romgrk/barbar.nvim')

-- Treesitter
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')

-- Nvim Tree
use('nvim-tree/nvim-tree.lua')
use('nvim-tree/nvim-web-devicons')

-- Resume position
use 'ethanholz/nvim-lastplace'

use 'nosduco/remote-sshfs.nvim'
use 'nvim-lua/plenary.nvim'

-- Undotree
use('mbbill/undotree')

-- UnderBar
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use 'tpope/vim-fugitive'

use "mhinz/vim-startify"

use "lukas-reineke/indent-blankline.nvim"

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

-- LSP Zero
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {

-- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

end)
