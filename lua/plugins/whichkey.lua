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
      ["]"] = { name = "+next" },
      ["["] = { name = "+prev" },
      ["<leader>t"] = { name = "+test/toggle" },
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
      ["<leader>f"] = { name = "+file/find/format" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
