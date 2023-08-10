vim.g.mapleader = " "

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

vim.keymap.set("n", "<leader>wj", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<leader>wk", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<leader>wl", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<leader>wh", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- windows
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right" })

-- better indenting
vim.keymap.set("v", "<", "<gv", { desc = "Remove indention" })
vim.keymap.set("v", ">", ">gv", { desc = "Add indention" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Text Up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Text Down" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Append Below Lines To Current" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump Down Half Page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump Up Half Page" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste But Don't Save" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank To System Clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete To Void Register" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Don't Use Q" })

vim.keymap.set("n", "<leader>rp", "<cmd>!python3 %<CR>", { desc = "Run Python File" })

vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

vim.keymap.set({ "n", "x" }, "gw", "*N", { desc = "Search word under cursor" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
vim.keymap.set("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- save file
vim.keymap.set("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

vim.keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
vim.keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })
