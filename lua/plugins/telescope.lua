return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      -- {
      --   "nvim-telescope/telescope-live-grep-args.nvim",
      --   -- This will not install any breaking changes.
      --   -- For major updates, this must be adjusted manually.
      --   version = "^1.0.0",
      -- },
    },
    config = function()
      require("telescope").setup {
        extensions = {
          fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          },
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }

            -- pseudo code / specification for writing custom displays, like the one
            -- for "codeactions"
            -- specific_opts = {
            --   [kind] = {
            --     make_indexed = function(items) -> indexed_items, width,
            --     make_displayer = function(widths) -> displayer
            --     make_display = function(displayer) -> function(e)
            --     make_ordinal = function(e) -> string
            --   },
            --   -- for example to disable the custom builtin "codeactions" display
            --      do the following
            --   codeactions = false,
            -- }
          }
        }
      }
      local builtin = require('telescope.builtin')
      -- require("telescope").load_extension("live_grep_args")
      require('telescope').load_extension('fzf')
      require("telescope").load_extension("ui-select")

      vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true })
      vim.keymap.set('n', '<leader>rg', builtin.live_grep, { noremap = true })
      vim.keymap.set('n', '<leader>git', builtin.git_status, { noremap = true })
    end
  },
}
