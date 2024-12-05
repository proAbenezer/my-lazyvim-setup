-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Telescope keybindings
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find Files (Telescope)" }) -- Ctrl + p to find files
vim.keymap.set("n", "<C-f>", builtin.live_grep, { desc = "Live Grep (Telescope)" }) -- Ctrl + f to search text
vim.keymap.set("n", "<C-b>", builtin.buffers, { desc = "List Buffers (Telescope)" }) -- Ctrl + b to switch buffers

-- Terminal keybindings
vim.keymap.set("n", "<C-h>", ':lua require("toggleterm").toggle(1)<CR>', { desc = "Horizontal Terminal" }) -- Ctrl + h for horizontal terminal
vim.keymap.set("n", "<C-v>", ':lua require("toggleterm").toggle(2)<CR>', { desc = "Vertical Terminal" }) -- Ctrl + v for vertical terminal
vim.keymap.set("n", "<C-t>", ':lua require("toggleterm").toggle(3)<CR>', { desc = "Floating Terminal" }) -- Ctrl + t for floating terminal

--Buffers keybindings
vim.keymap.set("n", "<C-q>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-e>", ":bprevious<CR>", { noremap = true, silent = true })
