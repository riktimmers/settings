--- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	use {
	  'nvim-telescope/telescope.nvim',
    commit="84b9ba066d1860f7a586ce9cd732fd6c4f77d1d9",
    -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

  use {
    "riktimmers/boilerplate_plugin"
  }

	--use { "ellisonleao/gruvbox.nvim" }
  use { "folke/tokyonight.nvim" }

	use {
		'romus204/tree-sitter-manager.nvim', 
   	}

	use { 'ThePrimeagen/harpoon' }

	use { 'tpope/vim-fugitive' }

    -- Use release branch (recommend)
    use {'neoclide/coc.nvim', branch = 'release'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'de-vri-es/vim-urscript'
  }

  use {
    'nvim-tree/nvim-web-devicons'
  }

  use {
    'nvim-treesitter/nvim-treesitter-context'
  }

  use {
      "nickjvandyke/opencode.nvim"
  }

  use {
      "folke/snacks.nvim"
    }
  
  --use {'Exafunction/codeium.vim'}
    --[[
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},
	    {'williamboman/mason.nvim'},
	    {'williamboman/mason-lspconfig.nvim'},

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},
	    {'hrsh7th/cmp-buffer'},
	    {'hrsh7th/cmp-path'},
	    {'saadparwaiz1/cmp_luasnip'},
	    {'hrsh7th/cmp-nvim-lsp'},
	    {'hrsh7th/cmp-nvim-lua'},

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},
	    {'rafamadriz/friendly-snippets'},
	  }}
      ]]--

end)


