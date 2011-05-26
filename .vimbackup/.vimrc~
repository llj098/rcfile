set nocompatible

" General {
	set background=dark         " Assume a dark background
	"set term=builtin_ansi       " Make arrow and other keys work
	filetype plugin indent on  	" Automatically detect file types.
	syntax on 					" syntax highlighting
	set mouse=a					" automatically enable mouse usage
	set autochdir 				" always switch to the current file directory..
	" not every vim is compiled with this, use the following line instead
	" If you use command-t plugin, it conflicts with this, comment it out.
     "autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
	scriptencoding utf-8
	" Default file encoding for new files
	setglobal fenc=utf-8
	"set up the grepprg
	set grepprg=/bin/grep

	" Auto detect file encoding when opening a file. To check what file encoding was
	" selected run ":set fenc" and if you know the auto detection failed and want to
	" force another one run ":edit ++enc=<your_enc>".
	set fencs=utf-8,CP936

	" Internal encoding used by vim buffers, help and commands
	"set enc=utf-8

	" Terminal encoding used for input and terminal display
	" Make sure your terminal is configured with the same encoding.
	set tenc=utf-8

	set autowrite                  " automatically write a file when leaving a modified buffer
	set shortmess+=filmnrxoOtT     	" abbrev. of messages (avoids 'hit enter')
	set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
	set virtualedit=onemore 	   	" allow for cursor beyond last character
	set history=1000  				" Store a ton of history (default is 20)
	"set spell 		 	        	" spell checking on

	set tags=/home/lliulijin/Source/linux-2.6.36.2/tags

	" Setting up the directories {
		set backup 						" backups are nice ...
		set backupdir=$HOME/.vimbackup//  " but not when they clog .
		set directory=$HOME/.vimswap// 	" Same for swap files
		set viewdir=$HOME/.vimviews// 	" same for view files

		"" Creating directories if they don't exist
		silent execute '!mkdir -p $HOME/.vimbackup'
		silent execute '!mkdir -p $HOME/.vimswap'
		silent execute '!mkdir -p $HOME/.vimviews'
		au BufWinLeave * silent! mkview  "make vim save view (state) (folds, cursor, etc)
		au BufWinEnter * silent! loadview "make vim load view (state) (folds, cursor, etc)
	" }
" }

" Vim UI {
	colorscheme molokai
	set guifont=Monospace\ 11
	set guioptions=""
	set tabpagemax=15 				" only show 15 tabs
	set showmode                   	" display the current mode

	set cursorline  				" highlight current line
	hi cursorline guibg=#333333 	" highlight bg color of current line
	hi CursorColumn guibg=#333333   " highlight cursor

	if has('cmdline_info')
		set ruler                  	" show the ruler
		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
		set showcmd                	" show partial commands in status line and
									" selected characters/lines in visual mode
	endif

	if has('statusline')
		set laststatus=0           	" show statusline only if there are > 1 windows
		set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line?:\ %l/%L:%c

		" Use the commented line if fugitive isn't installed
		"set statusline=%<%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P " a statusline, also on steroids
		"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

		function! CurDir()
			let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
			return curdir
		endfunction

		function! HasPaste()
			if &paste
				return 'PASTE MODE  '
			else
				return ''
			endif
		endfunction
	endif

	set backspace=indent,eol,start 	" backspace for dummys
	set linespace=0 				" No extra spaces between rows
	set nu 							" Line numbers on
	set showmatch                  	" show matching brackets/parenthesis
	set incsearch 					" find as you type search
	set hlsearch 					" highlight search terms
	set winminheight=0 				" windows can be 0 line high
	set ignorecase 					" case insensitive search
	set smartcase 					" case sensitive when uc present
	set wildmenu 					" show list instead of just completing
	set wildmode=list:longest,full 	" comand <Tab> completion, list matches, then longest common part, then all.
	set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
	set scrolljump=5 				" lines to scroll when cursor leaves screen
	set scrolloff=3 				" minimum lines to keep above and below cursor
	set foldenable  				" auto fold code
	set foldmethod=syntax
	set gdefault					" the /g flag on :s substitutions by default
" }

" Formatting {
	set nowrap                     	" wrap long lines
	set autoindent                 	" indent at the same level of the previous line
	set shiftwidth=4               	" use indents of 4 spaces
	set noexpandtab 	       		" tabs are tabs, not spaces
	set tabstop=4 					" an indentation every four columns
	"set matchpairs+=<:>            	" match, to be used with %
	set pastetoggle=<F12>          	" pastetoggle (sane indentation on pastes)
	"set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
" }

