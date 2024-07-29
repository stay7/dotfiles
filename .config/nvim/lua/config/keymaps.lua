-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set

map("n", "<C-i>", "<C-o>", { desc = "swap jumplist key", remap = true })
map("n", "<C-o>", "<C-i>", { desc = "swap jumplist key", remap = true })
