-- Basic settings
vim.g.netrw_banner = 0      -- Disable file browser banner
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

-- Syntax highlighting and filetype plugins
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking test",
    callback = function()
        vim.hl.on_yank()
    end,
})
