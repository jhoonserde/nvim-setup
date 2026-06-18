return {
	"mfussenegger/nvim-lint",
	event = {
		"BufWritePost",
		"BufReadPost",
		"InsertLeave",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			kotlin = { "ktlint" },
			cpp = { "cppcheck" },
			lua = { "luacheck" },
		}

		vim.api.nvim_create_autocmd({
			"BufWritePost",
			"BufReadPost",
			"InsertLeave",
		}, {
			callback = function()
				lint.try_lint()
			end,
		})

		local setmap = vim.keymap.set

		--- Keymap lintter

		setmap("n", "<leader>tl", lint.try_lint, {
			desc = "Trigger linting for the current file",
		})

		setmap("n", "<leader>ll", vim.diagnostic.setloclist, {
			desc = "Location list diagnostic",
		})

		setmap("n", "<leader>ql", vim.diagnostic.setqflist, {
			desc = "QuickFix list diagnostic",
		})

		setmap("n", "<leader>dl", vim.diagnostic.open_float, {
			desc = "Diagnostic line",
		})

		setmap("n", "]d", vim.diagnostic.goto_next, {
			desc = "Go to next diagnostic",
		})

		setmap("n", "[d", vim.diagnostic.goto_prev, {
			desc = "Go to previous diagnostic",
		})
	end,
}
