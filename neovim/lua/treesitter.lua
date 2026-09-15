-- treesitter.lua
require('nvim-treesitter').setup {
    install_dir = vim.fn.stdpath('data') .. '/site'
}

require('nvim-treesitter').install {
    "lua",
    "vim",
    "vimdoc",
    "c",
    "cpp",
    "html",
    "css",
    "json",
    "yaml",
    "markdown",
    "bash",
}
