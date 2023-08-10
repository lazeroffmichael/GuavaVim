local Util = require("core.utils")

-- Fuzzy Finder (files, lsp, etc)
return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  lazy = true,
  cmd = { "Telescope" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
  },
  keys = {
    -- find files
    { "<leader><space>", Util.find_files(), desc = "Telescope: Find Files (auto)" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope: Find Files (all)" },
    { "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", desc = "Telescope: Find Files (hidden)" },
    { "<leader>fb", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Telescope: Switch Buffer" },

    -- search
    { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Telescope: Search Grep" },
    { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Telescope: Search Buffer" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Telescope: Search Key Maps" },
    { "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Telescope: Commands" },
    { "<leader>sC", "<cmd>Telescope command_history<cr>", desc = "Telescope: Command History" },
    { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Telescope: Document Diagnostics" },
    { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Telescope: Workspace diagnostics" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Telescope: Help Pages" },
    { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Telescope: Jump to Mark" },
    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    { "<leader>sw", "<cmd>Telescope grep_string word_match=-w<cr>", desc = "Telescope: Search Current Word" },
    { "<leader>sW", "<cmd>Telescope grep_string<cr>", mode = "v", desc = "Telescope: Search Current Word" },

    -- git
    { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "commits" },
  },
}
