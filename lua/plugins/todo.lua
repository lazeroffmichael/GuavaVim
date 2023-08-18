return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {},
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next [t]odo comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous [t]odo comment" },
    { "<leader>xT", "<cmd>TodoTrouble<cr>", desc = "[t]odo (Trouble)" },
    { "<leader>xt", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "[t]odo/fix/fixme (Trouble)" },
    { "<leader>sT", "<cmd>TodoTelescope<cr>", desc = "[s]earch [t]odo" },
    { "<leader>st", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "[s]earch [t]odo/fix/fixme" },
  },
}
