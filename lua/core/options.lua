local opt = vim.opt

-- line number
opt.number = true

-- commandline height 
-- opt.cmdheight = 4

-- indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- no wrapping
opt.wrap = true

-- cursor
opt.cursorline = true

-- mouse
opt.mouse:append("a")

-- sys clipboard
opt.clipboard:append("unnamedplus")

-- window splits
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true

-- status line 

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"
-- vim.cmd[[colorscheme dracula]]-- theme
vim.cmd[[colorscheme dracula]]-- theme

