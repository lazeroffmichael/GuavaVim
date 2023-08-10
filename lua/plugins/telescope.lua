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
    { "<leader><space>", Util.find_files(), desc = "find files (auto)" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "[f]ind [f]iles (all)" },
    { "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", desc = "[f]ind [h]idden (files)" },
    { "<leader>fb", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "[f]ind [b]uffer" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "[f]ind [r]ecent" },


    -- search
    { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "[s]earch [a]ll (grep)" },
    { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "[s]earch [b]uffer" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "[s]earch [k]eys" },
    { "<leader>sc", "<cmd>Telescope commands<cr>", desc = "[s]earch [c]ommands" },
    { "<leader>sC", "<cmd>Telescope command_history<cr>", desc = "[s]earch [C]ommand history" },
    { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "[s]earch [d]iagnostics (buffer)" },
    { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "[s]earch [D]iagnostics (workspace)" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "[s]earch [h]elp Pages" },
    { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "[s]earch [m]arks" },
    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "[s]earch [M]an Pages" },
    { "<leader>sw", "<cmd>Telescope grep_string word_match=-w<cr>", desc = "[s]earch [w]ord (cursor)" },
    { "<leader>sW", "<cmd>Telescope grep_string<cr>", mode = "v", desc = "[s]earch [W]ord (highlight)" },

    -- git
    { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "[g]it [c]ommits" },
  },
}
