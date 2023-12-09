return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter", -- https://github.com/nvim-neotest/neotest/issues/303#issuecomment-1774050197
    "nvim-neotest/neotest-python",
  },
  keys = {
    { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
    { "<leader>tT", function() require("neotest").run.run(vim.loop.cwd()) end, desc = "Run All Test Files" },
    { "<leader>tr", function() require("neotest").run.run() end, desc = "Run Nearest" },
    { "<leader>tS", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
    {
      "<leader>to",
      function() require("neotest").output.open({ enter = true }) end,
      desc = "Show Output",
    },
    { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
    { "<leader>ts", function() require("neotest").run.stop() end, desc = "Stop" },
  },
  opts = function() -- for some reason doesn't work unless function
    return {
      adapters = {
        require("neotest-python")({
          args = { "--log-level", "DEBUG", "-s" },
        }),
      },
      status = { virtual_text = true },
      output = { open_on_run = true },
      quickfix = {
        open = function() require("trouble").open({ mode = "quickfix", focus = false }) end,
      },
    }
  end,
  config = function(_, opts)
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace("neotest")
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
          return message
        end,
      },
    }, neotest_ns)

    opts.consumers = opts.consumers or {}
    -- Refresh and auto close trouble after running tests
    ---@type neotest.Consumer
    opts.consumers.trouble = function(client)
      client.listeners.results = function(adapter_id, results, partial)
        if partial then return end
        local tree = assert(client:get_position(nil, { adapter = adapter_id }))

        local failed = 0
        for pos_id, result in pairs(results) do
          if result.status == "failed" and tree:get_key(pos_id) then failed = failed + 1 end
        end
        vim.schedule(function()
          local trouble = require("trouble")
          if trouble.is_open() then
            trouble.refresh()
            if failed == 0 then trouble.close() end
          end
        end)
        return {}
      end
    end

    require("neotest").setup(opts)
  end,
}
