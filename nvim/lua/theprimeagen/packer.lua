-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground', {})
  use('theprimeagen/harpoon', {})
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
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
	  }
  }
  use("github/copilot.vim")
  use { 'endel/vim-github-colorscheme' }
  use { 'erizocosmico/vim-firewatch' }
  use { 'pappasam/papercolor-theme-slim' }
  use { 'gerardbm/vim-atomic' }
  use { 'rmehri01/onenord.nvim' }
  use { 'NTBBloodbath/sweetie.nvim' }
  use { 'KabbAmine/yowish.vim' }
  use { 'gosukiwi/vim-atom-dark' }

  use { 'preservim/nerdtree' }
  use {
    'psf/black',
    tag='19.10b0',
    config = function()
      vim.g.black_linelength = 79 -- Set the line length to 79
      vim.g.black_auto_mypy = 1 -- Automatically run mypy type checking
      vim.g.black_fast = 1 -- Use the fast mode to format code
    end
  }
end)

