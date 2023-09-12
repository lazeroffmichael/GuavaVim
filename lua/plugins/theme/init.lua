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
    "tiagovla/tokyodark.nvim",
    priority = 10000,
    lazy = true,
    opts = require("plugins.theme.configs.tokyodark"),
  },

  {
    "Shatur/neovim-ayu",
    name = "ayu",
    priority = 10000,
    lazy = true,
    opts = require("plugins.theme.configs.ayu"),
  },

  {
    "kvrohit/mellow.nvim",
    priority = 10000,
    lazy = true,
    config = function() require("plugins.theme.configs.mellow") end,
  },
}
