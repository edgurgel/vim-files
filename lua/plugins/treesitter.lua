return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "elixir", "eex", "heex", "lua", "ruby", "java", "javascript", "html", "xml", "terraform", "vim", "erlang", "sql", "typescript", "yaml", "dockerfile", "bash", "markdown" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
