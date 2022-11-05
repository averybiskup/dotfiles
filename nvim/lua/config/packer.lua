vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use 'folke/tokyonight.nvim'
    use 'morhetz/gruvbox'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use 'tiagovla/tokyodark.nvim'

    -- telescope (fzf)
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- statusline
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- code completion
    use {'ms-jpq/coq_nvim', branch = 'coq' }

    -- lsp installer
    use "williamboman/nvim-lsp-installer"

end)
