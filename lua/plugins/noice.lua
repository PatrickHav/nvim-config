return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        filter = {
          event = "notify",
          -- hacky fix for lhs file warnings
          find = "haskell%-tools%.nvim: %-32601",
        },
        opts = { skip = true },
      },
    },
  },
}
