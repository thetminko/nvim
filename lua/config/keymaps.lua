-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('n', '<C-j>', '<cmd>m .+1<cr>==', { desc = "Move down" })
vim.keymap.set('n', '<C-k>', '<cmd>m .-2<cr>==', { desc = "Move Up" })
-- vim.keymap.set('i', '<C-J>', '<esc><cmd>m .+1<cr>==gi', { desc = "Move down" })
-- vim.keymap.set('i', '<C-K>', '<esc><cmd>m .-2<cr>==gi', { desc = "Move down" })
-- vim.keymap.set('v', '<C-k>', ':m '<-2<cr>gv=gv', { desc = "Move Up" })
-- vim.keymap.set('v', '<C-j>', ':move '<-2<CR>gv=gv', { desc = "Move down" })
