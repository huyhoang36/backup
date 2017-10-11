" Matches all search hits in bright, bright yellow
set hlsearch
" Tells vim what it can delete from a <BS>
set backspace=indent,eol,start
" Show line and column location
set ruler
" Show the line numbers on the left hand side
"set number
"set numberwidth=6
" Show the number of lines selected
set showcmd
" Use autoindenting
set autoindent
set smartindent
set cindent
" ignore case matching unless there is a capitalized letter
set ignorecase
set smartcase
" Don't use tabs, indent 4 spaces
"set softtabstop=0
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
"set smarttab
" Highlight tabs and trailing spaces
match Error / \+$/
"match Error /\t\| \+$/
" Don't wrap text at the edge of the screen
set nowrap
" Don't resize all the windows when splitting
set noequalalways
" Automatically wrap text at the edge of the screen
set textwidth=79
" These are the set formatoptions
" Taken from: http://vimdoc.sourceforge.net/htmldoc/change.html#format-comments
"t   Auto-wrap text using textwidth (does not apply to comments)
"c   Auto-wrap comments using textwidth, inserting the current comment
"    leader automatically.
"r   Automatically insert the current comment leader after hitting
"    <Enter> in Insert mode.
"o   Automatically insert the current comment leader after hitting 'o' or
"    'O' in Normal mode.
"q   Allow formatting of comments with "gq".
"    Note that formatting will not change blank lines or lines containing
"    only the comment leader.  A new paragraph starts after such a line,
"    or when the comment leader changes.
"b   Like 'v', but only auto-wrap if you enter a blank at or before
"    the wrap margin.  If the line was longer than 'textwidth' when you
"    started the insert, or you do not enter a blank in the insert before
"    reaching 'textwidth', Vim does not perform auto-wrapping.
"n   When formatting text, recognize numbered lists.  
set formatoptions=croqbtn

" syntax on  -- required for this to work
" Fold based on the ident
"set foldmethod=syntax
"set foldmethod=manual
" Make sure that no folds are on be default when starting
"set foldlevelstart=99
" Create a visual display of the folding
"set foldcolumn=2

" Keeps the cursor from the very edge, allowing you to see some context.
set scrolloff=2

set diffopt=iwhite
set diffopt+=filler

" Allow files to be opened and edited in the background
set hidden
" Do incremental searches
set incsearch
" Use a visual bell
set vb
" Turn off the visual bell
set t_vb=
" insert two spaces after period when joining lines
set joinspaces
" Hide the mouse while you're typing
set mousehide
set winwidth=80

" Match braces when typing
set showmatch
" Makes tab completion match the longest string possible
set wildmode=longest

" No backups because Avecto sucks.
set dir=
set backupdir=
set nobackup
set nowritebackup
set noswapfile

" The following stuff only works on 7.0
if v:version >= 700
  " Don't want to allow vim to change directories from under you all the time!
  " This messes up the top level tags.
  "set autochdir
  syntax on
  let g:alternateNoDefaultAlternate = 1
  let g:alternateSearchPath = 'reg:/include/lib/g/,reg:/lib/include/g/'
" let g:alternateSearchPath = 'reg:|include|library|g|,reg:|library|include|g|'
  let g:alternateExtensions_h = "C,c"
  let g:alternateExtensions_C = "h,H"

" Highlights the current line
   "autocmd WinEnter * setlocal cursorline cursorcolumn
   "autocmd WinLeave * setlocal nocursorcolumn nocursorline
   "autocmd BufEnter * setlocal cursorline cursorcolumn
   "autocmd BufLeave * setlocal nocursorcolumn nocursorline

   "autocmd WinEnter * setlocal cursorline
   "autocmd WinLeave * setlocal nocursorline
   "autocmd BufEnter * setlocal cursorline
   "autocmd BufLeave * setlocal nocursorline
endif

" Add the directory of the current file to the path, so it's fellow directory
" contents can by opened by their base filename
"autocmd BufRead *
   "\ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
   "\ exec "set path-=".s:tempPath |
   "\ exec "set path+=".s:tempPath

"This is a 16 color terminal
"set t_Co=16
"colorscheme darkblue
"colorscheme default mine blue darkblue torte
"colorscheme pierson
let g:rehash256 = 1
"let g:molokai_original = 1
set t_Co=256
colorscheme darkblue
"colorscheme molokai

" Method of declaring C/C++ formatting
"set cinoptions={1s,:0,l1,g0,c0,(0,(s,m1
" Add-on that displays all tags in the current buffers in a side window
"nnoremap <silent> <F8> :TlistToggle<CR>

