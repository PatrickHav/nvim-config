-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Track the current state globally so it persists
vim.g.is_bg_transparent = false

vim.keymap.set("n", "<leader>o", function()
  if vim.g.is_bg_transparent then
    -- Restore the solid background by reloading the current colorscheme
    if vim.g.colors_name then
      vim.cmd("colorscheme " .. vim.g.colors_name)
    end
    vim.g.is_bg_transparent = false
  else
    -- Make the background transparent
    local groups = { "Normal", "NormalNC", "SignColumn", "LineNr", "EndOfBuffer", "NonText" }

    for _, group in ipairs(groups) do
      local hl = vim.api.nvim_get_hl(0, { name = group })
      hl.bg = "NONE"
      hl.ctermbg = "NONE"
      vim.api.nvim_set_hl(0, group, hl)
    end
    vim.g.is_bg_transparent = true
  end
end, { desc = "Toggle background transparency" })
