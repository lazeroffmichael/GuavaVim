return {
  {
    "tpope/vim-fugitive",
    lazy = true,
    cmd = { "G", "Git", "Gedit" },
    init = function()
      vim.keymap.set("n", "<leader>g", vim.cmd.Git, { desc = "[g]it fugitive" })
      vim.keymap.set("n", "<leader>gg", "<cmd>Gedit :<cr>", { desc = "[g]it fugitive full" })
    end,
  },

  {
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
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
      -- stylua: ignore
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        map("n", "]h", gs.next_hunk, "Next Hunk")
        map("n", "[h", gs.prev_hunk, "Prev Hunk")
        map({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", "[g]it [h]unk [s]tage")
        map({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", "[g]it [h]unk [r]eset")
        map("n", "<leader>ghu", gs.undo_stage_hunk, "[g]it [h]unk [u]ndo stage")
        map("n", "<leader>ghp", gs.preview_hunk, "[g]it [h]unk preview")
        map("n", "<leader>ghb", function() gs.blame_line({ full = true }) end, "[g]it [h]unk [b]lame")
        map("n", "<leader>ghd", gs.diffthis, "[g]it [h]unk [d]iff this")
        map("n", "<leader>ghD", function() gs.diffthis("~") end, "[g]it [h]unk [D]iff This ~")
        map("n", "<leader>gS", gs.stage_buffer, "[g]it [S]tage buffer")
        map("n", "<leader>gR", gs.reset_buffer, "[g]it [R]eset Buffer")
        map({ "o", "x" }, "vh", ":<C-U>Gitsigns select_hunk<CR>", "[v]isual [h]unk")
      end,
    },
  },
}
