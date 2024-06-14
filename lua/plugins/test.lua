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


    local toggle_watch = function()
      require("neotest").watch.toggle(vim.fn.expand("%"))
    end

    local show_test_diagnostics = function()
      require("neotest").output.open({ enter = true })
    end

    vim.keymap.set('n', '<leader>tw', toggle_watch, { remap = false, desc = "Watch file and run tests" })

    vim.keymap.set('n', '<leader>tr', require("neotest").run.run, { remap = false, desc = "Run test" })
    vim.keymap.set('n', '<leader>td', show_test_diagnostics, { remap = false, desc = "Show test diagnostics" })
  end
}
