-- LSP Configuration
--
return {
  "neovim/nvim-lspconfig",
  -- BufReadPost: Triggered after a file has been read into a buffer
  -- BufNewFile: Triggered when a new buffer is created
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "LSPInfo", "LspInstall", "LspUninstall" },
  dependencies = {
    -- Configure sane lsp for neovim and lua api stuff
    { "folke/neodev.nvim",
      event = "LspAttach",
      opts = {}
    },

    -- Useful status updates for LSP
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { "j-hui/fidget.nvim",
      tag = "legacy",
      opts = {}
    },

    -- Automatically install LSPs to stdpath for neovim
    { "williamboman/mason.nvim",
      config = true,
      cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog"},
    },

    -- Mason lspconfig setup
    { "williamboman/mason-lspconfig.nvim",
      config = function()
        -- Server list
        local servers = {
          pyright = {},
          lua_ls = {
            Lua = {
              workspace = { checkThirdParty = false },
              telemetry = { enable = false },
            },
          },
        }

        local mason_lspconfig = require("mason-lspconfig")

        -- Configure the server list
        mason_lspconfig.setup({
          ensure_installed = vim.tbl_keys(servers),
        })

        mason_lspconfig.setup_handlers({
          function(server_name)
            require("lspconfig")[server_name].setup({
              capabilities = require("plugins.lsp.handlers").capabilities,
              on_attatch = require("plugins.lsp.handlers").on_attach,
              settings = servers[server_name],
              filetypes = (servers[server_name] or {}).filetypes,
            })
          end
        })
      end
    }
  },
}
