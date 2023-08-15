return {
  "christoomey/vim-tmux-navigator",
  event = "VeryLazy",
  init = function()
    -- vim-tmux-navigator
    -- stylua: start ignore
    vim.keymap.set({ "i", "n", "v" }, "<C-k>", "<cmd>TmuxNavigateUp<cr><esc>", { desc = "Move cursor to top pane" })
    vim.keymap.set(
      { "i", "n", "v" },
      "<C-j>",
      "<cmd>TmuxNavigateDown<cr><esc>",
      { desc = "Move cursor to bottom pane" }
    )
    vim.keymap.set({ "i", "n", "v" }, "<C-h>", "<cmd>TmuxNavigateLeft<cr><esc>", { desc = "Move cursor to left pane" })
    vim.keymap.set(
      { "i", "n", "v" },
      "<C-l>",
      "<cmd>TmuxNavigateRight<cr><esc>",
      { desc = "Move cursor to right pane" }
    )
    -- stylua: end ignore
  end,
}
