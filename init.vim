"Vim Config 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
set nu
syntax on
set cursorline

set t_Co=256
set tags+=tags

set tabstop=4
set laststatus=2
set completeopt=longest,menu
set ruler
set backspace=2

if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

" run python
map <leader>r :!time python3 %<CR>

" bl -> Buffer list
nnoremap <silent> bl :ls<CR>
" bo -> Buffer new
nnoremap <silent> bo :enew<CR>
" bn -> Buffer next
nnoremap <silent> bn :bnext<CR>
" bp -> Buffer previous
nnoremap <silent> bp :bprevious<CR>
" bd -> Buffer delete 
nnoremap <silent> bd :bd<CR>

" airline show Buffer list
let g:airline#extensions#tabline#enabled=1
" show Buffer num
let g:airline#extensions#tabline#buffer_nr_show=1


"Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" nerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" AirLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ctrlp.vim
Plug 'kien/ctrlp.vim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" python mode
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" emmet 
Plug 'mattn/emmet-vim'

" python semshi
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" ack
Plug 'mileszs/ack.vim'

" pydoc
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

call plug#end()


"Plugin Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AirLin
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'bubblegum'

" NERDTree
map <leader>e :NERDTreeMirror<CR>
map <leader>e :NERDTreeToggle<CR>
map <leader>a :NERDTreeFind<CR>
let NERDTreeWinSize = 50
let g:NERDTreeGitStatusUseNerdFonts = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1

" Ctrelp
let g:ctrlp_mruf_max = 50
let g:ctrlp_follow_symlinks = 1

" coc
set hidden
set updatetime=100
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-marketplace', 'coc-python', 'coc-pairs']


" pydoc
nmap <leader>, :Pydocstring<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <LEADER>d :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

let g:python_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_options_max_line_length = 120
let g:pymode_run = 0
colorscheme delek
" colorscheme zenburn
