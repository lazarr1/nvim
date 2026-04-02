-- Set mapleader before any keymaps are defined
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("luke.remap")
require("luke.set")

vim.g.python3_host_prog = '/opt/homebrew/bin/python3'
