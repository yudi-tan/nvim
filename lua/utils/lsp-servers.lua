local M = {}

M.all_servers = {
  "pyright",
  "ruff_lsp",
  "eslint",
  "tsserver",
  "gopls",
  "rust_analyzer", -- Only add it here for mason to install it, but don't add to regular_servers
                   -- as we are using rust-tools instead.
}

M.regular_servers = {
  "pyright",
  "ruff_lsp",
  "eslint",
  "tsserver",
  "gopls",
}

return M
