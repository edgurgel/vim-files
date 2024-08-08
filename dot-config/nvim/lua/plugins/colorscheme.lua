return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    version = "*",
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- auto, latte, frappe, macchiato, mocha
        integrations = {
          beacon = true,
          cmp = true,
          gitsigns = true,
          illuminate = true,
          indent_blankline = { enabled = true },
          lsp_trouble = true,
          neotest = true,
          neotree = true,
          noice = true,
          notify = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
          which_key = true,
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end,
  }
}
