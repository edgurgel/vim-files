return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = false
        },
        panel = {
          enabled = false
        }
      })

      require("CopilotChat").setup {
        debug = false, -- Enable debugging
        -- See Configuration section for rest
      }

      vim.keymap.set('n', '<leader>cc', ':CopilotChat<CR>', { remap = false })
    end
  },
}
