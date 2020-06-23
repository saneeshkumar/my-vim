set backspace=indent,eol,start  " more powerful backspacing

" Plugins will be downloaded under the specified directory.
call plug#begin('$VIM/pluggins')

Plug 'wikitopian/hardmode'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Enabling Hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" use \h to toggle hardmode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
