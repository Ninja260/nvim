-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<esc>", { desc = "Remap <esc>" })

map("n", "g,", "<C-o>", { noremap = true, desc = "Jump to older cursor position" })

map("n", "g.", "<C-i>", { noremap = true, desc = "Jump to newer cursor position" })
