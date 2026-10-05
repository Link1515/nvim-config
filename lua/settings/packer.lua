-- Loaded by lua/settings/init.lua; use :source % to reload after editing.

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('Mofiqul/vscode.nvim')
    -- Keep the configs API used in after/plugin/treesitter.lua.
    use { 'nvim-treesitter/nvim-treesitter', branch = 'master', run = ':TSUpdate' }
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            -- Compatible with Neovim 0.10 and lsp-zero v2.
            {'neovim/nvim-lspconfig', tag = 'v1.8.0'}, -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            tag = 'v1.11.0',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim', tag = 'v1.32.0'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }

    use('akinsho/toggleterm.nvim')
end)
