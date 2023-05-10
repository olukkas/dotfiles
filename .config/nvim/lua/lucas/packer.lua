-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }


    -- Using Packer
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use 'lewis6991/gitsigns.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }


    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }


    use('tpope/vim-rhubarb')

    -- Useful plugin to show you pending keybinds.
    use('folke/which-key.nvim')


    -- "gc" to comment visual regions/lines
    use('numToStr/Comment.nvim')

    -- autoclose html tags
    use "windwp/nvim-autopairs"

    -- autoclose and rename tsx 'tags'
    use 'windwp/nvim-ts-autotag'

    -- icons
    use 'nvim-tree/nvim-web-devicons'

    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }

    --File browsing
    use 'nvim-telescope/telescope-file-browser.nvim'
end)
