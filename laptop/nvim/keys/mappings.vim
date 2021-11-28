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

" FN keybinding
nmap <silent> <F1> :CocCommand explorer<CR>
nmap <silent> <F3> :Startify<CR>

"Quickfix list navigation
map <A-.> :cn<CR>
map <A-,> :cp<CR>
map <A-/> :cclose<CR>

"Make shortcute
nnoremap <C-m> :make<CR>
"Term with fish in vertical split
nnoremap <C-t> ::vsplit term://fish<CR>

"telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"Latex
autocmd FileType python map <buffer> <F12> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"Term
tnoremap <Esc> <C-\><C-n>
