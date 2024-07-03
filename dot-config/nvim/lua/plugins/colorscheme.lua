return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- auto, latte, frappe, macchiato, mocha
        integrations = {
          notify = true,
          noice = true,
          neotree = true,
          neotest = true,
          beacon = true,
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end,
  }
}
