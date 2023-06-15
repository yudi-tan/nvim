return {
  "wfxr/minimap.vim", -- code minimap
  config = function()
    vim.g.minimap_width = 15
    vim.g.minimap_highlight_search = 1
    vim.g.minimap_git_colors = 1
  end
}
