return {
  {
    "https://github.com/mfussenegger/nvim-lint",
    event = "LSPAttach",
    config = function()
      require("lint").linters_by_ft = {
        -- markdown = { "vale" },
        -- python = { "ruff" },
      }
      require("lint").try_lint()
    end,
  },
}
