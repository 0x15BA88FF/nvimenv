local g = vim.g
local opt = vim.opt

g.have_nerd_font = false
g.dap_virtual_text = true

opt.mouse = "a"
opt.showmode = false

opt.hlsearch = true
opt.incsearch = true
opt.smartcase = true
opt.ignorecase = true

opt.number = true
opt.cursorline = true
opt.relativenumber = true
opt.cursorlineopt = "both"

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true

opt.wrap = false
opt.colorcolumn = "80"

opt.updatetime = 250
opt.timeoutlen = 300

opt.scrolloff = 10
opt.signcolumn = "yes"
opt.termguicolors = true
opt.isfname:append("@-@")

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

opt.conceallevel = 2
opt.completeopt = "menuone,noselect"

opt.backup = false
opt.undofile = true
opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"

vim.schedule(function()
    opt.clipboard = "unnamedplus"
end)
