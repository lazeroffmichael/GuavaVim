return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {},
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next [t]odo comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous [t]odo comment" },
    { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "[t]odo (Trouble)" },
    { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "[t]odo/fix/fixme (Trouble)" },
    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "[s]earch [t]odo" },
    { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "[s]earch [t]odo/fix/fixme" },
  },
}
