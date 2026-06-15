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
            lua = { "luacheck" }
        }

        vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
            callback = function()
                lint.try_lint()
            end,
        })

        vim.keymap.set("n", "<leader>ll", function()
            lint.try_lint()
        end, { desc = "Trigger linting for the current file" })
    end,
}
