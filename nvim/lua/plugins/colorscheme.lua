return {
  -- {
  --   "catppuccin/nvim",
  --   opts = {
  --     flavor = "mocha",
  --     transparent_background = true,
  --   },
  -- },
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker',
        transparent = true,
      }
      -- Enable theme
      require('onedark').load()
    end
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = true,
--     opts = {
--       style = "moon",
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "tokyonight",
--     },
--   },
-- }
