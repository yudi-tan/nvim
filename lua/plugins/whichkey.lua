return {
  "folke/which-key.nvim", -- vim which key
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local which_key = require("which-key")

    which_key.setup({
      plugins = {
        spelling = false
      },
      window = {
        border = "single"
      }
    })
    which_key.register({
      mode = { "n" },
      ["<leader>b"] = { name = "+buffers" },
      ["<leader>f"] = { name = "+find" },
      ["<leader>g"] = { name = "+git" },
      ["<leader>h"] = { name = "+hop" },
      ["<leader>l"] = { name = "+lsp" },
      ["<leader>t"] = { name = "+terminal" },
    })
  end
}
