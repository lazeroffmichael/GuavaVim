return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    plugins = { spelling = true },
    defaults = {
      mode = { "n", "v" },
      ["g"] = { name = "+goto" },
      -- ["gz"] = { name = "+surround" },
      ["]"] = { name = "+next" },
      ["["] = { name = "+prev" },
      ["ys"] = { name = "+surround" },
      ["ds"] = { name = "+surround" },
      ["cs"] = { name = "+surround" },
      -- ["<leader><tab>"] = { name = "+tabs" },
      -- ["<leader>b"] = { name = "+buffer" },
      -- ["<leader>c"] = { name = "+code" },
      -- ["<leader>f"] = { name = "+file/find" },
      ["<leader>c"] = { name = "+code" },
      ["<leader>g"] = { name = "+git" },
      ["<leader>gh"] = { name = "+hunks" },
      ["<leader>m"] = { name = "+markdown" },
      ["<leader>q"] = { name = "+quit" },
      ["<leader>r"] = { name = "+run" },
      ["<leader>w"] = { name = "+write/windows" },
      ["<leader>h"] = { name = "+harpoon" },
      ["<leader>x"] = { name = "+diagnostics/quickfix" },
      ["<leader>s"] = { name = "+search" },
      ["<leader>f"] = { name = "+file/find" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
