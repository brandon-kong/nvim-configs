-- Load primary keymappings and lazy first (for keymaps and plugins)
require("config.leader")
require("config.lazy")

local function require_config_modules(directory, prefix, ignore)
	local config_path = vim.fn.stdpath("config") .. "/lua/" .. directory
	local modules_loaded = 0
	for _, file in ipairs(vim.fn.readdir(config_path)) do
		if file:match("%.lua$") and not ignore[file] then
			local module = prefix .. "." .. file:gsub("%.lua$", "")
			require(module)
			modules_loaded = modules_loaded + 1
		end
	end
	vim.notify(string.format("Loaded %d modules in %s", modules_loaded, config_path))
end

-- Dynamically require everything else in lua/config
local ignore_config = {
	["leader.lua"] = true,
	["lazy.lua"] = true,
	["plugins"] = true,
}

-- Dynamically require all lua files except the ones in ignore list
require_config_modules("config", "config", ignore_config)

-- Optionally: require plugin *.lua files
require_config_modules("plugins", "plugins", {})

require_config_modules("lsp", "lsp", {})

-- Enable the LSPs
vim.lsp.enable("luals")
vim.lsp.enable("clangd")

vim.notify("Neovim loaded!")
