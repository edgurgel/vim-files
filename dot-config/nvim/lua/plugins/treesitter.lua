return {
  {
    'Wansmer/treesj',
    keys = {
      { "<leader>b", "<cmd>TSJToggle<cr>", desc = "Toggle block" }
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('treesj').setup({})
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-context',
      'RRethy/nvim-treesitter-endwise',
      'RRethy/nvim-treesitter-textsubjects'
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "elixir", "eex", "heex", "lua", "ruby", "java", "javascript", "html", "xml", "terraform", "vim", "erlang", "sql", "typescript", "yaml", "dockerfile", "bash", "markdown", "toml", "vimdoc" },
        highlight = { enable = true },
        indent = { enable = true },
        endwise = {
          enable = true,
        },
        textsubjects = {
          enable = true,
          prev_selection = ',', -- (Optional) keymap to select the previous selection
          keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
            ['i;'] = { 'textsubjects-container-inner', desc = "Select inside containers (classes, functions, etc.)" },
          },
        },
      })

      vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"
    end,
  }
}
