call plug#begin('~/.config/nvim/plugged')

" NOTE: Change this to point to your local python instance.
let g:python3_host_prog = '$CONDA_ENV_PATH/bin/python'

"Plugins
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' "fuzzy search files
Plug 'vim-airline/vim-airline' "vim status bar theme
Plug 'vim-airline/vim-airline-themes' "themes for vim-airline
Plug 'ayu-theme/ayu-vim' "ayu-theme
Plug 'scrooloose/nerdtree' "directory listing
Plug 'neoclide/coc.nvim', {'branch': 'release'} "intellisense
Plug 'tpope/vim-fugitive' "git integration for vim
Plug 'jiangmiao/auto-pairs' "Auto complete brackets
Plug 'fatih/vim-go'      "golang support
Plug 'airblade/vim-gitgutter' "git diff in sign column
Plug 'myusuf3/numbers.vim' "relative and absolute line numbers
Plug 'Xuyuanp/nerdtree-git-plugin' "git highlights for nerdtree
Plug 'dart-lang/dart-vim-plugin' "dart syntax highlight
Plug 'drewtempelmeyer/palenight.vim' "theme
Plug 'sonph/onehalf', { 'rtp': 'vim' } "theme
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim' "fuzzy file finder
Plug 'gruvbox-community/gruvbox' "theme
Plug 'hrsh7th/vim-vsnip' "for snippets
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'APZelos/blamer.nvim' "git blame
Plug 'wakatime/vim-wakatime' "wakatime
Plug 'ryanoasis/vim-devicons' "Font support for nerdtree
Plug 'bfrg/vim-cpp-modern' "C++ support
Plug 'jackguo380/vim-lsp-cxx-highlight' "C++ syntax highlight
Plug 'skywind3000/vim-cppman'
Plug 'brentyi/isort.vim'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'ruanyl/vim-gh-line'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

call plug#end()


"Remaps
let mapleader = " "

"NerdTree remap
nmap <F1> :NERDTreeToggle<CR>

"Numbers.vim
nnoremap <F2> :NumbersToggle<CR>

"To get rid of bad vim habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" GoTo code navigation
" In coc-settings.json i'd set the default to open the jumped-to file
" in a new pane instead of overriding current buffer.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

"To remove VIM ex-mode so we dont accidentally enter it.
map q: <Nop>
nnoremap Q <nop>

" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1):
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()


"Custom functions to trim white space
fun! TrimWhiteSpace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup YUDI_CUSTOM
	autocmd!
	autocmd BufWritePre * :call TrimWhiteSpace()
    autocmd BufWritePre *.py :call isort#Isort(0, line('$'), v:null, v:false)
    autocmd BufWritePre *.py Black
augroup END

" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" cursor highlights
:set cursorline
:set cursorcolumn
