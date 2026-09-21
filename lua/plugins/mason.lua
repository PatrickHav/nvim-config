return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      -- Formatters
      "prettier",
      "stylua",
      "fourmolu",

      -- Linters
      "eslint_d",

      -- Language Servers
      "vtsls",
      "html-lsp",
      "css-lsp",
      "tailwindcss-language-server",
      "omnisharp",
      "bash-language-server",
      "nil",
    },
  },
}
