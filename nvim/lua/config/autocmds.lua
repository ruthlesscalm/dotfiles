vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.json" },
  callback = function()
    local filepath = vim.fn.expand("%:p:h")

    -- Find config (search upward like prettier)
    local config =
        vim.fn.findfile(".prettierrc", filepath .. ";")
        or vim.fn.findfile(".prettierrc.json", filepath .. ";")
        or vim.fn.findfile("package.json", filepath .. ";")

    if config == "" then return end

    local content = table.concat(vim.fn.readfile(config), "\n")

    local parsed = nil

    -- Handle package.json
    if config:match("package.json") then
      local ok, pkg = pcall(vim.json.decode, content)
      if ok and pkg.prettier then
        parsed = pkg.prettier
      end
    else
      local ok, json = pcall(vim.json.decode, content)
      if ok then parsed = json end
    end

    if not parsed then return end

    -- Apply base config
    if parsed.tabWidth then
      vim.bo.tabstop = parsed.tabWidth
      vim.bo.shiftwidth = parsed.tabWidth
    end

    if parsed.useTabs ~= nil then
      vim.bo.expandtab = not parsed.useTabs
    end

    -- Handle overrides (basic support)
    if parsed.overrides then
      local filename = vim.fn.expand("%:t")

      for _, override in ipairs(parsed.overrides) do
        if override.files and override.options then
          if vim.fn.match(filename, override.files) ~= -1 then
            if override.options.tabWidth then
              vim.bo.tabstop = override.options.tabWidth
              vim.bo.shiftwidth = override.options.tabWidth
            end
            if override.options.useTabs ~= nil then
              vim.bo.expandtab = not override.options.useTabs
            end
          end
        end
      end
    end
  end,
})

-- Autosave
vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*",
  command = "silent! update",
  desc = "Autosave file when leaving buffer",
})
