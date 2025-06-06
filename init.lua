----- Basic configurations -----

-- Opt configs
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.undofile = false
vim.opt.termguicolors = true

-- Keybinds
vim.g.mapleader = ","

vim.g.clipboard = "unnamedplus" 

vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Global configs
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

----- Setup -----
require("config.lazy")
require("config.mason")

require("mason").setup()
require("mason-lspconfig").setup()

----- Theme configurations -----
vim.cmd[[colorscheme tokyonight]]

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
