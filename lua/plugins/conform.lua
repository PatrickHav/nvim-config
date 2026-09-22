return {
  "stevearc/conform.nvim",
  -- Load this plugin when you either save a file or run the ConformInfo command
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Set your manual formatting keybinding here
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    -- Define your formatters per filetype
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      lua = { "stylua" },
      haskell = { "fourmolu" },
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
  },
}
