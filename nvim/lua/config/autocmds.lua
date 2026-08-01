vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.md", "*.mdx" },
  callback = function()
    vim.opt_local.conceallevel = 2
  end,
})
