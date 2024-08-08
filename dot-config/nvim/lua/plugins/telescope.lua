return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
      "CopilotC-Nvim/CopilotChat.nvim",
      'rcarriga/nvim-notify',
      -- {
      --   "nvim-telescope/telescope-live-grep-args.nvim",
      --   -- This will not install any breaking changes.
      --   -- For major updates, this must be adjusted manually.
      --   version = "^1.0.0",
      -- },
    },
    cmd = "Telescope",
    keys = {
      -- { '<C-p>',       "<cmd>lua require('telescope.builtin').find_files()<CR>",     noremap = true, desc = 'Find files' },
      { '<leader>rg',  "<cmd>lua require('telescope.builtin').live_grep()<CR>",            noremap = true, desc = 'Live grep' },
      { '<leader>git', "<cmd>lua require('telescope.builtin').git_status()<CR>",           noremap = true, desc = 'Git status' },
      { '<leader>ref', "<cmd>lua require('telescope.builtin').lsp_references()<CR>",       noremap = true, desc = 'LSP References' },
      { '<leader>sym', "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", noremap = true, desc = 'LSP Symbols' },
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
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      local builtin = require('telescope.builtin')
      -- require("telescope").load_extension("live_grep_args")
      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("notify")
    end
  },
}
