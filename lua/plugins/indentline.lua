return {
  "lukas-reineke/indent-blankline.nvim", -- Indent line
  main = "ibl",
  opts = {
      enabled = true,
      indent = {
        char = " "
      }
  }
--   config = function()
--     local indent_blankline = require("indent_blankline")
--     indent_blankline.setup({
--     })
-- 
--     vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
--     vim.g.indent_blankline_filetype_exclude = {
--       "help",
--       "startify",
--       "aerial",
--       "dashboard",
--       "packer",
--       "neogitstatus",
--       "NvimTree",
--       "neo-tree",
--       "Trouble",
--     }
    -- vim.g.indent_blankline_show_trailing_blankline_indent = false
    -- vim.g.indent_blankline_show_first_indent_level = true
    -- vim.g.indent_blankline_use_treesitter = true
    -- vim.g.indent_blankline_show_current_context = true
    -- vim.g.indent_blankline_context_patterns = {
    --   "class",
    --   "return",
    --   "function",
    --   "method",
    --   "^if",
    --   "^while",
    --   "jsx_element",
    --   "^for",
    --   "^object",
    --   "^table",
    --   "block",
    --   "arguments",
    --   "if_statement",
    --   "else_clause",
    --   "jsx_element",
    --   "jsx_self_closing_element",
    --   "try_statement",
    --   "catch_clause",
    --   "import_statement",
    --   "operation_type",
    -- }


--  end
}
