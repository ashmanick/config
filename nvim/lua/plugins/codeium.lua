local map = vim.keymap.set

map("i", "<C-g>", function()
    return vim.fn["codeium#Accept"]()
end, { expr = true })

return {
    {
        "Exafunction/codeium.vim",
        lazy = false,
    },
}
