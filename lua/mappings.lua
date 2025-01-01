local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

map("i", "jk", "<ESC>", { desc = "Quick escape" })
map("n", ";", ":", { desc = "CMD enter command mode" })

map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
