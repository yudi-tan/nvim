return {
  "simrat39/symbols-outline.nvim", -- tree-like view for symbols
  config = function()
    local opts = {
      autofold_depth = 0,
    }
    require('symbols-outline').setup(opts)
  end
}
