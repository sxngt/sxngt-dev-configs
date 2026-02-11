-- lua/plugins/disable-animate.lua
return {
  { "echasnovski/mini.animate", enabled = false },
  { "karb94/neoscroll.nvim", enabled = false },
  { "declancm/cinnamon.nvim", enabled = false },

  -- snacks scroll 비활성화
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
}
