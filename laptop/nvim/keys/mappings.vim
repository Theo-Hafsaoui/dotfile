" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

"Moving around buffer with tab 
nnoremap <silent> <TAB> :bnext<CR>

" Save with ctrl-s
nnoremap <C-s> :w<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" shortcute to desactivate hightlight
nnoremap <silent> <C-p> :<C-u>nohlsearch<CR><C-l>

" Nerdtree keybinding
nmap <silent> <F1> :NERDTreeToggle<CR>
nmap <silent> <F3> :Startify<CR>

"Quickfix list navigation
map <A-.> :cn<CR>
map <A-,> :cp<CR>
map <A-/> :cclose<CR>

"Better way to change to norm mod in a term
tnoremap <Esc> <C-\><C-n>
