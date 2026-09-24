-- Basic settings
-- vim.g.netrw_banner = 0      -- Disable file browser banner
vim.o.number = true         -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.wrap = false          -- Disable line wrapping
vim.o.cursorline = true     -- Highlight the current line
vim.o.scrolloff = 10        --
vim.o.sidescrolloff = 8     --

-- Indentation
vim.o.tabstop = 4           -- Number of spaces a tab represents
vim.o.softtabstop = 4       -- Number of spaces for a soft tab
vim.o.shiftwidth = 4        -- Number of spaces for each indentation
vim.o.expandtab = true      -- Convert tabs to spaces
vim.o.smartindent = true    -- Automatically indent new lines
vim.o.autoindent = true     -- Copy indent from current line

-- Search settings
vim.o.ignorecase = true     -- Ignore case in searches
vim.o.smartcase = true      -- Case sensitive if uppercase in search
vim.o.hlsearch = false      -- Don't highlight search results
vim.o.incsearch = true      -- Show matches as you type

-- Visual settings
vim.o.termguicolors = true  -- Enable 24-bit RGB colors
vim.o.signcolumn = "yes"    -- Allow space for messages next to numbers
vim.o.colorcolumn = "100"   -- Show column at 100 characters
vim.o.showmatch = true      -- Highlight matching brackets
vim.o.matchtime = 2         -- How long to show matching bracket
vim.o.completeopt = "menuone,noinsert,noselect" -- ?
vim.o.pumheight = 10        -- Popup menu height
vim.o.winblend = 0          -- Floating window transparency
vim.o.inccommand = "split"  --
vim.o.splitbelow = true     -- Split help window below
vim.o.splitright = true     -- Split help to the right
vim.o.autocomplete = true   -- Turn on language autocomplete
vim.o.winborder = "rounded" -- Show a border around dialog windows

-- File handling settings
vim.o.backup = false        -- Don't create backup files
vim.o.writebackup = false   -- Don't create backup files before writing
vim.o.swapfile = false      -- Don't create swap files
vim.o.undofile = true       -- Persistent undo
vim.o.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
vim.o.updatetime = 300      -- Faster completion
vim.o.timeoutlen = 500      -- Key timeout duration
vim.o.ttimeoutlen = 0       -- Key code timeout
vim.o.autoread = true       -- Auto reload files changed outside of Neovim
vim.o.autowrite = false     -- Don't auto save

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

vim.cmd.colorscheme("tokyonight")
