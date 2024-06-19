return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
    "jfpedroza/neotest-elixir",
  },
  keys = {
    { '<leader>tr', "<cmd>lua require('neotest').run.run()<CR>",                   remap = false, desc = "Run nearby test" },
    { '<leader>tf', "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", remap = false, desc = "Run test file" },
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
