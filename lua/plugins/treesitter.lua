return {
  -- Highlight, edit, and navigate code
  "nvim-treesitter/nvim-treesitter",
  version = false,
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  cmd = { "TSUpdateSync" },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    auto_install = true,
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        "go",
        "rust",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        }
  },
  config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
  end
}
