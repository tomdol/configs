call plug#begin("~/.vim/plugged")
  Plug 'morhetz/gruvbox'
  Plug 'itchyny/lightline.vim'
  Plug 'preservim/nerdtree' 
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif
set background=dark
colorscheme gruvbox
set number
set expandtab
set nobackup
set tabstop=4 softtabstop=4
set noshowmode
hi Normal guibg=NONE ctermbg=NONE

let g:lightline = {
  \     'colorscheme': 'powerlineish',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
