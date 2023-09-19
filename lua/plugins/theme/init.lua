return {
  -- Transparency
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    keys = {
      { "<leader>tw", "<cmd>TransparentToggle<cr>", desc = "[t]oggle [w]indow transparent" },
    },
    opts = {},
  },

  {
    "folke/tokyonight.nvim",
    priority = 10000,
    lazy = false,
    opts = require("plugins.theme.configs.tokyonight"),
  },
}
