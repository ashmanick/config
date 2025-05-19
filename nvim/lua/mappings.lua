require "nvchad.mappings"

local map = vim.keymap.set

-- Basic
map("i", "jj", "<ESC>")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>s", "<cmd>w<CR>", { desc = "Save" })

map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close All Buffers" })
