require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {'lua_ls', 'ts_ls', 'pyright' },
    automatic_installation = true
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").ts_ls.setup {}

