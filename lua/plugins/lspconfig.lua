return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'lukas-reineke/lsp-format.nvim',
    'nvim-cmp'
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = { "lua_ls", "elixirls" },
    }
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lsp-format").setup {}

    local on_attach = function(client, bufnr)
      require("lsp-format").on_attach(client, bufnr)

      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      -- other keybinds that use bufopts
      -- FIXME
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
      vim.keymap.set("i", "<a-cr>", vim.lsp.buf.code_action, bufopts) -- same binding, just bound to "alt+enter" like in intellij
      -- other configuration for on_attach
    end

    lspconfig.elixirls.setup({
      -- you need to specify the executable command mannualy for elixir-ls
      -- cmd = { "/Users/eduardo.gurgelpinho/dev/elixir-ls/release/language_server.sh" },
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

    lspconfig.lua_ls.setup {
      -- set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
      on_init = function(client)
        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
          runtime = {
            -- Tell the language server which version of Lua you're using
            -- (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT'
          },
          -- Make the server aware of Neovim runtime files
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
              -- Depending on the usage, you might want to add additional paths here.
              -- "${3rd}/luv/library"
              -- "${3rd}/busted/library",
            }
            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
            -- library = vim.api.nvim_get_runtime_file("", true)
          }
        })
      end,
      settings = {
        Lua = {}
      }
    }
  end,
}
