return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  version = "*",
  opts = {},
  config = function()
    require("ibl").setup()
  end
}
