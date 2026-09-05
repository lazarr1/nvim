vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx", "*.cpp", "*.hpp" },
  callback = function()
    vim.cmd("ALEFix")
  end,
})
