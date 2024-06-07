return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    'nvim-treesitter/nvim-treesitter-context'
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "elixir", "eex", "heex", "lua", "ruby", "java", "javascript", "html", "xml", "terraform", "vim", "erlang", "sql", "typescript", "yaml", "dockerfile", "bash", "markdown" },
      highlight = { enable = true },
      indent = { enable = true },
    })
    vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"
  end,
}
