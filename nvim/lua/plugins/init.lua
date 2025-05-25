return {
    "neovim/nvim-lspconfig",
    config = function()
        local configs = require("nvchad.configs.lspconfig")
        configs.defaults()

        local servers = { "html", "cssls", "ts_ls", "css_variables", "cssmodules_ls", "jsonls", "yamlls" }
        vim.lsp.enable(servers)

        local on_attach = configs.on_attach
        local capabilities = configs.capabilities
        local lspconfig = require("lspconfig")

        lspconfig.ts_ls.setup({
            on_attach = function(client, bufnr)
                vim.opt.foldmethod = "expr"
                vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
                on_attach(client, bufnr)
            end,
            capabilities = capabilities,
            settings = {
                typescript = {
                    suggest = { completeFunctionCalls = true },
                },
            },
        })
    end,
}
