vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use 'folke/tokyonight.nvim'

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
    
    -- for language server protocols 
    use 'neovim/nvim-lspconfig'

    -- code completion
    use {'neoclide/coc.nvim', branch = 'release'}

    -- code completion
    use {'ms-jpq/coq_nvim', branch = 'coq' }
end)
