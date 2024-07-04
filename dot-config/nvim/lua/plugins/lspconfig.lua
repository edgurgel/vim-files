return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',           -- Install dependencies
    'williamboman/mason-lspconfig.nvim', -- Install lsp dependencies
    'lukas-reineke/lsp-format.nvim',     -- Auto format
    'nvim-cmp',                          -- Auto completion
    "ray-x/lsp_signature.nvim",          -- Type signature completion
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = { "lua_ls", "elixirls", "tsserver", "harper_ls", "taplo" },
    }
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lsp-format").setup({})


    local on_attach = function(client, bufnr)
      if client["name"] ~= 'solargraph' then
        require("lsp-format").on_attach(client, bufnr)
      end

      require("lsp_signature").on_attach({}, bufnr)

      local bufopts = { noremap = true, silent = true, buffer = bufnr, desc = 'Code Actions' }
      -- Other keybindings that use bufopts
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
      -- Same binding, just bound to "alt+enter" like in intellij
      vim.keymap.set({ "n", "i" }, "<a-cr>", vim.lsp.buf.code_action, bufopts)
      -- other configuration for on_attach
    end

    lspconfig.taplo.setup({
      -- Set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.harper_ls.setup({
      -- Set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        ["harper-ls"] = {
          linters = {
            spell_check = false,
            spelled_numbers = false,
            an_a = true,
            sentence_capitalization = false,
            unclosed_quotes = true,
            wrong_quotes = false,
            long_sentences = false,
            repeated_words = true,
            spaces = true,
            matcher = true,
            correct_number_suffix = true,
            number_suffix_capitalization = true,
            multiple_sequential_pronouns = true
          }
        }
      },
    })

    lspconfig.elixirls.setup({
      -- Set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.solargraph.setup({
      -- Set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.terraformls.setup({
      -- Set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.tsserver.setup({
      -- Set default capabilities for cmp lsp completion source
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.lua_ls.setup {
      -- Set default capabilities for cmp lsp completion source
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
