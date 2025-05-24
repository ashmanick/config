local map = vim.keymap.set

-- Debug
map("n", "<leader>du", function()
    require("dapui").toggle()
end, { desc = "Toggle Debug UI" })
map("n", "<leader>db", function()
    require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
map("n", "<leader>ds", function()
    require("dap").continue()
end, { desc = "Start" })
map("n", "<leader>dn", function()
    require("dap").step_over()
end, { desc = "Step Over" })

return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local ok, dap = pcall(require, "dap")
            if not ok then
                return
            end
            dap.configurations.typescript = {
                {
                    type = "node2",
                    name = "node attach",
                    request = "attach",
                    program = "${file}",
                    cwd = vim.fn.getcwd(),
                    sourceMaps = true,
                    protocol = "inspector",
                },
            }
            dap.adapters.node2 = {
                type = "executable",
                command = "node-debug2-adapter",
                args = {},
            }
        end,
        dependencies = {
            "mxsdev/nvim-dap-vscode-js",
        },
    },
    {
        "rcarriga/nvim-dap-ui",
        config = function()
            require("dapui").setup()

            local dap, dapui = require("dap"), require("dapui")

            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open({})
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close({})
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close({})
            end
        end,
        dependencies = {
            "mfussenegger/nvim-dap",
        },
    },
}
