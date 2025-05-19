local map = vim.keymap.set

map("n", "<leader>tt", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })
map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run file test" })
map("n", "<leader>to", ":Neotest output<CR>", { desc = "Show test output" })
map("n", "<leader>ts", ":Neotest summary<CR>", { desc = "Show test summary" })

return {
  { "nvim-neotest/nvim-nio" },
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-jest" {
            jestCommand = "npx jest --",
            jestConfigFile = function()
              local custom_config_path = vim.fn.getcwd() .. "/config/jest/jest.config.ts"
              if vim.fn.filereadable(custom_config_path) == 1 then
                return custom_config_path
              end

              local root_config_path = vim.fn.getcwd() .. "/jest.config.ts"
              if vim.fn.filereadable(root_config_path) == 1 then
                return root_config_path
              end

              print "[WARN] No Jest config found! Falling back to root directory"
              return vim.fn.getcwd()
            end,
            cwd = function(path)
              return vim.fn.fnamemodify(path, ":h") -- Берём директорию файла
            end,
          },
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    },
  },
}
