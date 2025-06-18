return {
	"theprimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function(_, opts)
		local harpoon = require("harpoon")
		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
		vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		vim.keymap.set("n", "<C-h>", function () harpoon:list():select(1) end, { remap = false })
		vim.keymap.set("n", "<C-t>", function () harpoon:list():select(2) end, { remap = false })
		vim.keymap.set("n", "<C-s>", function () harpoon:list():select(3) end, { remap = false })
		vim.keymap.set("n", "<C-a>", function () harpoon:list():select(4) end, { remap = false })

		vim.keymap.set("n", "<leader>[", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<leader>]", function() harpoon:list():next() end)

	end
}
