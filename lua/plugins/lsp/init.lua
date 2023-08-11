-- LSP Configuration
--
return {
  "neovim/nvim-lspconfig",
  -- BufReadPost: Triggered after a file has been read into a buffer
  -- BufNewFile: Triggered when a new buffer is created
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "LSPInfo", "LspInstall", "LspUninstall" },
  config = function()
    local signs = { Error = "", Warn = "", Hint = "󰌵", Info = "" }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
  end,
  dependencies = {
    -- Configure sane lsp for neovim and lua api stuff
    { "folke/neodev.nvim", event = "LspAttach", opts = {} },

    -- Useful status updates for LSP
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { "j-hui/fidget.nvim", tag = "legacy", opts = {} },

    -- Install all LSP's, DAP's, Linters, and Formatters here.
    -- https://github.com/williamboman/mason.nvim/issues/130#issuecomment-1217773757
    {
      "williamboman/mason.nvim",
      cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
      config = function()
        local ensure_installed = {
          -- LSP's
          "pyright",
          "ruff-lsp",
          "lua-language-server", -- aka lua_ls
          "marksman",
          -- Formatters
          "black",
          "prettierd",
          "stylua",
        }

        require("mason").setup({
          ensure_installed = ensure_installed,
          max_concurrent_installers = 10,
        })

        vim.api.nvim_create_user_command(
          "MasonInstallAll",
          function() vim.cmd("MasonInstall " .. table.concat(ensure_installed, " ")) end,
          {}
        )
      end,
    },

    -- Signature help
    -- It looks like the sig help is just slow on require("") functions
    {
      "ray-x/lsp_signature.nvim",
      event = "LSPAttach",
      opts = {
        floating_window = false,
        hint_prefix = "󰌋 ", -- no emoji just in case terminal doesn't like
      },
    },

    -- Mason lspconfig setup
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        -- Server list

        -- Ensure that our configured servers are installed
        local ensure_installed = {
          "pyright",
          "ruff_lsp",
          "lua_ls",
          "marksman"
        }

        local disabled_servers = {
          -- Servers to disable should go here
        }

        local mason_lspconfig = require("mason-lspconfig")

        -- Auto install servers
        mason_lspconfig.setup({
          ensure_installed = ensure_installed,
        })

        mason_lspconfig.setup_handlers({
          function(server_name)
            -- If we have a disabled server -> then don't do anything
            for _, name in pairs(disabled_servers) do
              if name == server_name then return end
            end

            local opts = {
              on_attach = require("plugins.lsp.handlers").on_attach,
              capabilities = require("plugins.lsp.handlers").capabilities,
            }

            -- Get the config for the server if it exists
            local ok, server = pcall("plugins.lsp.configs." .. server_name)
            if ok then opts.settings = server end

            require("lspconfig")[server_name].setup(opts)
          end,
        })
      end,
    },
  },
}
