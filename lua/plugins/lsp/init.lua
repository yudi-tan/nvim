

return {
  "neovim/nvim-lspconfig",
  config = function()
    require "plugins.lsp.configs"
    require("plugins.lsp.handlers").setup()
  end
}
