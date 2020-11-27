require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}

  -- Language Support
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'tjdevries/nlua.nvim'

  -- Text Editing
  use 'cohama/lexima.vim'
  use 'editorconfig/editorconfig-vim'

  -- UI
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'romgrk/barbar.nvim'
  use 'glepnir/zephyr-nvim'

  -- Tim Pope
  use 'tpope/vim-projectionist'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-repeat'
  use 'tpope/vim-sensible'
  use 'tpope/vim-rsi'
  use 'tpope/vim-abolish'
  use 'tpope/vim-commentary'
  use 'tpope/vim-obsession'
  use 'tpope/vim-endwise'
end)
