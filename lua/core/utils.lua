local M = {}

-- Checks the cwd if there is a ./git directory. We then return the corresponding
-- telescope find function.
function M.find_files()
  return function()
    local builtin = "find_files"
    if vim.loop.fs_stat(vim.loop.cwd() .. "/.git") then builtin = "git_files" end
    local opts = {}
    opts.show_tracked = true
    require("telescope.builtin")[builtin](opts)
  end
end

return M
