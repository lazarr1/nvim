vim.g.ale_linters = {
    javascript = { 'eslint' },
    typescript = { 'eslint' },
    javascriptreact = { 'eslint' },
    typescriptreact = { 'eslint' },
}
vim.g.ale_fixers = {
    javascript = { 'eslint' },
    typescript = { 'eslint' },
    javascriptreact = { 'eslint' },
    typescriptreact = { 'eslint' },
}


vim.g.ale_fix_on_save = 1
vim.g.ale_javascript_eslint_use_global = 0
vim.g.ale_fix_my_eslint_cache_executable = 'npx'
vim.g.ale_fix_my_eslint_cache_command = 'npx eslint --fix --cache %'
