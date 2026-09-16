vim.lsp.config('clangd', {
    cmd = { 'clangd' },
    filetypes = { 'c', 'h' },
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = {"vim"} },
        },
    },
})

vim.lsp.enable({
    "lua_ls",
    "clangd"
})

vim.keymap.set('n', 'gl', vim.diagnostic.open_float)

vim.o.autocomplete = true
