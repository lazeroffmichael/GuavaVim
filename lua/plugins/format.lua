return {
  "mhartington/formatter.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local settings = {
      lua = { require("formatter.filetypes.lua").stylua },
      python = { require("formatter.filetypes.python").black },
      markdown = { require("formatter.filetypes.markdown").prettierd },

      ["*"] = {
        require("formatter.filetypes.any").remove_trailing_whitespace,
      },
    }

    require("formatter").setup({
      logging = false,
      log_level = vim.log.levels.WARN,
      filetype = settings,
    })

    -- https://github.com/mhartington/formatter.nvim/issues/48#issuecomment-856024404
    require("formatter.util").print = function() end

    local group = vim.api.nvim_create_augroup("formatter.nvim", { clear = true })
    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = "*",
      group = group,
      callback = function()
        if settings[vim.bo.filetype] ~= nil then
          vim.cmd([[FormatWrite]])

          local _, config = pcall(require, "formatter.config")
          local fmts = config.formatters_for_filetype(vim.bo.filetype)
          for _, fmt_config in ipairs(fmts) do
            local current_fmt = fmt_config()
            if current_fmt.exe ~= "sed" then print("Fmt: " .. current_fmt.exe) end
          end
        else
          vim.lsp.buf.format()
          print("Fmt: LSP")
        end
      end,
    })
  end,
}
