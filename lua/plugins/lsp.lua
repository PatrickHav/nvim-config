return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Activating the servers installed via Mason
      vtsls = {},
      html = {},
      cssls = {},
      tailwindcss = {},
      fourmolu = {},
      omnisharp = {},
      nil_ls = {
        settings = {
          ["nil"] = {
            -- Optional: Add custom nil settings here
          },
        },
      },
    },
  },
}