"filetype on
"filetype plugin on
"filetype indent on
"autocmd FileType c,cpp,java set cindent formatoptions-=t
"autocmd FileType css,xml set smartindent formatoptions-=t omnifunc=syntaxComplete#Complete
"autocmd FileType html,xhtml set smartindent shiftwidth=2
"autocmd FileType tex, set smartindent shiftwidth=2
"autocmd FileType make set noexpandtab shiftwidth=8 formatoptions-=t
"autocmd FileType tcl,expect,perl set smartindent cinkeys-=0# cindent comments=:# indentkeys-=0# formatoptions-=t
"autocmd FileType tcl,expect inoremap # X #
"autocmd FileType python set smartindent tabstop=4 expandtab softtabstop=4 shiftwidth=4 formatoptions-=t
" always add the current file's directory to the path if not already there
"set omnifunc=



nmap <C-P> :set invpaste<CR>
imap <F12> <Esc><F12>
nmap <F12> :bn<cr>
imap <S-F12> <Esc><S-F12>
nmap <S-F12> :bp<cr>
nmap <S-PageUp> :tabp<cr>
nmap <S-PageDown> :tabn<cr>
" The training semicolon allows it to look in parent directories
"set tags=.\tags,$DOSSRC\tags,C:\QNX630\target\qnx6\tags
set tags=tags;/
"set undolevels=500
"set maxmemtot=8192
"set maxmem=8192


" Set up specific buffers
" Load the current file list for easy editing
"let @f=:e ~/.vim_file_list
" Used to evaluate a line containing a mathematical expression
"let @A = :let @/ = ""r 1*//g
" Same as above, but as float instead of int.
"let @A = :let @/ = ""= .*//g
" This swaps "a = b;" into "b = a;"
"let @s='^"adt=2xf;C =  "ap$C; k'

" Tricks

" Command Replacements
"cab rpl .,$s/^/>
"cab cm !cc_modify %
"cab chm !chmod u+w %
":set noreadonlydit %
"cab kp 1,$:!~/misc/indent -bs
"cab kpi !~/misc/indent -bs
"cab gunz 1,$:!gzip -d -c %
" Perforce Commands
"cab pedit !p4 edit %
"cab pdiff !p4 diff %
"cab prevert !p4 revert %
"cab padd !p4 add %
cab b buffers
cab ma marks
cab E e
cab W w
cab Q q
cab Wq wq
cab WQ wq
" Spelling is now integrated by default.  Yea!  Also annoying!
"cab spell !aspell -c %
"setlocal spell spelllang=en_us
cab stat e \\rfcfs05\FalconIII_SW\User\amp\status.html
cab stat e H:\status.html
cab vd vert diffsplit
cab hours e H:\notes.d\peoplesoft.txt

"Search for multiple strings in a file:
"/dhclient\|Network\|Linux

" MRU
"let MRU_File = $HOME . "/.vim/MRU_files"
"let MRU_Max_Entries = 100
"let MRU_Window_Height = 40
"let MRU_Use_Current_Window = 1
""let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'

"source cscope_maps.vim

" Taglist
"nnoremap <silent> <F8> :TlistToggle<CR>
"let Tlist_Ctags_Cmd='C:\Progra~1\Ctags\ctags.exe'
"let Tlist_Ctags_Cmd='c:/cygwin/bin/ctags.exe'
"let Tlist_Ctags_Cmd='/usr/bin/ctags'

nnoremap <silent> <F8> :TagbarToggle<CR>

"function AllBuffers(cmnd)
  "let cmnd = a:cmnd
  "let i = 1
  "while (i <= bufnr("$"))
    "if bufexists(i)
      "execute "buffer" i
      "execute cmnd
    "endif
    "let i = i+1
  "endwhile
"endfun

" Statusline
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=%f\%m%r%h%w\ [%2n]\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ %=%-14.(%l,%c%V%)\ %P
" To Enable...
"set laststatus=2

" Completion options
set complete=".itb"
set completeopt=longest,menu
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" tmux pane switching support from vim
" REQUIRES TMUX >= 1.8
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
"nnoremap <silent> <C-/> :TmuxNavigatePrevious<cr>

"nnoremap <silent> <C-h> :wincmd h<cr>
"nnoremap <silent> <C-j> :wincmd j<cr>
"nnoremap <silent> <C-k> :wincmd k<cr>
"nnoremap <silent> <C-l> :wincmd l<cr>
"nnoremap <silent> <C-/> :wincmd /<cr>
