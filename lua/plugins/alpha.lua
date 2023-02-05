return {
  "goolord/alpha-nvim", -- A fast and fully customizable greeter for neovim
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    require("alpha.term")

    local configure_path = "~/.config/nvim/init.lua"

    local header = {
      type = "text",
      val = {
        [[            ░░                                                                  ░░    ]], 
        [[                                                                                      ]],  
        [[                                                                                      ]],  
        [[      ░░                                ░░  ██                                        ]],  
        [[  ░░                                        ██                              ░░░░      ]],  
        [[                                            ██                                        ]],  
        [[                                          ▓▓▓▓▓▓                                      ]],  
        [[                                        ▓▓▓▓▓▓▓▓▓▓                                    ]],  
        [[                                      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓                                  ]],  
        [[                                      ▓▓▒▒▓▓▓▓▒▒▓▓▓▓                                  ]],  
        [[                                      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓                                  ]],  
        [[                                      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓                                  ]],  
        [[                                      ░░░░▒▒░░░░░░░░                                  ]],  
        [[                                      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓                                  ]],  
        [[                                      ▓▓▒▒▒▒▓▓▒▒▒▒▓▓                                  ]],  
        [[                                      ▓▓▒▒▒▒██▒▒▒▒▓▓                                  ]],  
        [[                                    ████▓▓▓▓▓▓██▓▓▓▓██      ░░                        ]],  
        [[                                  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██                              ]],  
        [[                                ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██                            ]],  
        [[                                ▓▓▓▓▓▓██▓▓██▓▓▓▓▓▓▓▓▓▓▓▓▓▓                            ]],  
        [[        ░░                      ▓▓▓▓▓▓░░████████████░░████                        ░░  ]],  
        [[                                ▓▓    ▓▓░░░░░░▓▓░░░░    ▓▓                            ]],  
        [[                                                                                      ]],  
        [[                                                                                      ]],  
        [[                                                                                      ]],  
        [[                                                                                      ]],  
        [[                        ▒▒                ▒▒    ▒▒          ▒▒    ▒▒                  ]],
      },
      opts = {
        position = "center",
        hl = "Include",
      }
    }

    local buttons = {
      type = "group",
      val = {
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", "  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", "  Configuration", ":e" .. configure_path .. "<CR>"),
        dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
      },
      opts = {
        hl = "Keyword",
        spacing = 1,
      }
    }


    local config = {
      layout = {
        { type = "padding", val = 2 },
        header,
        { type = "padding", val = 2 },
        buttons,
      },
    }

    alpha.setup(config)
  end
}
