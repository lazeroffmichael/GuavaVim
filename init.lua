require("core")
require("install-lazy")
require("lsp_config")

-- Set the colorscheme name here
local name = "material"

-- Check for theme configuration
-- Theme configs are can be found on lua/plugins/theme
pcall(require, "plugins.theme." .. name)

-- Set the theme
vim.cmd.colorscheme(name)
