return {
  {
    'Wansmer/treesj',
    keys = {
      { "<leader>b", "<cmd>TSJToggle<cr>", desc = "Toggle block" }
    },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({})
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-context',
      'RRethy/nvim-treesitter-endwise',
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "elixir", "eex", "heex", "lua", "ruby", "java", "javascript", "html", "xml", "terraform", "vim", "erlang", "sql", "typescript", "yaml", "dockerfile", "bash", "markdown", "toml", "vimdoc" },
        highlight = { enable = true },
        indent = { enable = true },
        endwise = {
          enable = true,
        },
      })
      vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"
    end,
  }
}
