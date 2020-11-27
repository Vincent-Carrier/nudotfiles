set rtp+=$HOME/.config/nvim

lua require('init')

let g:mapleader = "\<Space>"
let g:maplocalleader = '\'

nnoremap <C-j> :
nnoremap <C-s> :wa<CR>
nnoremap <C-e> :wq<CR>
nnoremap <C-q> :wqa<CR>
nnoremap <C-h> :bprev<CR>
nnoremap <C-l> :bnext<CR>

nnoremap H ^
nnoremap L $
nnoremap p p=`]
nnoremap P P=`]
nnoremap Y y$

inoremap <C-r><C-r> <C-r>"

nnoremap <c-p> :lua require'telescope.builtin'.find_files{}<CR>
nnoremap <silent> gr <cmd>lua require'telescope.builtin'.lsp_references{ shorten_path = true }<CR>

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

set termguicolors
