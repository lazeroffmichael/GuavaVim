return {
  -- Transparency
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    keys = {
      { "<leader>tt", "<cmd>TransparentToggle<cr>", desc = "[t]oggle [t]ransparent" }
    },
    opts = {}
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
}
