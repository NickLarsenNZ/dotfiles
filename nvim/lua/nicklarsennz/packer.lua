vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- self manage packer: https://github.com/wbthomason/packer.nvim
  use('wbthomason/packer.nvim')

  -- fuzzy finder with preview window: https://github.com/nvim-telescope/telescope.nvim
  use({'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = {{'nvim-lua/plenary.nvim'}, {'nvim-tree/nvim-web-devicons'}}})

  -- file browser: https://github.com/nvim-telescope/telescope-file-browser.nvim
  use({'nvim-telescope/telescope-file-browser.nvim', requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }})

  -- rose-pine theme
  use({'rose-pine/neovim', as = 'rose-pine'})
  vim.cmd('colorscheme rose-pine') -- want to move this elsewhere

  -- code folding: https://github.com/kevinhwang91/nvim-ufo
  use({'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'})

  -- Language parsers or something? https://github.com/nvim-treesitter/nvim-treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- kind of like tabs: https://github.com/ThePrimeagen/harpoon
  use('ThePrimeagen/harpoon')

  -- undo: https://github.com/mbbill/undotree
  use('mbbill/undotree')

  -- git: https://github.com/tpope/vim-fugitive
  use('tpope/vim-fugitive')

  -- comment line/block: 
  -- use({'numToStr/Comment.nvim', config = function() require('Comment').setup() end}) -- can the setup be moved to after/plugin
  use('tpope/vim-commentary')

  -- pretty status line
  use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }

  -- indent indicator
  use "lukas-reineke/indent-blankline.nvim"

  -- lsp: https://github.com/VonHeikemen/lsp-zero.nvim
  use({'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', requires = {
    -- We cannot use mason on nixos because of linker issues
    -- See: https://discourse.nixos.org/t/why-does-this-binary-executable-give-cannot-execute-required-file-not-found/33948/3
    -- {'williamboman/mason.nvim', run = function() pcall(vim.cmd, 'MasonUpdate') end},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'simrat39/rust-tools.nvim'},
    {'lvimuser/lsp-inlayhints.nvim'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }})


end)
