return {
    {
        "nvim-telescope/telescope.nvim",
        opts = function(_, conf)
            conf.defaults.path_display = { "smart" }
            return conf
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = function(_, conf)
            conf.view.width = 40
            conf.renderer.indent_markers.enable = true
            conf.renderer.highlight_git = "all"
            conf.renderer.icons.glyphs.folder.arrow_closed = ""
            conf.renderer.icons.glyphs.folder.arrow_open = ""
            conf.actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            }
            conf.filters.custom = { ".DS_Store" }
            conf.git = {
                enable = true,
                ignore = false,
            }
            return conf
        end,
    },
}
