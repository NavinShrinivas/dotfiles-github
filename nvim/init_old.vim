

"Navin Shrinivas'S NVIM config file , its bootifull :emo_emoji:
"
"I stand corrected, its powerful as hell!

call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/tagbar'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'ninja/sky'
Plug 'mileszs/ack.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/fzf'
Plug 'nvim-lualine/lualine.nvim'
Plug 'gabrielelana/vim-markdown'
Plug 'ryanoasis/vim-devicons'
"https://developpaper.com/question/how-does-vim-jump-to-the-next-space-quickly/
Plug 'rafamadriz/neon'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'nvim-lua/plenary.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'akinsho/toggleterm.nvim'
Plug 'github/copilot.vim'

""LSP stuff
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-lua/lsp_extensions.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'shime/vim-livedown'
Plug 'ayu-theme/ayu-vim' 
Plug 'caksoylar/vim-mysticaltutor'

call plug#end()




let g:Tlist_WinWidth=60
vmap <C-c> y<Esc>
nnoremap <C-t> :TagbarToggle <CR> :vertical resize +15 <CR>
nnoremap <C-p> :FZF <Cr>
nnoremap <C-x> :bd<Cr>>
set mouse=a
set number
set hidden
set cursorline
set expandtab
set shiftwidth=4
set tabstop=4
set showtabline=2
set encoding=utf8
set history=5000
set clipboard=unnamedplus
map , :bprevious<CR>
map . :bnext<CR>
map <C-v> pi
imap <C-v> <Esc>pi  
" map CTRL-A to beginning-of-line (insert mode)
imap <C-a> <esc><S-^>i
noremap <C-c><esc>
imap ^[h <esc>hi
imap ^[j <esc>ji
imap ^[k <esc>ki
map  ^[l <esc>li

imap <C-o> <End><Enter><esc>pi
imap <C-e> :Vexplore
noremap <C-e> :Vexplore
noremap <C-f> :vsplit :term ranger
set relativenumber
set scroll=7
set laststatus=2




map <Leader>f :ToggleTerm direction=float <Cr>
nmap <Leader>t :ToggleTerm <Cr>
nmap <Leader>l :LivedownToggle <Cr>


"-----------Whole bunch of nerdtree stuff--------

nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeWinSize=22
"==========================================================================

let g:startify_custom_header = startify#center(startify#pad(split(system('figlet NVIM'),'\n')))

"stuff to resize my splits being cool at the time :)

noremap <leader>vs :vsplit
noremap <leader>s :split
noremap <leader>f :Ack
nmap <S-Up> :resize +5
nmap <S-Down> :resize -5
nmap <S-Left> :vertical resize -5
nmap <S-Right> :vertical resize +5
imap <S-Up> <Esc>:resize +5
imap <S-Down> <Esc>:resize -5
imap <S-Left> <Esc>:vertical resize -5
imap <S-Right> <Esc>:vertical resize +5
"==========================================================================


if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
colorscheme mysticaltutor



"let g:clang_format#style_options = { 
            "\ "BraceWrapping" : [ 
            "\ { "AfterControlStatement" : "true"},
            "\ { "AfterClass " : "true"}
            "\ ]                                                                                                                                        
            "\ }


"Smooth scrolling shit=====================================================
"its in the lua file

set completeopt=menuone,noinsert,noselect
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"




