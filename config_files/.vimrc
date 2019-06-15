call plug#begin()
	
	Plug 'morhetz/gruvbox'
	
	Plug 'pangloss/vim-javascript'

	Plug 'kien/ctrlp.vim'

	Plug 'junegunn/goyo.vim'
	
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

" editor
set nu
set tabstop=4
""syntax on
set shiftwidth=4
set spelllang=sv

" theme
set t_Co=256
set background=dark
colorscheme gruvbox
hi Normal ctermbg=black

" keybindings
set nocompatible
filetype on

"autocmd Filetype markdown Goyo
"autocmd Filetype markdown nnoremap ss :wqa<Enter>

"javascript
autocmd Filetype javascript inoremap FF () => {<Enter><Enter>}<Up><Tab>
autocmd Filetype javascript inoremap II if(){<Enter><Enter>}<Up><Up><Right><Right>
autocmd Filetype javascript inoremap #I import<Space>from<Space>""<Esc>hhhhhhhi<Space>

"html
autocmd Filetype html inoremap INIT <!DOCTYPE html><Enter><html><Enter><head><Enter></head><Enter><body><Enter></body><Enter></html><Esc>gg

"c++
autocmd Filetype cpp inoremap #I #include<Space><><Esc>i
autocmd Filetype cpp nnoremap <C-c> :!g++ -lsfml-window -lsfml-graphics -lsfml-system *.cpp -o out && ./out<Enter>

"latex
let g:livepreview_previewer = "mupdf"

inoremap ( ()<Left>
inoremap () ()
inoremap [ []<Left>
inoremap [] []
inoremap { {}<Left>
inoremap {} {}
inoremap " ""<Left>
inoremap "" ""

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

