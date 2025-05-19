return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "eslint_d",
        "js-debug-adapter",
        "typescript-language-server",
        "prisma-language-server",
      },
    },
  },
}
