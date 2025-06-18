require("nvchad.options")

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- add yours here!

local o = vim.o

o.tabstop = 4 -- 2 spaces for tabs (prettier default)
o.shiftwidth = 4 -- 2 spaces for indent width
o.expandtab = true -- expand tab to spaces
o.autoindent = true -- copy indent from current line when starting new one

-- o.cursorlineopt ='both' -- to enable cursorline!

-- Глобальные настройки фолдинга
vim.opt.foldmethod = "expr" -- Используем Treesitter для фолдов
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99 -- Все фолды развернуты при открытии
vim.opt.foldnestmax = 5 -- Максимальная вложенность фолдов
vim.opt.foldminlines = 3 -- Минимум 3 строки для сворачиван

vim.opt_local.conceallevel = 2
