return {
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()

    local servers = { "html", "cssls", "ts_ls", "css_variables", "cssmodules_ls" }
    vim.lsp.enable(servers)
  end,
}
