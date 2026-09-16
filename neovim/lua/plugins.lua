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
        'folke/tokyonight.nvim',           -- Theme (load last after all functionality is configured)
        lazy = false,
        priority = 1000,
        opts = {}
    }
})
