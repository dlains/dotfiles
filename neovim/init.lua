require("vim._core.ui2").enable({})

-- Options
require("options")
require("keymaps")

-- Plugins
require('plugins')

-- Set up plugins with dependencies
require('treesitter') -- Set up before LSP for better highlighting
require('lsp')
