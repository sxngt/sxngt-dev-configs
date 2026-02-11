return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.opt.clipboard = "unnamedplus"
      vim.opt.paste = false
    end,
  },
}
