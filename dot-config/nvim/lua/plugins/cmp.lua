return {
  "hrsh7th/nvim-cmp",
  name = "nvim-cmp",
  dependencies = {
    -- Install different completion source
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "zbirenbaum/copilot-cmp",
    "onsails/lspkind.nvim",
    {
      "L3MON4D3/LuaSnip",
      -- Follow latest release.
      version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- Install jsregexp (optional!).
      build = "make install_jsregexp",
      dependencies = { "rafamadriz/friendly-snippets" }
    },
    "saadparwaiz1/cmp_luasnip",
  },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
    require("copilot_cmp").setup()
    local cmp = require("cmp")
    cmp.setup({
      preselect = cmp.PreselectMode.None,
      -- Add different completion source
      sources = cmp.config.sources({
        -- Copilot Source
        { name = "nvim_lsp", group_index = 2 },
        { name = "copilot",  group_index = 3 },
        { name = "path",     group_index = 4 },
        { name = 'luasnip',  group_index = 1 },
        {
          name = 'buffer',
          group_index = 2,
          option = {
            get_bufnrs = function()
              -- Complete from all opened buffers
              return vim.api.nvim_list_bufs()
            end
          }
        }
      }),
      -- using default mapping preset
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<TAB>"] = cmp.mapping.confirm({ select = true }),
      }),
      snippet = {
        -- you must specify a snippet engine
        expand = function(args)
          -- Using neovim v0.10 native snippet feature
          -- you can also use other snippet engines
          -- vim.snippet.expand(args.body)
          require 'luasnip'.lsp_expand(args.body)
        end,
      },
      formatting = {
        format = require('lspkind').cmp_format(),
      },
    })
  end,
}
