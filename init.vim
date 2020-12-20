syntax on

set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set termguicolors
set completeopt=menuone,longest

" Give more space for displaying messages.
set cmdheight=2

set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'rip-rip/clang_complete'
Plug 'ervandew/supertab'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let mapleader = " "
let g:deoplete#enable_at_startup = 1

let g:clang_library_path='/usr/lib/llvm-11/lib'
let g:clang_complete_auto = 0
let g:clang_complete_copen = 1
let g:clang_auto_select = 1

let g:SuperTabDefaultCompletionType = "context"

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

colorscheme one
set background=dark

let g:airline_theme = 'one'
let g:airline_powerline_fonts = 1

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

nnoremap <C-p> :Files<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nmap <silent> <leader>rr :Semshi rename<CR>
nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>
nmap <silent> <leader>ee :Semshi error<CR>
nmap <silent> <leader>ge :Semshi goto error<CR>
