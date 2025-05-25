return {
    {
        "windwp/nvim-ts-autotag",
        event = "VeryLazy",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "windwp/nvim-ts-autotag",
        },
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "typescript",
                "javascript",
                "json",
                "yaml",
                "markdown",
                "markdown_inline",
                "dockerfile",
                "gitignore",
                "tsx",
                "scss",
                "c",
            },
            highlight = { enable = true },
            indent = { enable = true },
            folding = {
                enable = true,
                disable = { "markdown", "markdown_inline" },
                foldmethod = "expr",
                foldexpr = "nvim_treesitter#foldexpr()",
            },
        },
    },
}
