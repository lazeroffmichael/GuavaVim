return {
  "iamcco/markdown-preview.nvim",
  init = function() vim.g.mkdp_filetypes = { "markdown" } end,
  ft = { "markdown" },
  cmd = {
    "MarkdownPreview",
    "MarkdownPreviewStop",
    "MarkdownPreviewToggle",
  },
  build = function() vim.fn["mkdp#util#install"]() end,
  keys = {
    { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" },
  },
  config = function()
    vim.g.mkdp_auto_close = false -- Don't close when switching buffers
  end,
  lazy = true,
}
