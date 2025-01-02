local map = vim.keymap.set
local lazymap = LazyVim.safe_keymap_set

lazymap({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
lazymap({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

lazymap({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
lazymap({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })

lazymap("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
lazymap("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
lazymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
lazymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

lazymap("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
lazymap("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
lazymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
lazymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
lazymap("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
lazymap("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

lazymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
lazymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
lazymap("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
lazymap("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
lazymap("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
lazymap("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- [[ Custom Mappings ]]

map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

map("i", "jk", "<ESC>", { desc = "Quick escape" })
map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
