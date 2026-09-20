-- Basic settings
-- vim.g.netrw_banner = 0      -- Disable file browser banner
vim.o.number = true         -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.tabstop = 4           -- Number of spaces a tab represents
vim.o.softtabstop = 4       -- Number of spaces for a soft tab
vim.o.shiftwidth = 4        -- Number of spaces for each indentation
vim.o.expandtab = true      -- Convert tabs to spaces
vim.o.smartindent = true    -- Automatically indent new lines
vim.o.wrap = false          -- Disable line wrapping
vim.o.cursorline = true     -- Highlight the current line
vim.o.termguicolors = true  -- Enable 24-bit RGB colors
vim.o.inccommand = "split"  --
vim.o.splitbelow = true     -- Split help window below
vim.o.splitright = true     -- Split help to the right
vim.o.autocomplete = true   -- Turn on language autocomplete
vim.o.signcolumn = "yes"    -- Allow space for messages next to numbers
vim.o.winborder = "rounded" -- Show a border around dialog windows

-- Keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')

-- Plugins
--   Tokyonight = color scheme
--   MiniPick = 
--   Nvim-Lspconfig = Language Server Protocol configuration helper
--   Nvim-Web-Devicons = Font icons used by LuaLine
--   Nvim-LuaLine = Improved Neovim status line
vim.pack.add({
    { src = "https://github.com/folke/tokyonight.nvim.git" },
    { src = "https://github.com/echasnovski/mini.pick" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" }
})

require('mini.pick').setup()

vim.keymap.set('n', '<leader>f', ':Pick files<CR>')

-- Language Server Protocol
vim.lsp.enable({
    "lua_ls",
    "clangd"
})

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.lsp.config('clangd', {
    cmd = { 'clangd' },
    filetypes = { 'c' },
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
        },
    },
})

vim.keymap.set('n', '<leader>se', vim.diagnostic.open_float)

require("lualine").setup {
    options = {
        theme = "tokyonight"
    }
}

vim.cmd [[colorscheme tokyonight]]
