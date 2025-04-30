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
    version = "*",
    dependencies = {
      "zbirenbaum/copilot.lua",
      "nvim-lua/plenary.nvim", -- For curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    keys = {
      { '<leader>cc', ':CopilotChatToggle<CR>', remap = false, desc = 'Copilot Chat' }
    },
    cmd = "CopilotChat",
    config = function()
      require("CopilotChat").setup {
        debug = false, -- Enable debugging
        -- See Configuration section for rest
      }
    end
  },
}
