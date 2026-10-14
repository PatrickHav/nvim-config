return {
  {
    { "nathom/filetype.nvim", enabled = false },
    "lervag/vimtex",
    init = function()
      -- Choose your PDF viewer method:
      -- "zathura", "zathura_simple" (no xdotool needed), "skim", "sioyek", or "general"
      vim.g.vimtex_view_method = "zathura_simple"

      -- For Windows with SumatraPDF, use "general" instead:
      -- vim.g.vimtex_view_general_viewer = "SumatraPDF"
      -- vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

      -- Optional: Enable math/symbol concealment (shows α instead of \alpha when cursor is away)
      vim.opt.conceallevel = 2
      vim.g.vimtex_syntax_conceal = {
        accents = 1,
        ligatures = 1,
        cites = 1,
        fancy = 1,
        spacing = 1,
        greek = 1,
        math_bounds = 1,
        math_delimiters = 1,
        math_fractions = 1,
        math_super_sub = 1,
        math_symbols = 1,
      }

      -- Optional: Filter out harmless box warnings from the quickfix log
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull \\hbox",
        "Overfull \\hbox",
      }
    end,
  },
}
