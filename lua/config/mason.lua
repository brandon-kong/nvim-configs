require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {'clangd', 'lua_ls', 'ts_ls', 'clangd', 'java_language_server' },
    automatic_installation = true
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").ts_ls.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").java_language_server.setup {}


