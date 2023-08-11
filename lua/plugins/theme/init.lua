return {
  {
    "tiagovla/tokyodark.nvim",
    priority = 10000,
    lazy = true,
    opts = require("plugins.theme.configs.tokyodark").opts,
  },

  {
    "Shatur/neovim-ayu",
    name = "ayu",
    priority = 10000,
    lazy = true,
    opts = require("plugins.theme.configs.ayu").opts,
  },
}
