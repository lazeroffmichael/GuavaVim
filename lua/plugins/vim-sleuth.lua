-- Detect tabstop and shiftwidth automatically
return { "tpope/vim-sleuth", event = { "BufReadPre", "BufNewFile" } }
