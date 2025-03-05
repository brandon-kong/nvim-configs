require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {'clangd', 'lua_ls', 'ts_ls', 'clangd' },
    automatic_installation = true
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").ts_ls.setup {}
require("lspconfig").clangd.setup {}


