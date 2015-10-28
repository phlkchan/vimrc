" Notes
" To fix screen background color not filling screen, do this:
" :set t_ut= (disable Background Colro Erase/BCE)
" <C-l> (to refresh screen)
set t_ut=

" Set line numbers
set nu
try
set relativenumber
catch
endtry

" Navigation mappings
nnoremap <c-d> <PageUp>

" Tab navigation
map <Leader>t <esc>:tabnew<CR>
map <Leader>, <esc>:tabprevious<CR>
map <Leader>. <esc>:tabnext<CR>

" mapping for tagbar
map <Leader>bb <esc>:Tagbar<CR>

" Eclim Settings
let g:EclimLocateFileDefaultAction = 'edit'
nnoremap <Leader>er :LocateFile<CR>
nnoremap <Leader>es :CSearch 
nnoremap <Leader>ew :CSearch<CR>
nnoremap <Leader>et :ProjectTreeToggle<CR>

" P4 auto checkout
autocmd BufWritePre * :if &readonly | !p4 edit %

