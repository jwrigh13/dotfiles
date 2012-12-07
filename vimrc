call pathogen#infect()
syntax enable
filetype plugin indent on

" set default font
set guifont=Monaco:h12

" turn on line numbers
set number

" no line wrapping
set nowrap

" show invisible characters
set list

" allow files to be hidden without saving
set hidden

" turn off toolbar in gui vim
set guioptions=t

" new split windows should be on the right or bottom
set splitright
set splitbelow

" set tab options
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" set list options
set listchars="" 
set listchars=tab:\ \ 
set listchars+=trail:.
set listchars+=extends:>

" set backup and swap options
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//

colorscheme solarized

" Make the command :C clear the current search
" command C let @/=""
" :command Thtml :%!tidy -q -i -html

set runtimepath^=~/.vim/bundle/ctrlp.vim

" --- Plugin Key Mappings ---

" map leader n to toggle NERDTree
map <leader>n :NERDTreeToggle<CR>

" map command / to toggle comments
" D is command key
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i 

" mappings for janus
map <D-t> :CtrlP<CR>
imap <D-t> <ESC>:CtrlP<CR>

" indent mappings borrowed from janus
vmap <D-]> >gv
vmap <D-[> <gv

nmap <D-]> >>
nmap <D-[> <<

omap <D-]> >>
omap <D-[> <<

imap <D-]> <Esc>>>i
imap <D-[> <Esc><<i

" Bubble single lines
nmap <D-Up> [e
nmap <D-Down> ]e
nmap <D-k> [e
nmap <D-j> ]e

" Bubble multiple lines
vmap <D-Up> [egv
vmap <D-Down> ]egv
vmap <D-k> [egv
vmap <D-j> ]egv

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r
  set statusline+=Line:%l/%L[%p%%]
  set statusline+=Col:%v
  set statusline+=Buf:#%n
  set statusline+=[%b][0x%B]
endif