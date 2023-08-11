local M = {}

-- Checks the cwd if there is a ./git directory. We then return the corresponding
-- telescope find function.
function M.find_files()
  return function()
    local builtin = "find_files"
    if vim.loop.fs_stat(vim.loop.cwd() .. "/.git") then builtin = "git_files" end
    local opts = {}
    opts.show_tracked = true
    require("telescope.builtin")[builtin](opts)
  end
end

local enabled = true
function M.toggle_diagnostics()
  enabled = not enabled
  if enabled then
    vim.diagnostic.enable()
    print("Enabled diagnostics")
  else
    vim.diagnostic.disable()
    print("Disabled diagnostics")
  end
end

M.icons = {
  Text = "󰉿",
  Table = "",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰜢",
  Variable = "󰀫",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "󰑭",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "󰈇",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "",
  Package = "",
  Copilot = "",
  Calendar = "",
  Tag = "",
  Null = "󰟢",
}

return M
