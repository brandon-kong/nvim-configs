----- Require -----
require("config.lazy")

----- Basic configurations -----

-- Opt configs
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.undofile = false


vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Global configs
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


----- Theme configurations -----
vim.cmd[[colorscheme tokyonight]]

----- Setup -----

