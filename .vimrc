:syntax on
:set relativenumber

:set colorcolumn=80

nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in cs.
    " https://stackoverflow.com/a/21323445/2267450
    autocmd FileType cs set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
endif

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'preservim/vim-markdown'

let g:vim_markdown_fenced_languages = ['csharp=cs']

Plug 'tpope/vim-sensible'

call plug#end()
