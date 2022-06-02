call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'Mofiqul/vscode.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort 
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
  \ pumvisible() ? "\<C-n>" : 
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()

set background=dark
let g:vscode_italic_comment = 1

colorscheme vscode

nnoremap <C-t> :NERDTreeToggle<CR>

set tabstop=2
set expandtab
set softtabstop=2
set number 
set hlsearch
set autoindent
set shiftwidth=2
set showmatch
set cursorline 
set noswapfile 
set nobackup 
set undodir=~/.vim/undodir
set undofile
