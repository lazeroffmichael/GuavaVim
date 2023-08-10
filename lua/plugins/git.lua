return {
  {
    "tpope/vim-fugitive",
    lazy = true,
    cmd = { "G" },
  },
  {
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    event = {"BufReadPre", "BufNewFile"},
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
      numhl = true,
      on_attach = function(bufnr)
        vim.keymap.set(
          "n",
          "<leader>gp",
          require("gitsigns").prev_hunk,
          { buffer = bufnr, desc = "Git: Go to Previous Hunk" }
        )
        vim.keymap.set(
          "n",
          "<leader>gn",
          require("gitsigns").next_hunk,
          { buffer = bufnr, desc = "Git: Go to Next Hunk" }
        )
        vim.keymap.set(
          "n",
          "<leader>ph",
          require("gitsigns").preview_hunk,
          { buffer = bufnr, desc = "Git: Preview Hunk" }
        )
        vim.keymap.set(
          "n",
          "<leader>gh",
          require("gitsigns").stage_hunk,
          { buffer = bufnr, desc = "Git: Stage Current Hunk" }
        )
        vim.keymap.set(
          "n",
          "<leader>ghu",
          require("gitsigns").undo_stage_hunk,
          { buffer = bufnr, desc = "Git: Undo Stage Hunk" }
        )
        vim.keymap.set(
          "n",
          "<leader>gl",
          require("gitsigns").setloclist,
          { buffer = bufnr, desc = "Git: Location List For Hunks" }
        )
        vim.keymap.set(
          "n",
          "<leader>gq",
          require("gitsigns").setqflist,
          { buffer = bufnr, desc = "Git: Quickfix List For Hunks" }
        )
        vim.keymap.set(
          "n",
          "<leader>gb",
          require("gitsigns").toggle_current_line_blame,
          { buffer = bufnr, desc = "Git: Quickfix List For Hunks" }
        )
      end,
    },
  },
}
