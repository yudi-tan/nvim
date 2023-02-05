return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    require "nvim-treesitter.install".compilers = { "clang" }

    configs.setup {
      -- A list of parser names, or "all"
      ensure_installed = { "c", "lua", "cpp", "bash", "css", "gitignore", "gitcommit", "git_rebase", "gitattributes", "json", "python", "scss", "sql", "toml", "typescript", "yaml", "rust", "vue", "javascript", "markdown" },
      auto_install = false,
      sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
      autopairs = {
        enable = true,
      },
      highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
      },
      indent = { enable = true, disable = { "yaml" } },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    }
  end
}
