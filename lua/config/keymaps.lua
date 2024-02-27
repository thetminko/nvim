-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap('n', '<M-j>', '<cmd>m .+1<cr>==', { desc = "Move down", silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', '<cmd>m .-2<cr>==', { desc = "Move Up", silent = true })
vim.api.nvim_set_keymap('i', '<M-j>', '<esc>:m .+1<cr>==i', { desc = "Move down", noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<M-k>', '<esc>:m .-2<cr>==i', { desc = "Move Up", noremap = true, silent = true  })
