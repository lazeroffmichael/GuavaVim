local M = {}

local client_capabilities = vim.lsp.protocol.make_client_capabilities()
M.capabilities = require("cmp_nvim_lsp").default_capabilities(client_capabilities)

-- stylua: ignore start
local function lsp_keymaps(bufnr)
  vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "[c]ode [d]iagnostics", buffer = bufnr })
  vim.keymap.set("n", "<leader>cl", vim.cmd.LspInfo, { desc = "[c]ode [l]sp info", buffer = bufnr })
  vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "[c]ode [r]ename", buffer = bufnr })
  vim.keymap.set("n", "gd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, { desc = "[g]oto [d]efinition" })
  vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "[g]oto [r]eferences" } )
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[g]oto [D]eclaration", buffer = bufnr })
  vim.keymap.set("n", "gI", function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end, { desc = "[g]oto [I]mplementation", buffer = bufnr })
  vim.keymap.set("n", "gy", function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end, { desc = "[g]oto T[y]pe Definition", buffer = bufnr })
  vim.keymap.set("n", "gds", require("telescope.builtin").lsp_document_symbols, {desc = "[g]o [d]ocument [s]ymbols", buffer = bufnr})
  vim.keymap.set("n", "gws", require("telescope.builtin").lsp_dynamic_workspace_symbols, {desc = "[g]o [w]orkspace [s]ymbols", buffer = bufnr})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover", buffer = bufnr })
  vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { desc = "[g]oto signature help", buffer = bufnr })
  vim.keymap.set("i", "<c-k>", vim.lsp.buf.signature_help, { desc = "[g]oto signature help (i)", buffer = bufnr })
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous [d]iagnostic", buffer = bufnr })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next [d]iagnostic", buffer = bufnr })
  vim.keymap.set({ "n", "v" } , "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action", buffer = bufnr })
end
-- stylua: ignore end

M.on_attach = function(_, bufnr) lsp_keymaps(bufnr) end

return M
