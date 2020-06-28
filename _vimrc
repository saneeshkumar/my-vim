set backspace=indent,eol,start  " more powerful backspacing

" Plugins will be downloaded under the specified directory.
call plug#begin('$VIM/pluggins')

Plug 'wikitopian/hardmode' " Hard Mode
Plug 'ntpeters/vim-better-whitespace' " Trim Trailing White Space
Plug 'altercation/solarized' " Solarized Plugin
Plug 'pangloss/vim-javascript' " Javascript plugin
Plug 'scrooloose/syntastic' "syntax highlight
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy Finder
Plug 'itchyny/lightline.vim' " Modify status line
Plug 'tpope/vim-surround' " vim surround

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Enabling Hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" use \h to toggle hardmode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Enable line number and relative number
:set number relativenumber

" Toggle relative numbering automatically
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"Set highlight search
:set hls

"set ignore case on search
:set ic

"EnaPlug 'scrooloose/syntastic'ble Solarized Theme for gui vim
if has('gui_running')
    syntax enable
    set background=dark
    colorscheme solarized8
	set guifont=Consolas:h11
endif

let g:javascript_plugin_jsdoc = 1 " Enable JS docs
let g:javascript_plugin_ngdoc = 1 " Enable NG docs

"set the with of tabstop to 4 spaces
set tabstop=4
"make indentation to correnspond to one tab
set shiftwidth=4

"Always display the status line
set laststatus=2

"Don't try to be compatible with Vi
set nocompatible

"Turn syntax highlighting on for programing
syntax on

"Detect file types
filetype plugin indent on

"Use utf-8 Encoding
set encoding=utf-8

"Enable 256 colors
set t_Co=256

"Add warnings to status bar
set statusline+=%#warningmsg#

"Gice syntastic access to the status line
set statusline+=%{SyntasticStatuslineFlag()}

"Back to normal color
set statusline+=%*

"Always populate location list with errors
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

"check for errors on open ad on sabe exit
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Use eslint with syntastic
let g:syntastic_javascript_checkers = ['eslint']

"Build Fuzzy Finder
"Search and autocomplete into subfolders
set path+=**
"Append to existing value of path
"the 2 stars tells vim to search Subdirectorties recursively in the folder vim is running

"Use Tab for auto completion
set wildmenu

"FZF key Remap
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

set omnifunc=syntaxcomplete#Complete

:set spell spelllang=en_us " Spell checker

:set listchars=eol:¬,tab:»·,trail:·,extends:>,precedes:<,space:·

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
