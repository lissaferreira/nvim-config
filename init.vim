set autoread
set backspace=indent,eol,start
set clipboard=unnamedplus
set cursorline
set encoding=UTF-8
set expandtab
set hidden
set inccommand=split
set laststatus=0
set mouse=a
set nobackup
set noruler
set noshowcmd
set noshowmode
set noswapfile
set nowritebackup
set number
set scrolloff=999
set shiftwidth=2
set t_Co=256
set tabstop=2
set termguicolors
set ttyfast

command Q q
command QW wq
command W w
command WQ wq
command Wq wq

" Vim Polyglt Section

let g:polyglot_disabled = ['markdown']

" End Vim Polyglot Section

call plug#begin()

Plug '907th/vim-auto-save'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/lexima.vim'
Plug 'dense-analysis/ale'
Plug 'edersonferreira/dalton-vim'
Plug 'edersonferreira/violenta-vim'
Plug 'flazz/vim-colorschemes'
Plug 'gko/vim-coloresque'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'thaerkh/vim-indentguides'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'voldikss/vim-floaterm'

call plug#end()

" Snippets Section

imap <C-x> <Plug>(coc-snippets-expand)

vmap <C-a> <Plug>(coc-snippets-select)

let g:coc_snippet_next = 'c-a'

let g:coc_snippet_prev = '<F9>'

imap <C-a> <Plug>(coc-snippets-expand-jump)

xmap <leader>x  <Plug>(coc-convert-snippet)

" End Snippets Section

" IndentGuides Section

let g:indentguides_ignorelist = ['markdown', 'go']
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" End IndentGuides Section

" Coc Section

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-snippets', 'coc-solargraph', 'coc-vetur', 'coc-phpls', 'coc-cord', 'coc-go']

" End Coc Section

" My maps (binds)
let mapleader = "\<Space>"

" void register maps section

vnoremap <Leader>d "_d
nnoremap <Leader>dd "_dd
nnoremap <Leader>dj "_dj
nnoremap <Leader>dk "_dk
nnoremap <Leader>di{ "_di{
nnoremap <Leader>di[ "_di[
nnoremap <Leader>di( "_di(
nnoremap <Leader>di" "_di"
nnoremap <Leader>di' "_di'
nnoremap <Leader>di` "_di`
nnoremap <Leader>da{ "_da{
nnoremap <Leader>da[ "_da[
nnoremap <Leader>da( "_da(
nnoremap <Leader>da" "_da"
nnoremap <Leader>da' "_da'
nnoremap <Leader>da` "_da`

" void register maps section end

nnoremap Q <nop>
inoremap <C-v> <ESC>"+pa<CR>
inoremap <silent> <c-j> <ESC>:m +1<CR> i
inoremap <silent> <c-k> <ESC>:m -2<CR> i

nmap <Leader>e <Plug>(Prettier)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)

tnoremap <Esc> <C-\><C-n>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <C-S> :AutoSaveToggle<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-p> :Files .<CR>
nnoremap <C-l> :Lines<CR>
nnoremap <C-q> :qa<CR>
nnoremap <C-w> :w!<CR>
nnoremap <C-a> ggVG=<C-o>

nnoremap <F10> :FloatermNew --height=0.9 --width=0.9 --wintype=float --autoclose=2 htop<CR>
nnoremap <F11> :FloatermNew --height=0.9 --width=0.9 --wintype=float --autoclose=2<CR>
nnoremap <F1> :bprevious<CR>:echom '<-'<CR>
nnoremap <F2> :bnext<CR>:echom '->'<CR>
nnoremap <F5> :NERDTreeToggle<CR>:echom ''<CR>
nnoremap <F6> :TagbarToggle<CR>
nnoremap <F9> :FloatermNew --height=0.9 --width=0.9 --wintype=float --autoclose=2 ranger<CR>

nnoremap <silent> <C-y>  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> <c-j> :m +1<CR>
nnoremap <silent> <c-k> :m -2<CR>

nnoremap cr :CocRestart<CR><CR>
nnoremap db :bw<CR>

vnoremap <C-c> "+y<CR>
vnoremap <C-d> "+d<CR>

vnoremap <silent> <c-j> :m +1<CR>
vnoremap <silent> <c-k> :m -2<CR>


function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction

nnoremap <C-n> :call NumberToggle()<CR>

" End My maps (binds)

" Theme Section

color dalton

" End Theme Section

" Vim Airline Section

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%3p%% %l:%c"
let g:airline_theme='dalton'

" End Vim Airline Section

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> <C-e> <Plug>(ale_next_wrap)

function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? 'OK' : printf(
        \   '%d⨉ %d⚠ ',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline+=%=
set statusline+=\ %{LinterStatus()}

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
