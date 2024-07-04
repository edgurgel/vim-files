return {
  "nvim-neotest/neotest",
  version = "*",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
    "jfpedroza/neotest-elixir",
  },
  keys = {
    { '<leader>tr', "<cmd>lua require('neotest').run.run()<CR>",                     remap = false, desc = "Run nearby test" },
    { '<leader>ts', "<cmd>lua require('neotest').run.run({ suite = true })<CR>",     remap = false, desc = "Run test suite" },
    { '<leader>tf', "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>",   remap = false, desc = "Run test file" },
    { '<leader>ta', "<cmd>lua require('neotest').run.attach()<CR>",                  remap = false, desc = "Attach to test" },
    { '<leader>td', "<cmd>lua require('neotest').output.open({ enter = true })<CR>", remap = false, desc = "Test diagnostics" },
    { '<leader>tp', "<cmd>lua require('neotest').output_panel.toggle()<CR>",         remap = false, desc = "Test panel" },
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-rspec"),
        require("neotest-elixir"),
      }
    })
  end
}
