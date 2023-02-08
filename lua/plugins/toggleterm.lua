return {
  "akinsho/toggleterm.nvim", -- terminal
  config = function()
    local toggleterm = require("toggleterm")

    toggleterm.setup({
      size = 20,
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "single",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })

    local Terminal = require("toggleterm.terminal").Terminal

    -- Custom terminals
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
    local zipterm = Terminal:new({ 
      count = 2424, 
      hidden = true, 
      on_create = function(term)
        vim.api.nvim_command("2424TermExec cmd='conda activate website'")
    end
    })

    function _LAZYGIT_TOGGLE()
      lazygit:toggle()
    end

    function _ZIPTERM_TOGGLE()
      zipterm:toggle()
    end

  end
}
