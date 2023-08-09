require("core")
require("install-lazy")

-- Set the colorscheme name here
local name = "nord"

-- Check for theme configuration
-- Theme configs are can be found on lua/plugins/theme
pcall(require, "plugins.theme." .. name)

-- Set the theme
vim.cmd.colorscheme(name)
