let g:yudi_colorscheme= "gruvbox"
fun! ColorMyPencils()
    colorscheme gruvbox
    set background=dark
    "vim-airline theme
    let g:airline_theme='violet'
    let g:airline_powerline_fonts = 1

    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    "To override the color of colorcolumn used by the theme.
    highlight ColorColumn ctermfg=226 guibg=#ffff00
    "highlight Normal guibg=none
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
endfun
call ColorMyPencils()
