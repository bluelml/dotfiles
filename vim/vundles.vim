" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

"cscope_maps.vim
Plugin 'chazy/cscope_maps'

" The NERD tree
Plugin 'scrooloose/nerdtree'
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>
" Shoe hidden files
let g:NERDTreeShowHidden=1

" surround.vim
Plugin 'tpope/vim-surround'

" Syntastic
Plugin 'scrooloose/syntastic'
" Needs syntax checker

"ctrlp.vim
Plugin 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPBuffer'

" The NERD Commenter
Plugin 'scrooloose/nerdcommenter'

" vim-airline
Plugin 'bling/vim-airline'

" Tagbar
Plugin 'majutsushi/tagbar'
" Toggle the Tagbar window
nmap <F8> :TagbarToggle<CR>

" EasyMotion
Plugin 'Lokaltog/vim-easymotion'

" SuperTab
Plugin 'ervandew/supertab'

" grep.vim
Plugin 'yegappan/grep'
" Map <F3>
nnoremap <silent> <F3> :Rgrep<CR>
let Grep_Default_Filelist='*.c *.cpp *.asm *.cc *.h *.ind *.uc makefile* Makefile* *.y *.l *.hex *.txt *README* *.S *.cdl *.cxx *.s *.icl *.xcl *.py *.fpl *.fplh *.cnp *.go *.tcl'
let Grep_Skip_Files='*.bak *~ *.bin *.o'

" cscope.vim
Plugin 'brookhong/cscope.vim'

" taglist.vim
Plugin 'taglist.vim'

" golang
Plugin 'fatih/vim-go'

" CCTree
Plugin 'hari-rangarajan/CCTree'

" vim-plugins
Plugin 'WolfgangMehner/vim-plugins'

" echofunc.vim
Plugin 'mbbill/echofunc'

"vim-signature
Plugin 'kshenoy/vim-signature'

"Auto Pairs
Plugin 'jiangmiao/auto-pairs'

"solarized
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"solarized, it must be added after call vundle#end()
if has('gui_running')
    set background=light
else
    set background=dark
endif
"colorscheme solarized
"let g:solarized_termcolors = 256
