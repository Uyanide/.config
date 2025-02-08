-- return {
--   "catppuccin/nvim",
--   as = "catppuccin",
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha",
--       transparent_background = true,
--     })
--   end,
-- }

return {
  {
    "catppuccin/nvim",
    opts = {
      flavor = "mocha",
      transparent_background = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
