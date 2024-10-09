vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use { "folke/tokyonight.nvim", as = "tokyonight",
  config = function()
     vim.cmd.colorscheme "tokyonight-night"
     end
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v3.x',
    requires = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'}
    }
   }

  use('nvim-lua/plenary.nvim')
  use {
     "ThePrimeagen/harpoon",
     branch = "harpoon2",
     dependencies = { 
                     { "nvim-lua/plenary.nvim" },
                     { "nvim-treesitter/nvim-treesitter"} 
                   }
  }
   

  use 'jbyuki/venn.nvim'

  use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    
   })

   use {
      '0styx0/abbreinder.nvim',
      requires = {
         {
            '0styx0/abbremand.nvim',
            module = 'abbremand'
         }
      },
      config = function()
         require'abbreinder'.setup()
      end,
      event = 'BufRead'
   }

   use { "ibhagwan/fzf-lua",
      requires = { "nvim-tree/nvim-web-devicons" }
   }
end)

