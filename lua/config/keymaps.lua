vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- https://github.com/ruanyl/vim-gh-line
vim.g.gh_line_blame_map_default = 0
vim.g.gh_repo_map = "<leader>gz"

-- Shorten function name
local keymap = vim.keymap.set

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

------------------------ Normal Mode -----------------------------------------
-- Redo
keymap("n", "U", "<C-r>", { silent = true, desc = "Redo" })

-- Move down and up only one visual line
keymap("n", "j", "v:count==0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap("n", "k", "v:count==0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Window navigation
keymap({ "n", "i" }, "<C-h>", "<C-w>h", { silent = true, desc = "Go to left window" })
keymap({ "n", "i" }, "<C-j>", "<C-w>j", { silent = true, desc = "Go to lower window" })
keymap({ "n", "i" }, "<C-k>", "<C-w>k", { silent = true, desc = "Go to upper window" })
keymap({ "n", "i" }, "<C-l>", "<C-w>l", { silent = true, desc = "Go to right window" })

-- Toggle visibility of nvim tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { silent = true, desc = "toggle neovim tree" })

-- Resize
keymap("n", "<C-Up>", ":resize +2<CR>", { silent = true, desc = "Increase window height" })
keymap("n", "<C-Down>", ":resize -2<CR>", { silent = true, desc = "Decrease window height" })
keymap("n", "<C-Left>", ":vertical :resize -2<CR>", { silent = true, desc = "Decrease window width" })
keymap("n", "<C-Right>", ":vertical :resize +2<CR>", { silent = true, desc = "Increase window width" })

-- Buffers navigate
keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")

-- Split windows
keymap("n", "vs", ":vs<CR>", { silent = true, desc = "split vertically" })
keymap("n", "sp", ":sp<CR>", { silent = true, desc = "split horizontally" })

-- Better marks
keymap("n", "'", "`", { silent = true })

-- Repeat and macro
keymap("n", "`", "@a", { silent = true })

-- Copy and paste
keymap("n", "<C-y>", "<esc>:%y+<CR>", { silent = true });

-- -- Next/Previous search result
keymap("n", "n", "nzzzv", { silent = true })
keymap("n", "N", "Nzzzv", { silent = true })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
keymap("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
keymap("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- buffers
keymap("n", "<leader>bb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { desc = "Switch Buffers" })
keymap("n", "<leader>bd", "<cmd>Bdelete!<CR>", { desc = "Delete current buffer" })

-- Telescope
keymap("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<CR>", { silent = true, desc = "search" })
keymap("n", "<C-p>",
  [[<cmd>lua require('telescope.builtin').git_files()<CR>]],
  { desc = "Find files" })
keymap("n", "<leader>ff",
  [[<cmd>lua require('telescope.builtin').find_files()<CR>]],
  { desc = "Find files" })
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Keymaps" })
keymap("n", "<leader>r", "<cmd>Telescope resume<CR>", { desc = "Keymaps" })

-- git
keymap("n", "<C-t>", "<cmd>lua _ZIPTERM_TOGGLE()<CR>", { desc = "Zip Terminal" })
keymap("t", "<C-t>", "<cmd>lua _ZIPTERM_TOGGLE()<CR>", { desc = "Zip Terminal" })
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { desc = "Lazygit" })
keymap("n", "<leader>gf", "<cmd>0Gclog<CR>", { desc = "File history" })
keymap("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<CR>", { desc = "Next Hunk" })
keymap("n", "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<CR>", { desc = "Prev Hunk" })
keymap("n", "<leader>gL", "<cmd>G blame<CR>", { desc = "Git Blame Information" })
keymap("n", "<leader>gl", "<cmd>Gclog<CR>", { desc = "Git Log Information" })
keymap("n", "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<CR>", { desc = "Preview Hunk" })
keymap("n", "<leader>gP", "<cmd>G push<CR>", { desc = "Push..." })
keymap("n", "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<CR>", { desc = "Reset Hunk" })
keymap("n", "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<CR>", { desc = "Reset Buffer" })
keymap("n", "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<CR>", { desc = "Stage Hunk" })
keymap("n", "<leader>gu",
  "<cmd>lua require 'gitsigns'.undo_stage_hunk()<CR>",
  { desc = "Undo Stage Hunk" }
)
keymap("n", "<leader>go", "<cmd>Telescope git_status<CR>", { desc = "Open changed file" })
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", { desc = "Checkout branch" })
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Checkout commit" })
keymap("n", "<leader>gd",
  "<cmd>lua require('utils.diff')()<CR>",
  { desc = "Diff With" }
)

-- hop
keymap("n", "<leader>hw", "<cmd>HopWordCurrentLine<CR>", { desc = "Hop Word In Current Line" })
keymap("n", "<leader>hp", "<cmd>HopPattern<CR>", { desc = "Hop Word With Pattern" })

-- markdown
keymap("n", "<leader>mp", "<Plug>MarkdownPreview", { desc = "Preview Markdown" })
keymap("n", "<leader>ms", "<Plug>MarkdownPreviewStop", { desc = "Stop Preview Markdown" })

-- terminal
keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Float" })
keymap("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<CR>", { desc = "Horizontal" })
keymap("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<CR>", { desc = "Vertical" })

-- symbols
keymap("n", "<leader>s", "<cmd>SymbolsOutline<CR>", { desc = "Show Symbols Outline Tree" })


---------------------------------- Insert Mode --------------------------
-- Rename
keymap(
  "i",
  "<F2>",
  "<cmd>lua require('renamer').rename()<CR>",
  { silent = true, desc = "rename" }
)

------------------------------------ Visual Mode ------------------------
-- Stay in indent mode
keymap("v", "<", "<gv", { silent = true })
keymap("v", ">", ">gv", { silent = true })

---------------------------------- Visual Block Mode ------------------------
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", { silent = true })
keymap("x", "K", ":move '<-2<CR>gv-gv", { silent = true })
keymap("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
keymap("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

---------------------------------- Terminal Mode ---------------------------
-- <C-\>: toggle terminal window
-- Alt+x: exit terminal mode
keymap("t", "<A-x>", [[<C-\><C-n>]], { silent = true })
