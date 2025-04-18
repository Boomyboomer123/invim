vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cul = true

opt.tgc = true
opt.bg = "dark"
opt.signcolumn = "yes" 

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.sb = true
opt.spr = true
