-- Cursor
vim.opt.guicursor = ""

-- Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true

-- Misc
vim.opt.hidden = true
vim.opt.scrolloff = 12
vim.opt.laststatus = 3
vim.opt.termguicolors = true

-- Color Column
vim.opt.colorcolumn = "80"
vim.opt.textwidth = 79

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set Leader
vim.g.mapleader = " "

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true
vim.opt.wrap = true

-- Fill Characters
vim.opt.fillchars = {
  vert = "│",
  fold = "⠀",
  eob = " ", -- suppress ~ at EndOfBuffer
  --diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
  msgsep = "‾",
  foldopen = "v",
  foldsep = "|",
  foldclose = ">",
}

-- No Swaps
vim.opt.swapfile = false


