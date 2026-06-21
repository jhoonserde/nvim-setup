return {
	"stevearc/oil.nvim",
	lazy = false,
	dependencies = {},
	opts = {
		default_file_explorer = true,
		keymaps = {
			["<C-t>"] = false,
			["<C-h>"] = false,
			["<C-r>"] = "actions.refresh",
			["<C-p>"] = {
				callback = function()
					local oil = require("oil")
					oil.open_preview({ vertical = true, split = "botright" }, function(err)
						if not err then
							vim.api.nvim_command("vertical resize 30")
						end
					end)
				end,
			},
		},
		float = { preview_split = "right" },
	},
	keys = {
		{ "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
	},
}
