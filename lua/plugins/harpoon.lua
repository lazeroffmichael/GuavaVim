return {
  "theprimeagen/harpoon",
  lazy = true,
  keys = {
    { "<leader>h", function() require("harpoon.ui").toggle_quick_menu() end, desc = "+harpoon" },
    { "<leader>hg", function() require("harpoon.mark").add_file() end, desc = "[h]arpoon [g]rab" },
    { "<leader>ha", function() require("harpoon.ui").nav_file(1) end, desc = "[h]arpoon File 1" },
    { "<leader>hs", function() require("harpoon.ui").nav_file(2) end, desc = "[h]arpoon File 2" },
    { "<leader>hd", function() require("harpoon.ui").nav_file(3) end, desc = "[h]arpoon File 3" },
    { "<leader>hf", function() require("harpoon.ui").nav_file(4) end, desc = "[h]arpoon File 4" },
  },
}
