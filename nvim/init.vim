"            ,---._
"          .-- -.' \   .--.--.     ,----..
"          |    |   : /  /    '.  /   /   \
"          :    ;   ||  :  /`. / |   :     :
"          :        |;  |  |--`  .   |  ;. /
"          |    :   :|  :  ;_    .   ; /--`
"          :          \  \    `. ;   | ;
"          |    ;   |  `----.   \|   : |
"      ___ l           __ \  \  |.   | '___
"    /    /\    J   : /  /`--'  /'   ; : .'|
"   /  ../  `..-    ,'--'.     / '   | '/  :
"   \    \         ;   `--'---'  |   :    /
"    \    \      ,'               \   \ .'
"     "---....--'                  `---`
"
"
"       Personal vim configuration of Jonas Stendel Cremers
"
"
"
"---------------------------------------------------------------------------------------
"///////////// general settings ////////////////////////////////////////////////////////
"---------------------------------------------------------------------------------------

set expandtab
set shiftwidth=4
set tabstop=4
set hidden 
set number
"set termguicolors
set undofile
set signcolumn=yes:1
highlight clear SignColumn
"set spell
set title 
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest
set wildignore=.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor
set list 
set listchars=tab:➤\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard=unnamedplus
set confirm
set backup
set backupdir:~/.local/share/nvim/backup//
set updatetime=300 " Reduce timr for highlighting other references
set redrawtime=10000 " Allow more time for loading larger files


"---------------------------------------------------------------------------------------
"///////////// key maps ////////////////////////////////////////////////////////////////
"---------------------------------------------------------------------------------------

let mapleader="\<space>"

nnoremap <leader>d yyp

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>
nmap <leader>Q :bufdo bdelete<cr>

map gf :edit <cfile><cr>

nmap <leader>x :!xdg-open %<cr><cr>

nmap <leader>pi :PlugInstall<cr>

" Open hotkeys
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>

" Quick-save
nmap <leader>w :w<CR>


" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>


" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>


" <leader>s for Rg search
noremap <leader>s :Rg<cr>

if executable('rg')
    set grepprg=rg\ --no-heading\ --vimgrep
    set grepformat=%f:%l:%c:%m
endif

"---------------------------------------------------------------------------------------
"///////////// plugins /////////////////////////////////////////////////////////////////
"---------------------------------------------------------------------------------------


call plug#begin('~/.config/nvim/plugins')
    source ~/.config/nvim/plugins/commentary.vim
    source ~/.config/nvim/plugins/surround.vim
    source ~/.config/nvim/plugins/floatterm.vim
    source ~/.config/nvim/plugins/nerdtree.vim
    source ~/.config/nvim/plugins/nord-vim.vim
    source ~/.config/nvim/plugins/telescope.vim
    source ~/.config/nvim/plugins/jon-g.vim
    source ~/.config/nvim/plugins/coc.vim


    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    

call plug#end()



"---------------------------------------------------------------------------------------
"///////////// finally /////////////////////////////////////////////////////////////////
"---------------------------------------------------------------------------------------

colorscheme nord




