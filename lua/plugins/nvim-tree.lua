return {
  "kyazdani42/nvim-tree.lua", -- tree view
  config = function()
    -- following options are the default
    -- each of these are documented in `:help nvim-tree.OPTION_NAME`
    local nvim_tree = require("nvim-tree")
    local icons = require("config.icons")

    nvim_tree.setup({
      auto_reload_on_write = true,
      disable_netrw = true,
      hijack_netrw = true,
      open_on_tab = false,
      hijack_cursor = false,
      update_cwd = true,
      diagnostics = {
        enable = true,
        icons = {
          hint = icons.diagnostics.Hint,
          info = icons.diagnostics.Information,
          warning = icons.diagnostics.Warning,
          error = icons.diagnostics.Error,
        },
      },
      update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
      },
      system_open = {
        cmd = nil,
        args = {},
      },
      filters = {
        dotfiles = false,
        custom = {},
      },
      git = {
        enable = false,
      },
      view = {
        width = 30,
        side = "left",
        number = false,
        relativenumber = false,
      },
      trash = {
        cmd = "trash",
        require_confirm = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
          icons = {
            corner = "└ ",
            edge = "│ ",
            none = "  ",
          },
        },
        root_folder_modifier = ":t",
        highlight_git = true,
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true
          },
          webdev_colors = true,
          git_placement = "before",
          glyphs = {
            default = icons.documents.Unknown,
            symlink = icons.documents.Symlink,
            git = {
              unstaged = icons.ui.TinyCircle,
              staged = icons.git.Add,
              unmerged = icons.git.Unmerged,
              renamed = icons.git.Rename,
              deleted = icons.git.Remove,
              untracked = icons.git.Untrack,
              ignored = "",
            },
            folder = {
              default = icons.documents.Folder,
              open = icons.documents.OpenFolder,
              empty = icons.documents.EmptyFolder,
              empty_open = icons.documents.EmptyOpenFolder,
              symlink = icons.documents.FolderSymlink,
            }
          }
        },
      },
      actions = {
        use_system_clipboard = true,
        change_dir = {
          enable = true,
          global = false,
          restrict_above_cwd = true,
        },
        open_file = {
          resize_window = true,
          quit_on_open = false,
          window_picker = {
            enable = true,
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
      },
    })
  end
}
