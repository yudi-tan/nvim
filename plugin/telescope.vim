lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter, file_ignore_patterns = {"autoload/.*", "plugged/.*"}}})

nnoremap <leader>fg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>

