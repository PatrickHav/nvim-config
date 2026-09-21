return {
  {
    "r-pletnev/pdfreader.nvim",
    dependencies = { "3rd/image.nvim" }, -- usually relies on image rendering backends
    config = function()
      require("pdfreader").setup()
    end,
  },
}
