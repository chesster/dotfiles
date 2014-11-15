execute pathogen#infect()
syntax on
syntax enable

"let g:solarized_termcolors=256
set t_Co=256
colorscheme distinguished 

filetype plugin indent on

let g:php_search_doc_command='xdg-open'

"Leader
let mapleader = ","

"GIST
let g:gist_detect_filetype = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1

"MultiCursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-k>'
let g:multi_cursor_skip_key='<C-o>'
let g:multi_cursor_quit_key='<Esc>'

"Vim Wiki
let g:vimwiki_list = [{'path': '~/Dokumenty/.Dropbox/VimWiki/wiki/', 'path_html': '~/Dokumenty/.Dropbox/VimWiki/html/'}]

"iPython
let g:ipy_perform_mappings=0

"CtrlP
let g:ctrlp_cmd = 'CtrlPMixed'

" SETS
set autochdir 
set autoindent 
set completeopt=longest,menuone
set fenc=utf-8 
set fileencodings=utf-8,latin2
set gdefault
set hidden
set ignorecase
set incsearch 
set laststatus=2
set mouse=a 
set nobackup 
set nocompatible 
set noexpandtab
set nofoldenable
set nowrap
set nowritebackup 
set number 
set ruler
set showcmd 
set t_Co=256 
set tabpagemax=50 
set wildmenu
set wrapscan

set shiftwidth=4 
set softtabstop=4 
set tabstop=4 
set expandtab

"Python Mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_virtualenv = 1

"YankStack
"call yankstack#setup()
"let g:yankstack_yank_keys = ['y', 'd']

"T-Comment
map <leader>/ <c-_><c-_>

"MAPS
set pastetoggle=<F2>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

nnoremap <F1> :MBEToggle<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <F7> :TagbarToggle<CR>

nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>

"MAPS - iPython
map  <buffer> <silent> <F1> <Plug>(IPython-OpenPyDoc)
map  <buffer> <silent> <F2> <Plug>(IPython-RunFile)
map  <buffer> <silent> <F3> <Plug>(IPython-RunLines)

nmap <leader>A <Esc>:Ack!

"FUNCTIONS
command! DosToUnix %s/\r//g
command! Q q
command! W w
command! RmEmptyLines g/^$/d

"GitGutter
highlight clear SignColumn

set mouse+=a
if &term =~ '^screen'
	set ttymouse=xterm2
endif

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-z> :ZoomToggle<CR>
