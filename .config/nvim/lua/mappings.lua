require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Normal Mode
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up" })

-- Insert Mode
map("i", "jk", "<ESC>")

-- Visual Mode
map("v", "<C-c>", '"*y', { desc = "Yank it" })
