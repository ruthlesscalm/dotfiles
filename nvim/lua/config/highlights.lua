local function set_markdown_highlights()
  -- 1. High-contrast Visual / Select mode
  vim.api.nvim_set_hl(0, "Visual", { bg = "#3b4261", fg = "#ffffff", bold = true })

  -- 2. Distinct Headings (Icon + Text + Background Bar)
  local headings = {
    { fg = "#cba6f7", bg = "#2d2638" }, -- H1 (Mauve)
    { fg = "#89b4fa", bg = "#212d3d" }, -- H2 (Blue)
    { fg = "#a6e3a1", bg = "#22302b" }, -- H3 (Green)
    { fg = "#f9e2af", bg = "#302c22" }, -- H4 (Yellow)
    { fg = "#fab387", bg = "#302722" }, -- H5 (Peach)
    { fg = "#f38ba8", bg = "#302229" }, -- H6 (Pink)
  }

  for i, h in ipairs(headings) do
    vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i, { fg = h.fg, bg = h.bg, bold = true })
    vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { fg = h.fg, bg = h.bg, bold = true })
    vim.api.nvim_set_hl(0, "@markup.heading." .. i .. ".markdown", { fg = h.fg, bg = h.bg, bold = true })
  end

  -- 3. Recessed Code Blocks (darker than Nightfox's #192330 background)
  vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = "#131a24" })
  vim.api.nvim_set_hl(0, "RenderMarkdownCodeInline", { bg = "#242e3d", fg = "#89dceb" })
end

-- Run immediately AND re-apply whenever a colorscheme loads
set_markdown_highlights()
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_markdown_highlights,
})
