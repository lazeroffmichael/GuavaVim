local Util = require("core.utils")

-- Fuzzy Finder (files, lsp, etc)
return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = "make",
      cond = function() return vim.fn.executable("make") == 1 end,
    },
  },
  keys = {
    -- find files
    { "<leader><space>", Util.find_files(), desc = "Telescope: Find Files (auto)" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope: Find Files (all)" },
    { "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", desc = "Telescope: Find Files (hidden)" },
    { "<leader>fb", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Telescope: Switch Buffer" },

    -- search
    { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Telescope: Search Grep" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Telescope: Search Key Maps" },
  },
}
