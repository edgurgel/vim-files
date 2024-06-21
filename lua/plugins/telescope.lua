return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      "CopilotC-Nvim/CopilotChat.nvim",
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      -- {
      --   "nvim-telescope/telescope-live-grep-args.nvim",
      --   -- This will not install any breaking changes.
      --   -- For major updates, this must be adjusted manually.
      --   version = "^1.0.0",
      -- },
    },
    keys = {
      { '<C-p>',       "<cmd>lua require('telescope.builtin').find_files()<CR>", noremap = true, desc = 'Find files' },
      { '<leader>rg',  "<cmd>lua require('telescope.builtin').live_grep()<CR>",  noremap = true, desc = 'Live grep' },
      { '<leader>git', "<cmd>lua require('telescope.builtin').git_status()<CR>", noremap = true, desc = 'Git status' },
      -- Show copilot chat prompts actions with telescope
      {
        "<leader>cp",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
        end,
        desc = "CopilotChat - Prompt actions",
      },
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
          }
        }
      }
      local builtin = require('telescope.builtin')
      -- require("telescope").load_extension("live_grep_args")
      require('telescope').load_extension('fzf')
      require("telescope").load_extension("ui-select")
    end
  },
}
