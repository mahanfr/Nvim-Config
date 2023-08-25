vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Auto Close all open Bracket/Paren
    use 'rstacruz/vim-closer'

    -- Telescope File Navigation
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Vim Tmux Navigation
    use 'christoomey/vim-tmux-navigator'

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'rush-rs/tree-sitter-asm' }

    -- creates a tree of changes on a file
    use('mbbill/undotree')

    -- Git Plugin for nvim
    use('tpope/vim-fugitive')

    -- File Icons
    use 'nvim-tree/nvim-web-devicons'

    -- Air Line
    use 'vim-airline/vim-airline'

    -- Theme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Airline themes
    use 'vim-airline/vim-airline-themes'

    -- Neovim Language Server
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}
end)

