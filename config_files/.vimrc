call plug#begin()
	
	Plug 'morhetz/gruvbox'
	
	Plug 'pangloss/vim-javascript'

	Plug 'kien/ctrlp.vim'

	Plug 'junegunn/goyo.vim'

call plug#end()

" editor
set nu
set tabstop=4
""syntax on
set shiftwidth=4

" theme
set t_Co=256
set background=dark
colorscheme gruvbox
hi Normal ctermbg=black

" keybindings
set nocompatible
filetype on

autocmd Filetype markdown Goyo
autocmd Filetype markdown nnoremap ss :wqa<Enter>

autocmd Filetype javascript inoremap FF () => {<Enter><Enter>}<Up><Tab>
autocmd Filetype javascript inoremap II if(){<Enter><Enter>}<Up><Up><Right><Right>
autocmd Filetype javascript inoremap #I import<Space>from<Space>""<Esc>hhhhhhhi<Space>

autocmd Filetype html inoremap INIT <!DOCTYPE html><Enter><html><Enter><head><Enter></head><Enter><body><Enter></body><Enter></html><Esc>gg
autocmd Filetype html inoremap <Space><Space> <Esc>bi<<Esc>ea><Esc>ybwpbi</<Esc>ea><Esc>bhhi

autocmd Filetype cpp inoremap #I #include<Space><><Esc>i

inoremap ( ()<Left>
inoremap () ()
inoremap [ []<Left>
inoremap [] []
inoremap { {}<Left>
inoremap {} {}
inoremap " ""<Left>
inoremap "" ""

"nnoremap " hea"<Esc>bi"<Esc>
nnoremap y "+y
nnoremap yy "+yy
nnoremap d "+d
nnoremap dd "+dd
nnoremap c "+c
nnoremap cc "+cc
nnoremap p "+p
nnoremap P "+P
nnoremap ( hea)<Esc>bi(<Esc>
nnoremap [ hea]<Esc>bi[<Esc>
nnoremap { hea}<Esc>bi{<Esc>

nnoremap H <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l

" saving
nnoremap s <C-c>:w<Enter>
nnoremap ss <C-c>:wq<Enter>
nnoremap S <C-c>:wa<Enter>
nnoremap SS <C-c>:wqa<Enter>

