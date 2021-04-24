" Install vim-plug if not found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin(vimdir."/plugged")

" NerdTree
Plug 'preservim/nerdtree' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
  \ Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-visual-selection'

" Search features
Plug 'tmsvg/pear-tree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'

" Slime/tmux
Plug 'bkad/CamelCaseMotion'
Plug 'jpalardy/vim-slime'

" Completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Scala plugins
" Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

" Python plugins
Plug 'fannheyward/coc-pyright'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'hanschen/vim-ipython-cell'

" Julia plugins
Plug 'JuliaEditorSupport/julia-vim'
" Plug 'machakann/vim-lsp-julia'

" Other misc.
Plug 'cocopon/iceberg.vim'
Plug 'preservim/vimux'
Plug 'PProvost/vim-ps1'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-test/vim-test'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

call plug#end()

