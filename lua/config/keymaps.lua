-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Hijack the default LazyVim terminal toggle to use Nushell
vim.keymap.set({ "n", "t" }, "<C-/>", function()
  -- If Snacks throws an error, change this to: require("lazy.util").float_term("nu")
  Snacks.terminal("nu")
end, { desc = "Toggle Nushell Terminal" })

-- Also map it to Ctrl + _ (which is what some terminals actually send when you press Ctrl + /)
vim.keymap.set({ "n", "t" }, "<C-_>", function()
  Snacks.terminal("nu")
end, { desc = "which_key_ignore" })
