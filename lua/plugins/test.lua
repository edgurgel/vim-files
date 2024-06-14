return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
    "jfpedroza/neotest-elixir",
  },
  ft = { "elixir", "ruby" },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-rspec"),
        require("neotest-elixir"),
      }
    })

    vim.keymap.set('n', '<leader>tr', require("neotest").run.run, { remap = false })
    vim.keymap.set('n', '<leader>td', function()
      require("neotest").output.open({ enter = true })
    end, { remap = false })
  end
}
