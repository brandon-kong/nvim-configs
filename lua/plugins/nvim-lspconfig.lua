return {
  "neovim/nvim-lspconfig",
  config = function()
	local lspconfig = require('lspconfig')
	lspconfig.clangd.setup({})
    lspconfig.pyright.setup({})
    lspconfig.ts_ls.setup({})
	lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'vim' }
					}
				}
			}
		})
  end,
}