" Key Mappings {
	" Easier moving in tabs and windows
	map <C-J> <C-W>j<C-W>_
	map <C-K> <C-W>k<C-W>_
	map <C-L> <C-W>l<C-W>_
	map <C-H> <C-W>h<C-W>_
	map <C-K> <C-W>k<C-W>_
	map <C-M><C-M> za
	map <M-m><M-m> zA
	map <C-M><C-L> zR
	map <C-M><C-O> zM
	" The following two lines conflict with moving to top and bottom of the
	" screen
	" If you prefer that functionality, comment them out.
	map <S-H> gT
	map <S-L> gt

	" Stupid shift key fixes
	cmap W w
	cmap WQ wq
	cmap wQ wq
	cmap Q q
	cmap Tabe tabe

	" Yank from the cursor to the end of the line, to be consistent with C and D.
	"nnoremap Y y$

	" Shortcuts
	" Change Working Directory to that of the current file
    cmap cwd lcd %:p:h

	" For when you forget to sudo.. Really Write the file.
	cmap w!! w !sudo tee % >/dev/null

	"If you have multiple split windows in your vim window then :bd closes the split window of the current file... so I like to use something a little more advanced:
	map fc <Esc>:call CleanClose(1)
	map fq <Esc>:call CleanClose(0)

	function! CleanClose(tosave)
		if (a:tosave == 1)
			w!
		endif
		let todelbufNr = bufnr("%")
		let newbufNr = bufnr("#")
		if ((newbufNr != -1) && (newbufNr != todelbufNr) && buflisted(newbufNr))
			exe "b".newbufNr
		else
			bnext
		endif

		if (bufnr("%") == todelbufNr)
			new
		endif
		exe "bd".todelbufNr
	endfunction
" }
" Plugins {
	"Tabbar{
		let g:Tb_SplitBelow=1       " Put the tabbar at the bottom
		let g:Tb_MaxSize=0          " I want it to automatically resize if I have buffers that fill more then one line
		let g:Tb_MoreThanOne=1      " I want the tabbar to be always visible
		let g:Tb_ModSelTarget = 1
		"Tb_Normal .............  for buffers that have NOT CHANGED and are NOT VISIBLE.
		"Tb_Changed ............. for buffers that HAVE CHANGED and are NOT VISIBLE
		"Tb_VisibleNormal ....... buffers that have NOT CHANGED and are VISIBLE
		"Tb_VisibleChanged ...... buffers that have CHANGED and are VISIBLE

	"}

	" nerdtree{
		nmap <silent> <M-d> :NERDTreeToggle<CR>
	"}
	"
	" Cscope {
		if has("cscope")
			cs kill -1
			"cs add /home/lliulijin/Source/linux-2.6.36.2/cscope.out
			"cs add /home/liulijin/Source/cscopes/cscope.out
			cs add /home/liulijin/Source/cscopes/redis

			map <F12> :cs find g <C-R>=expand("<cword>")<CR><CR>
			map <S-F12> :cs find s <C-R>=expand("<cword>")<CR><CR>

			nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
			nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
			nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
			nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
			nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
			nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
			nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
			nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

			" Using 'CTRL-spacebar' then a search type makes the vim window
			" split horizontally, with search result displayed in
			" the new window.

			nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
			nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
			nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
			nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
			nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
			nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
			nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
			nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

			cmap cfs cs find s  
			cmap cfg cs find g  

		endif
	"}

	
	" TagList {
		let Tlist_Ctags_Cmd = "ctags"
		nmap <silent> <M-t> :Tlist<CR>
	"}
"}

" GUI Settings {
	" GVIM- (here instead of .gvimrc)
	if has('gui_running')
		"set guioptions-=T          	" remove the toolbar
		set lines=99               	" max window
	endif
" }

" Functions {
	function GetFiles(l)
		let f = system("ls " . string(a:l))
		let f_list = split(f,'\n')

		return f_list
	endfunction
"}

" ctags and cscopes{ 
	set tags="";
	"let td = "/home/liulijin/Source/tags/"
	let td = $HOME . "/Source/tags/"
	let tfiles=GetFiles(td)
	for f in tfiles
		let t = td . f
		exe	"set tags+=" .t 
	endfor

	let td = $HOME . "/Source/cscopes/"
	"let td = "/home/liulijin/Source/cscopes/"
	let tfiles=GetFiles(td)
	for f in tfiles
		if stridx(f,".po") < 0 && stridx(f,".in") <0 && stridx(f,".files")<0
			let t = td . f
			exe	"cs add " .t
		endif
	endfor
"}




