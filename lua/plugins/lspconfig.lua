return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'lukas-reineke/lsp-format.nvim',
    'nvim-cmp'
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lsp-format").setup {}

    local on_attach = function(client, bufnr)
      require("lsp-format").on_attach(client, bufnr)
    end

    lspconfig.elixirls.setup({
      -- you need to specify the executable command mannualy for elixir-ls
      cmd = { "/Users/eduardo.gurgelpinho/dev/elixir-ls/release/language_server.sh" },
      -- set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.solargraph.setup({
      -- set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.terraformls.setup({
      -- set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.tsserver.setup({
      -- set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      -- on_attach = on_attach,
    })
  end,
}
