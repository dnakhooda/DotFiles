-- Options
----------

-- Use System Clipboard
vim.opt.clipboard = "unnamedplus"

-- Releative Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Good Indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- No Wrapping
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Good Colors
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Fast Update
vim.opt.updatetime = 50

-- No line should be over 100 characters
vim.opt.colorcolumn = "100"
