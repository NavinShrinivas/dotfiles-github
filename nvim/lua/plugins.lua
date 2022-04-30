
-- This file can be loaded by calling `lua require('plugins')` from your init.vim


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'KadoBOT/nvim-spotify', 
    requires = 'nvim-telescope/telescope.nvim',
    config = function()
        local spotify = require'nvim-spotify'

        spotify.setup {
            refresh_token = "AQBNVEm5XjhLx13dP3eLGAwge-HDMxfAJXl6ot-VHUbzM8zLbH4_PWhZtGqaIeuCaAoeI9cyeM5o75MhAQEaNBIchdaX2lFTiq3mLqA3geSK3ijWx7x5GgR33c0zQQ6ildo"        }
    end,
    run = 'make'
   }


  -- File explorer tree.
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = {
      'NvimTreeOpen',
      'NvimTreeFocus',
      'NvimTreeToggle',
    },
    config = function()
      require('plugins/nvim-tree')
    end
  }

  --Themes and Icons.
  use { 'folke/tokyonight.nvim' }
  use { 'bluz71/vim-nightfly-guicolors' }
  use { 'bluz71/vim-moonfly-colors' }
  use { 'shaunsingh/nord.nvim' }
  use { 'frenzyexists/aquarium-vim' }
  use {
    'kyazdani42/nvim-web-devicons',
    event = 'BufEnter'
  }
  use 'petertriho/nvim-scrollbar'
end)
