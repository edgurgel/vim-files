return {
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = false
        },
        panel = {
          enabled = false
        }
      })
    end
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      "zbirenbaum/copilot.lua",
      "nvim-lua/plenary.nvim", -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    keys = {
      { '<leader>cc', ':CopilotChat<CR>', remap = false, desc = 'Copilot Chat' }
    },
    config = function()
      require("CopilotChat").setup {
        debug = false, -- Enable debugging
        -- See Configuration section for rest
      }
    end
  },
}
