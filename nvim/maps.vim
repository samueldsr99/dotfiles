" Description: Keymaps

nmap <leader>q :q<cr>
nmap <leader>w :w<cr>

" Select all
nmap <C-a> gg<S-v>G

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <s-tab> :tabprev<Return>
nmap <tab> :tabnext<Return>

"------------------------------
" Windows
" Navigate
nmap <c-l> :wincmd l<cr>
nmap <c-h> :wincmd h<cr>
nmap <c-j> :wincmd j<cr>
nmap <c-k> :wincmd k<cr>
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

nmap <c-b> :NERDTreeToggle<cr>

" Resize windows
nmap <leader>+ :vertical resize +5<CR>
nmap <leader>- :vertical resize -5<CR>

