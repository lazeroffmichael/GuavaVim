return {
  "mhartington/formatter.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local settings = {
      lua = { require("formatter.filetypes.lua").stylua },
      typescript = { require("formatter.filetypes.typescript").prettier },
      json = { require("formatter.filetypes.json").fixjson },
      python = { require("formatter.filetypes.python").black },

      ["*"] = {
        require("formatter.filetypes.any").remove_trailing_whitespace,
      },
    }

    require("formatter").setup({
      logging = false,
      log_level = vim.log.levels.WARN,
      filetype = settings,
    })

    vim.keymap.set("n", "<leader>fw", function()
      if settings[vim.bo.filetype] ~= nil then
        vim.cmd([[Format]])
        -- This is a very hacky way to get the exe doing the formatting to print
        -- https://github.com/mhartington/formatter.nvim/issues/263
        local config = require("formatter.config")
        local fmts = config.formatters_for_filetype(vim.bo.filetype)
        for _, fmt_config in ipairs(fmts) do
          local current_fmt = fmt_config()
          -- filter out sed which is equivalent to "*"
          if current_fmt.exe ~= "sed" then print("Fmt: " .. current_fmt.exe) end
        end
      else
        vim.lsp.buf.format()
        print("Fmt: LSP")
      end
    end, { desc = "[f]ormat [w]rite" })
  end,
}
