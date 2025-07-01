let mapleader=" "

set number                  " Show absolute line numbers
set relativenumber          " show relative line numbers
set showcmd                 " display partial commands
set showmode                " show current mode (insert, etc)
set scrolloff=8             " Keep cursor 8 lines from top/bottom
set tabstop=4               " Tab size = 4 spaces
set hlsearch                " Highlight search matches
set incsearch               " Incremental search
set ignorecase              " Ignore case when searching
set smartcase               " Use case-sensitive search if uppercase used
set lazyredraw              " Don't redraw screen while executing macros
set belloff=all             " Disable all bells
syntax on                   " Enable syntax highlighting
colorscheme slate

filetype plugin on

autocmd FileType java setlocal omnifunc=syntaxcomplete#Complete

set path+=**                " Allow recursive search with :find
set wildmenu                " Enhanced command line completion
set wildmode=longest:full,full
set wildignore+=*/.git/*,*/node_modules/*,*.o,*.class,*.swp,*.zip,*.dex,*.tmpl
nnoremap <Esc> :nohlsearch<CR>

nnoremap <leader>e :Explore<CR>
nnoremap <leader>v :Vexplore<CR>
nnoremap <leader>f :find 

nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
nnoremap <leader>b :ls<CR>:buffer<Space>

nnoremap <leader>g :vimgrep // **/*.<C-r>=input("file extension (e.g. java): ")<CR><Left><Left>
nnoremap <leader>c :copen<CR>
nnoremap <leader>n :cnext<CR>
nnoremap <leader>p :cprev<CR>
nnoremap <leader>q :cclose<CR>
