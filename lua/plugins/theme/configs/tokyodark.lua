local M = {}

M.opts = {
  transparent_background = false,                                       -- set background to transparent
  gamma = 1.0,                                                          -- adjust the brightness of the theme
  styles = {
    comments = { bold = true, },                                          -- style for comments
    keywords = { italic = false },                                        -- style for keywords
    identifiers = { italic = false },                                     -- style for identifiers
    functions = {},                                                      -- style for functions
    variables = {},                                                      -- style for variables
  },
  custom_highlights = {} or function(highlights, palette) return {} end, -- extend highlights
  custom_palette = {} or function(palette) return {} end,                -- extend palette
  terminal_colors = true,                                                -- enable terminal colors
}

return M
