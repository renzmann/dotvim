" This file is for snippets and functions found in the wild
" that looked useful.

" Automatically create folders when writing a new file
autocmd BufWritePre *
    \ if '<afile>' !~ '^scp:' && !isdirectory(expand('<afile>:h')) |
        \ call mkdir(expand('<afile>:h'), 'p') |
    \ endif

" Make slime use tmux
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

" Don't use the Julia latex completion on TAB
let g:latex_to_unicode_tab = 0

" Remove maximum file limit on CtrlP
let g:ctrlp_max_files = 0

" Ignore some folder patterns with ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|.git$\|venv$'

" But don't ignore all hidden folders/files
let g:ctrlp_show_hidden = 1
