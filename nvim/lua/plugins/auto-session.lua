return {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore_enabled = false,
            auto_session_suppress_dirs = { "~/", "~/Develop/", "~/Documents" },
        })

        local map = vim.keymap.set

        -- restore last workspace session for current directory
        map("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
        -- save workspace session for current working directory
        map("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
    end,
}
