-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "catppuccin",
    --transparency = true,
}

M.nvdash = {
    load_on_startup = true,
    header = {
        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
    },
    buttons = {
        { txt = "  > Toggle file explorer", keys = "SPC e", cmd = "<cmd>NvimTreeToggle<CR>" },
        { txt = "󰱼  > Find File", keys = "SPC ff", cmd = "<cmd>Telescope find_files<CR>" },
        { txt = "  > Find Word", keys = "SPC fw", cmd = "<cmd>Telescope live_grep<CR>" },
        { txt = "󰁯  > Restore Session For Current Directory", keys = "SPC wr", cmd = "<cmd>SessionRestore<CR>" },
        { txt = "  > Quit NVIM", keys = "q", cmd = "qa" },
    },
}

return M
