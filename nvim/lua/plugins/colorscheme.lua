return {
  -- {
  --   "catppuccin/nvim",
  --   opts = {
  --     flavor = "mocha",
  --     transparent_background = true,
  --   },
  -- },
  -- {
  --   "navarasu/onedark.nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require('onedark').setup {
  --       style = 'darker',
  --       transparent = true,
  --     }
  --     -- Enable theme
  --     require('onedark').load()
  --   end
  -- },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      require("onedarkpro").setup({
        options = {
          bold = true,
          italic = true,
          underline = true,
          cursorline = true,
          transparency = true,
        },
        styles = {
          comments = "italic",
          keywords = "bold",
          functions = "italic",
        },
      })
      require("onedarkpro").load()
    end,
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
