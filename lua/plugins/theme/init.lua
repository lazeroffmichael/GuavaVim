-- The colorschem is set in init.lua
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
    priority = 1000,
    lazy = true,
    opts = require("plugins.theme.configs.tokyonight"),
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = require("plugins.theme.configs.catppuccin"),
  },
}
