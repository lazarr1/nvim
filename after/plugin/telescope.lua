local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pF',  function()
  require('telescope.builtin').find_files({ follow=true, no_ignore = true, hidden = true })
end, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")} );
end)

vim.keymap.set('n', '<leader>pS', function()
	builtin.grep_string({ search = vim.fn.input("Grep all > "),  follow=true, vimgrep_arguments = { 'rg', '--no-ignore', '--hidden', '--vimgrep' }, hidden = true } );
end)
