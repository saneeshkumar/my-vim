set backspace=indent,eol,start  " more powerful backspacing

" Plugins will be downloaded under the specified directory.
call plug#begin('$VIM/pluggins')

Plug 'wikitopian/hardmode' " Hard Mode
Plug 'ntpeters/vim-better-whitespace' " Trim Trailing White Space
Plug 'altercation/solarized' " Solarized Plugin

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Enabling Hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" use \h to toggle hardmode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Enable line number
:set number

"Set highlight search
:set hls

"set ignore case on search
:set ic

"Enable Solarized Theme for gui vim
if has('gui_running')
    syntax enable
    set background=dark
    colorscheme solarized
endif
