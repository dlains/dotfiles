-- plugins.lua
-- Bootstrap Lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Plugin specifications
require('lazy').setup({
    -- Essential plugins
    {
        'nvim-treesitter/nvim-treesitter', -- Treesitter for syntax highlighting (load early)
        lazy = false,
        build = ':TSUpdate',
        priority = 100
    },
    {
        'neovim/nvim-lspconfig',           -- Base LSP configurations
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        },
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',        -- LSP source for nvim-cmp
            'hrsh7th/cmp-buffer',          -- Buffer source
            'hrsh7th/cmp-path',            -- Path source
            'L3MON4D3/LuaSnip',            -- Snippet engine
            'saadparwaiz1/cmp_luasnip',    -- Snippet source
        },
    },
    {
        'nvim-tree/nvim-tree.lua',          -- File explorer
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        }
    },
    {
        'nvim-telescope/telescope.nvim',    -- Fuzzy finder
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
    {
        'folke/which-key.nvim'             -- Key binding helper
    },
    {
        'folke/tokyonight.nvim',           -- Theme (load last after all functionality is configured)
        lazy = false,
        priority = 1000,
        opts = {}
    }
})
