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
        },
    },
}
