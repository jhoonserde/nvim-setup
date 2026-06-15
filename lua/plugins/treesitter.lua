return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    build = ':TSUpdate',
    config = function()
    require("nvim-treesitter.configs").setup({
        ensure_installed = {
            "rust",
            "javascript",
            "zig",
            "kotlin",
            "cpp",
            "json",
            "java",
        },

    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true }

    })

  end
}
