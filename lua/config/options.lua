local home = os.getenv("HOME") or os.getenv("USERPROFILE")

-- LSP Support
vim.lsp.enable('luals')
vim.lsp.enable('clangd')

vim.api.nvim_set_option("clipboard", "unnamed")

-- Options
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = home .. "./.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- netrw stuff
vim.g.netrw_banner = 0
