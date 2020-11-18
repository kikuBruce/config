"""""""""""
"Vim Config 
"""""""""""
let mapleader=","
set nu
syntax on
set cursorline

set tags+=tags

"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

set laststatus=2
set completeopt=longest,menu
set ruler
set backspace=2

if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif


""""""""
"Plugin
""""""""
call plug#begin()
" Tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" AirLine
Plug 'vim-airline/vim-airline'
Plug'vim-airline/vim-airline-themes'
" IndentLine
Plug 'Yggdroot/indentLine'
" ctrlp.vim
Plug 'kien/ctrlp.vim'
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" monakai
Plug 'crusoexia/vim-monokai'
" color
Plug 'jnurmine/Zenburn'
call plug#end()
" python-mode
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" color schema
Plug 'liuchengxu/space-vim-dark'




""""""""""""""
"Plugin Config
""""""""""""""
" let g:pmenu_scheme = 'dark'

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

" coc plug
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-marketplace', 'coc-python']

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
inoremap <silent><expr> <c-space> coc#refresh()

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

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" python mode
" let g:pymode = 1
" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:pymode_trim_whitespaces = 1
" let g:pymode_doc = 1
" let g:python_doc_bind = 'K'
" let g:python_repo_goto_definition_bind = '<C-]>'
" let g:python_lint = 1
" let g:python_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
" let g:python_options_max_line_length = 80

colorscheme delek
