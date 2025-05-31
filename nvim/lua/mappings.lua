require("nvchad.mappings")

local map = vim.keymap.set

-- Basic
map("i", "jj", "<ESC>")
map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>cx", function()
    require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })

-- Folding
map("n", "zR", ":lua vim.opt.foldlevel = 99<CR>", { desc = "Expand all folds" })
map("n", "zM", ":lua vim.opt.foldlevel = 0<CR>", { desc = "Collapse all folds" })
