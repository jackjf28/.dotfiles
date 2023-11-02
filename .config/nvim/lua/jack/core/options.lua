local opt = vim.opt

opt.encoding = "UTF-8"

-- line numbers
opt.relativenumber = true -- show relative line nums
opt.number = true -- show absolute line num on cursor line

-- tabs & indents
opt.tabstop = 2 --  spaces for tabs
opt.softtabstop = 2 --  spaces for soft tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in search, assume case-sensitive
opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.colorcolumn = "80"

-- cursor line
opt.cursorline = true -- highlihgt the current cursor line

-- appearance
opt.background = "dark" -- colorschemes that can be light or dark with be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, eol, or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

vim.g.mapleader = " "
