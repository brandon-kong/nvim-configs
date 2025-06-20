local builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope Remaps
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Clipboard remaps

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')

-- Move remapping
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- Goto remaps
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap=true, silent=true, buffer=bufnr })

