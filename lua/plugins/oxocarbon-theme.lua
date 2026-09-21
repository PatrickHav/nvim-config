return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false, -- load immediately during startup
    priority = 1000, -- hacky force load
    config = function()
      vim.opt.background = "dark"
      vim.cmd.colorscheme("oxocarbon")

      -- transparent background
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },
}
