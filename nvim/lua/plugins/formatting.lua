local map = vim.keymap.set

map({ "n", "v" }, "<leader>mf", function()
  require("conform").format {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  }
end, { desc = "Format file or range (in visual mode)" })

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      local conform = require "conform"

      conform.setup {
        formatters_by_ft = {
          lua = { "stylua" },
          css = { "prettier" },
          html = { "prettier" },
          javascript = { "eslint_d" },
          typescript = { "eslint_d" },
          typescriptreact = { "eslint_d" },
          javascriptreact = { "eslint_d" },
        },
        format_on_save = {
          timeout_ms = 500,
          async = false,
          lsp_fallback = true,
        },
      }
    end,
  },
}
