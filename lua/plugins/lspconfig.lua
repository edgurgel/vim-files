return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    lspconfig.elixirls.setup({
      -- you need to specify the executable command mannualy for elixir-ls
      cmd = { "/Users/eduardo.gurgelpinho/.elixirls/elixir-ls-1.12-24.3/language_server.sh" },
      -- set default capabilities for cmp lsp completion source
      capabilities = capabilities,
    })
    lspconfig.solargraph.setup({
      -- set default capabilities for cmp lsp completion source
      capabilities = capabilities,
    })
  end,
}
