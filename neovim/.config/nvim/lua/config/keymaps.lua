-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("t", "jk", "<C-><C-n>")
-- vim.keymap.set("n", "<leader><CR>", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-h>", "^")
vim.keymap.set("n", "<C-l>", "g_")
vim.keymap.set("v", "<C-h>", "^")
vim.keymap.set("v", "<C-l>", "g_")
vim.keymap.set("v", "//", [[y/\V<C-R>=escape(@",'/\')<CR><CR>]])
