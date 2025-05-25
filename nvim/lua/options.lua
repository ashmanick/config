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
