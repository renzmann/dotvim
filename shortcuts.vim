" =============================================================================
" Keyboard Shortcuts
" =============================================================================

" Faster scrolling
nnoremap <C-e>                2<C-E>
nnoremap <C-y>                2<C-Y>

" Don't remember where this came from
set backspace=indent,eol,start
set foldtext=getline(v:foldstart+1)

" Make spacebar the leader key
let mapleader=" "
nnoremap <Space> <Nop>

" Maybe the most controversial thing in here...
nnoremap <C-s>                :<C-u>w<CR>

" Fast escape
imap jk                       <Esc>
omap jk                       <Esc>
imap kj                       <Esc>
omap kj                       <Esc>

" Getting around
nnoremap <S-ScrollWheelUp>    <ScrollWheelLeft>
nnoremap <S-ScrollWheelDown>  <ScrollWheelRight>
map <S-Down>                  ]mzz
map <S-Up>                    [mzz

" Camel Motion
map <silent> w                <Plug>CamelCaseMotion_w
map <silent> b                <Plug>CamelCaseMotion_b
map <silent> e                <Plug>CamelCaseMotion_e
map <silent> ge               <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" Move lines/visual blocks up and down
" https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <M-j>                :m .+1<CR>==
nnoremap <M-k>                :m .-2<CR>==
inoremap <M-j>                <Esc>:m .+1<CR>==gi
inoremap <M-k>                <Esc>:m .-2<CR>==gi
vnoremap <M-j>                :m '>+1<CR>gv=gv
vnoremap <M-k>                :m '<-2<CR>gv=gv
" Capitalize last word while inserting text
inoremap <C-j>                <Esc>viwUea
" Comment line
noremap  <Leader>/            :Commentary<CR>
" Select 'in next' or 'in last' thing
onoremap in(                  :<C-U>normal! f(vi(<CR>
onoremap in[                  :<C-U>normal! f[vi[<CR>
onoremap il(                  :<C-U>normal! F)vi(<CR>
onoremap il[                  :<C-U>normal! F]vi[<CR>
onoremap i;                   :<C-U>execute "normal! v/;\rhs"<CR>

" Markdown and RST headers
nnoremap <Leader>1            yypVr=
nnoremap <Leader>2            yypVr-
nnoremap <Leader>3            yypVr+
nnoremap <Leader>4            yypVr*
onoremap ih                   :<C-U>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<CR>

" Code Folding
nnoremap \                    za
vnoremap \                    zf


" =======================================================================
"                       LEADER LAYERS
" =======================================================================
" [p]encil
" -----------------------------------------------------------------------
nnoremap <silent><Leader>p            :<C-u>TogglePencil<CR>
nnoremap <silent><Leader>ph           :<C-u>HardPencil<CR>
nnoremap <silent><Leader>ps           :<C-u>SoftPencil<CR>
nnoremap <silent><Leader>po           :<C-u>PencilOff<CR>

" [s]ettings - plugins, keymaps, and individual subsections
" -----------------------------------------------------------------------
nnoremap <silent><Leader>si           :<C-u>tabe $MYVIMRC<CR>
nnoremap <silent><Leader>sk           :<C-u>exe "tabe ".vimdir."/shortcuts.vim"<CR>
nnoremap <silent><Leader>sc           :<C-u>exe "tabe ".vimdir."/coc.vim"<CR>
nnoremap <silent><Leader>sp           :<C-u>exe "tabe ".vimdir."/pluginstall.vim"<CR>
nnoremap <silent><Leader>sf           :<C-u>exe "tabe ".vimdir."/functionality.vim"<CR>
nnoremap <silent><Leader>ss           :<C-u>exe "tabe ".vimdir."/styles.vim"<CR>
nnoremap <silent><Leader>sl           :<C-u>source $MYVIMRC<CR>

" [g]it commands
" -----------------------------------------------------------------------
nnoremap <silent><Leader>gk           :<C-u>tab Git<CR>
nnoremap <silent><Leader>g<S-k>       :<C-u>Git push<CR>
nnoremap <silent><Leader>gf           :<C-u>Git fetch<CR>
nnoremap <silent><Leader>gF           :<C-u>Git pull<CR>
nnoremap <silent><Leader>gd           :<C-u>Gvdiffsplit<CR>

" Search f[o]r stuff
" -----------------------------------------------------------------------
nnoremap <silent><Leader>of           :<C-u>Files<CR>
nnoremap <silent><Leader>oo           :<C-u>Rg<CR>
nnoremap <silent><Leader>ob           :<C-u>Buffers<CR>
nnoremap <silent><Leader>oh           :<C-u>History<CR>
nnoremap <silent><Leader>ol           :<C-u>Helptags<CR>
nnoremap <silent><Leader>oc           :<C-u>Commits<CR>

" Tab Movement
" -----------------------------------------------------------------------
" [h]
nnoremap <silent><Leader>h            :<C-u>tabp<CR>
" [l]
nnoremap <silent><Leader>l            :<C-u>tabn<CR>

" [r]un code
" -----------------------------------------------------------------------
nnoremap <silent><Leader>rp           :silent !python <C-R>%<CR>

" [v]im execution
" -----------------------------------------------------------------------
" Execute the whole line under cursor in normal mode
nnoremap <silent><Leader>ve           yy:@"<CR>0
" Execute visual selection
vnoremap <silent><Leader>ve           y:@"<CR>

" View [m]essages, logs, and output
" -----------------------------------------------------------------------
nnoremap <silent><Leader>m            :messages<CR>

" [f]ile tree commands
" -----------------------------------------------------------------------
nnoremap <silent><Leader>ft           :<C-u>NERDTree<CR>
" Open/close NERDTree at the current buffer
nnoremap <silent><expr><Leader>fn     g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"


" Conqueror of Completion (CoC) Commands
" -----------------------------------------------------------------------

" Old CoC Metals stuff in case we want it back some day
" Toggle panel with Tree Views
" nnoremap <silent> <Leader>fm  :<C-u>CocCommand metals.tvp<CR>
" " Toggle Tree View 'metalsPackages'
" nnoremap <silent> <Leader>fp  :<C-u>CocCommand metals.tvp metalsPackages<CR>
" " Toggle Tree View 'metalsCompile'
" nnoremap <silent> <Leader>fc  :<C-u>CocCommand metals.tvp metalsCompile<CR>
" " Toggle Tree View 'metalsBuild'
" nnoremap <silent> <Leader>fb  :<C-u>CocCommand metals.tvp metalsBuild<CR>
" " Reveal current current class (trait or object) in Tree View 'metalsPackages'
" nnoremap <silent> <Leader>ff  :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>t

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g                       <Plug>(coc-diagnostic-prev)
nmap <silent> ]g                       <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd                       <Plug>(coc-definition)
nmap <silent> gy                       <Plug>(coc-type-definition)
nmap <silent> gi                       <Plug>(coc-implementation)
nmap <silent> gr                       <Plug>(coc-references)

" Remap for rename current word
nmap <Leader>rn                        <Plug>(coc-rename)

" Used to expand decorations in worksheets
" nmap <Leader>ws <Plug>(coc-metals-expand-decoration)


" [a]pplying codeAction to the selected region.
" Example: `<Leader>aap` for current paragraph
xmap <Leader>a                         <Plug>(coc-codeaction-selected)
nmap <Leader>a                         <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current buffer.
nmap <Leader>ac                        <Plug>(coc-codeaction)
" Apply AutoFix [q]uickfix to problem on the current line.
nmap <Leader>qf                        <Plug>(coc-fix-current)

" Mappings for [c]ode actions and CoCList
" Make sure `"codeLens.enable": true` is set in coc config
" Use `:CocConfig` to go edit that file
nnoremap <Leader>cl                    :<C-u>call CocActionAsync('codeLensAction')<CR>
" Show all diagnostics.
nnoremap <silent><nowait> <Leader>ca   :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <Leader>ce   :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <Leader>cc   :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <Leader>co   :<C-u>CocList outline<cr>
" Search workLeader symbols.
nnoremap <silent><nowait> <Leader>cs   :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <Leader>cj   :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <Leader>ck   :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <Leader>cp   :<C-u>CocListResume<CR>

nmap <Leader>cr                        <Plug>(coc-range-select)
nmap <Leader>cb                        <Plug>(coc-range-select-backward)
vmap <Leader>cf                        <Plug>(coc-format-selected)
nmap <Leader>cf                        <Plug>(coc-format-selected)

" Select things more easily
xmap if                                <Plug>(coc-funcobj-i)
omap if                                <Plug>(coc-funcobj-i)
xmap af                                <Plug>(coc-funcobj-a)
omap af                                <Plug>(coc-funcobj-a)
xmap ic                                <Plug>(coc-classobj-i)
omap ic                                <Plug>(coc-classobj-i)
xmap ac                                <Plug>(coc-classobj-a)
omap ac                                <Plug>(coc-classobj-a)

" Clip[b]oard commands
" -----------------------------------------------------------------------
nnoremap <Leader>bv                   "+p
vnoremap <Leader>bv                   "+p
vnoremap <Leader>bc                   "+y

" [i]python slime commands
" -----------------------------------------------------------------------
nnoremap <silent><C-j>                :<C-u>IPythonCellNextCell<CR>
nnoremap <silent><C-k>                :<C-u>IPythonCellPrevCell<CR>
vnoremap <silent><C-j>                :<C-u>IPythonCellNextCell<CR>
vnoremap <silent><C-k>                :<C-u>IPythonCellPrevCell<CR>
nnoremap <silent><Leader>ie           :<C-u>IPythonCellExecuteCell<CR>
nnoremap <silent><Leader><Leader>     :<C-u>IPythonCellExecuteCellJump<CR>
nnoremap <silent><Leader>il           :<C-u>IPythonCellClear<CR>
nnoremap <silent><Leader>ix           :<C-u>IPythonCellClose<CR>

" e[x]tra things
" -----------------------------------------------------------------------
nnoremap <silent><Leader>xh           :<C-u>set invhlsearch<CR>

