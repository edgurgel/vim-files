return {
  {
    'aaronik/treewalker.nvim',
    event = { "BufReadPost", "BufNewFile" },
    keys = {
      -- { "<C-k>", "<cmd>Treewalker Up<cr>",    desc = "TreeWalker Up",    silent = true, mode = { 'n', 'v' } },
      -- { "<C-j>", "<cmd>Treewalker Down<cr>",  desc = "TreeWalker Down",  silent = true, mode = { 'n', 'v' } },
      -- { "<C-h>", "<cmd>Treewalker Left<cr>",  desc = "TreeWalker Left",  silent = true, mode = { 'n', 'v' } },
      -- { "<C-l>", "<cmd>Treewalker Right<cr>", desc = "TreeWalker Right", silent = true, mode = { 'n', 'v' } },
    },
    -- The following options are the defaults.
    -- Treewalker aims for sane defaults, so these are each individually optional,
    -- and setup() does not need to be called, so the whole opts block is optional as well.
    opts = {
      -- Whether to briefly highlight the node after jumping to it
      highlight = true,

      -- How long should above highlight last (in ms)
      highlight_duration = 250,

      -- The color of the above highlight. Must be a valid vim highlight group.
      -- (see :h highlight-group for options)
      highlight_group = 'CursorLine',
    }
  },
  {
    'Wansmer/treesj',
    -- dir = "~/dev/treesj",
    event = { "BufReadPost", "BufNewFile" },
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
    'andymass/vim-matchup',
    config = function()
      -- vim.g.matchup_matchparen_offscreen = { method = 0 }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    version = "*",
    dependencies = {
      {'nvim-treesitter/nvim-treesitter-context', version = "*"},
      'RRethy/nvim-treesitter-endwise',
      'RRethy/nvim-treesitter-textsubjects'
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "bash",
          "dockerfile",
          "eex",
          "elixir",
          "erlang",
          "git_config",
          "git_rebase",
          "gitattributes",
          "gitcommit",
          "gitignore",
          "heex",
          "html",
          "http",
          "hurl",
          "java",
          "javascript",
          "json",
          "liquid",
          "lua",
          "markdown",
          "ruby",
          "sql",
          "terraform",
          "toml",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        },
        matchup = {
          enable = true, -- mandatory, false will disable the whole extension
        },
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
