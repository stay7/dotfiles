return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
  -- colorscheme
  {
    "ayu-theme/ayu-vim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme ayu")
      vim.cmd("highlight clear SignColumn")
    end,
  },
}
