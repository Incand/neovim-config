" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . 'plugged')

" Sensible starting point
Plug 'tpope/vim-sensible'

" Language syntax highlighting packs
Plug 'sheerun/vim-polyglot'

" CTRL-P fuzzy file, buffer, mru, tag finder
Plug 'ctrlpvim/ctrlp.vim'

" Auto brakets closing
Plug 'jiangmiao/auto-pairs'

" Git line indicator
Plug 'airblade/vim-gitgutter'

" Prettier status bar
Plug 'itchyny/lightline.vim'

" Onedark theme
Plug 'joshdick/onedark.vim'

""" Language Server Protocol Configuration
" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

" Initialize plugin system
call plug#end()
