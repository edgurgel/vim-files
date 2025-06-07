return {
  {
    "bassamsdata/namu.nvim",
    config = function()
      require("namu").setup({
        -- Enable the modules you want
        namu_symbols = {
          enable = true,
          options = {}, -- here you can configure namu
        },
        -- Optional: Enable other modules if needed
        ui_select = { enable = false }, -- vim.ui.select() wrapper
        colorscheme = {
          enable = false,
          options = {
            -- NOTE: if you activate persist, then please remove any vim.cmd("colorscheme ...") in your config, no needed anymore
            persist = true,      -- very efficient mechanism to Remember selected colorscheme
            write_shada = false, -- If you open multiple nvim instances, then probably you need to enable this
          },
        },
      })
    end,
    keys = {
      { "<leader>ss", ":Namu symbols<cr>", desc = 'Jump to LSP symbol' },
    }
  },
  {
    'neovim/nvim-lspconfig',
    version = "*",
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
        ensure_installed = { "lua_ls", "elixirls", "ts_ls", "harper_ls", "taplo", "denols" },
      }
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      require("lsp-format").setup({})


      local on_attach = function(client, bufnr)
        if client["name"] ~= 'solargraph' then
          require("lsp-format").on_attach(client, bufnr)
        end

        require("lsp_signature").on_attach({ hint_prefix = "󱃖 " }, bufnr)

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

      lspconfig.ts_ls.setup({
        -- Set default capabilities for cmp lsp completion source
        capabilities = capabilities,
        on_attach = on_attach,
        single_file_support = false,
        root_dir = lspconfig.util.root_pattern("package.json"),
      })

      lspconfig.denols.setup {
        on_attach = on_attach,
        root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
      }

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
}
