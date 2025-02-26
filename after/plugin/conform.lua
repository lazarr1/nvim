-- Run Prettier after saving TypeScript files
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.ts,*.tsx",  -- Match TypeScript files (adjust for other file types)
  callback = function()
    -- Manually invoke Prettier to format the file
    vim.cmd("silent !prettier --write %")
  end
})

