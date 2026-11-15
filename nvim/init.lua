-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.lsp.enable("qmlls")
vim.lsp.config("qmlls", {
  cmd = { "qmlls6" },
})
