let g:vimdir=fnamemodify($MYVIMRC, ':p:h')

function SourceVimdirFile(filename)
  execute 'source' g:vimdir."/".a:filename
endfunction

call SourceVimdirFile("pluginstall.vim")
call SourceVimdirFile("functionality.vim")
call SourceVimdirFile("theme.vim")
call SourceVimdirFile("styles.vim")
call SourceVimdirFile("coc.vim")
call SourceVimdirFile("airline.vim")

if has("gui_running")
  call SourceVimdirFile("gui.vim")
endif

" Key bindings defined in the "shortcuts" file should always take precedence
call SourceVimdirFile("shortcuts.vim")

