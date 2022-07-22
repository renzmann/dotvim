" =============================================================================
"                              Keyboard Shortcuts
" =============================================================================
" Search for [<letter>] to see what's mapped under <leader><letter>.
" e.g. /[s will take you to the settings navigation section.

" Faster scrolling
nnoremap <C-e>                 2<C-E>
nnoremap <C-y>                 2<C-Y>

" Make spacebar the leader key
let mapleader=" "
nnoremap <Space>               <Nop>

" Unset accidental sleep
nnoremap gs                    <Nop>

" Case-insensitive search
nnoremap <leader>/             /\c<Left><Left>

" Make `cgn` operate on the currently selected word
" https://vi.stackexchange.com/a/18895
nnoremap <silent>cgn           :<C-u>let @/=expand('<cword>')<cr>cgn

" Capitalize last word while inserting text
inoremap <C-j>                 <Esc>gUiwea

" [v]imscript execution
" -----------------------------------------------------------------------
" Execute the whole line under cursor in normal mode
nnoremap <silent><leader>ve    yy:@"<CR>0
" Execute visual selection
vnoremap <silent><leader>ve    y:@"<CR>

" [s]ettings navigation
" -----------------------------------------------------------------------
nnoremap <silent><leader>si    :<C-u>e $MYVIMRC<CR>
if has('nvim')
  nnoremap <silent><leader>sn  :<C-u>exe 'edit '.stdpath('config').'/init.lua'<CR>
  nnoremap <silent><leader>sv  :<C-u>exe 'edit '.$MYVIMHOME.'/vimrc'<CR>
endif
nnoremap <silent><leader>sk    :<C-u>e $MYVIMHOME/after/plugin/keymap.vim<CR>
nnoremap <silent><leader>sp    :<C-u>e $MYVIMHOME/after/plugin<CR>
nnoremap <silent><leader>sf    :<C-u>e $MYVIMHOME/after/ftplugin<CR>

" [t]ree view of the CWD or current file's directory
" -----------------------------------------------------------------------
nnoremap <silent><leader>t     :<C-u>30Lexplore<CR>
nnoremap <silent><leader>T     :<C-u>30Lexplore %:p:h<CR>

" Markdown and RST headers [1] [2] [3] [4]
" -----------------------------------------------------------------------
nnoremap <leader>1             yypVr=
nnoremap <leader>2             yypVr-
nnoremap <leader>3             yypVr+
nnoremap <leader>4             yypVr*
onoremap ih                    :<C-U>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<CR>

" Tab movement [h] [l]
" -----------------------------------------------------------------------
nnoremap <silent><leader>h     :<C-u>bprevious<CR>
nnoremap <silent><leader>l     :<C-u>bnext<CR>
nnoremap <silent><leader>H     :<C-u>tabprevious<CR>
nnoremap <silent><leader>L     :<C-u>tabnext<CR>

" [c]lipboard [c]ommands
" -----------------------------------------------------------------------
nnoremap <leader>cv            "+p
vnoremap <leader>cv            "+p
vnoremap <leader>cc            "+y

" [f]ind things
" -----------------------------------------------------------------------
if executable('fzf') && exists(":Files")
  nnoremap <leader>ff          :Files<CR>
  nnoremap <leader>fb          :Buffers<CR>
  nnoremap <leader>fg          :GitFiles<CR>
  nnoremap <leader>ft          :Tags<CR>
  nnoremap <leader>fr          :Rg<CR>
else
  nnoremap <leader>ff          :find *
  nnoremap <leader>fb          :b *
  nnoremap <leader>ft          :tag *
  nnoremap <leader>fr          :grep **<Left>
endif
nnoremap <leader>fa            :<C-u>e ~/.aws/credentials<CR>
