return {
	"stevearc/oil.nvim",
	lazy = false,
	dependencies = {},
	opts = {
		default_file_explorer = true,
		keymaps = {
			["e?"] = { "actions.show_help", mode = "n" },
			["<CR>"] = "actions.select",
			["<C-t>"] = false,
			["<C-h>"] = false,
			["<C-s>"] = { "actions.select", opts = { tab = true } },
			["<C-p>"] = "actions.preview",
			["<C-c>"] = { "actions.close", mode = "n" },
			["<C-r>"] = "actions.refresh",
			["-"] = { "actions.parent", mode = "n" },
			["_"] = { "actions.open_cwd", mode = "n" },
			["`"] = { "actions.cd", mode = "n" },
			["e~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
			["es"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
			["ex"] = "actions.open_external",
			["e."] = { "actions.toggle_hidden", mode = "n" },
			["e\\"] = { "actions.toggle_trash", mode = "n" },
		},
	},
	keys = {
		{ "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
	},
}
