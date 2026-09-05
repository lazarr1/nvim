vim.g.ale_linters = {
    javascript = { 'eslint' },
    typescript = { 'eslint' },
    javascriptreact = { 'eslint' },
    typescriptreact = { 'eslint' },
    python = { 'pylsp' }, -- Add Python linters

}
vim.g.ale_fixers = {
    javascript = { 'eslint' },
    typescript = { 'eslint' },
    javascriptreact = { 'eslint' },
    typescriptreact = { 'eslint' },
    python = { 'black' }, -- Add Python fixers

}

vim.g.ale_linters = {
    cpp = { "clangtidy" },
    c = { "clangtidy" },
}

vim.g.ale_fix_on_save = 1
vim.g.ale_javascript_eslint_use_global = 0
vim.g.ale_disable_lsp = 1
vim.g.ale_cpp_cpplint_options = "--filter=-legal/copyright"
vim.g.ale_c_cpplint_options = "--filter=-legal/copyright"

vim.g.ale_fixers = {
  cpp = { "clang-format", "clangtidy" },
  c = { "clang-format", "clangtidy" },
}
