function! tex#Compile() " {{{1
  if !exists("b:LaTeX_compile_command")
    let b:LaTeX_compile_command =
      \ "pdflatex -halt-on-error -file-line-error -synctex=1 %"
  endif

  let l:errorfile="/tmp/nvim_tex.err"
  execute
    \ "!" . b:LaTeX_compile_command . " 2>&1 | tee " . l:errorfile . ";" .
    \ "exit ${PIPESTATUS[0]}"

  if v:shell_error
    execute "silent cfile " . l:errorfile
  endif
  execute "silent !sudo rm " . l:errorfile
endfunction " }}}1

function! tex#PdfClose(filepath) " {{{1
  " Close the PDF file created by a TeX document. Note that this function only
  " works with the yabai window manager and the Skim PDF viewer.
  if !filereadable(a:filepath) | return | endif

  let l:windows = json_decode(join(systemlist("yabai -m query --windows")))
  let l:Skim_windows = filter(l:windows, 'v:val.app=="Skim"')
  if len(l:Skim_windows) == 0 | return | endif

  " macOS interprets every ':' as a '/'. We need to do the opposite
  " substitution in the window titles. We also remove everything after the
  " .pdf extension.
  for window in l:Skim_windows
    let window.title = substitute(window.title, '/', ':', 'g')
    let window.title = substitute(window.title, '\.pdf.*', '.pdf', '')
  endfor

  let l:filename = trim(system("basename " . a:filepath))

  " If there is just one Skim window and its title matches the filename of
  " the file in the buffer, quit Skim. If there are more Skim windows look
  " for the one whose title matches the filename of the file in the buffer
  " and close it.
  if len(l:Skim_windows) == 1 && l:Skim_windows[0].title == l:filename
    execute "silent !osascript -e \'quit app \"Skim\"\'"
  else
    for window in l:Skim_windows
      if window.title == l:filename
        execute
          \ "silent !yabai -m window " . shellescape(window.id, 1) . " --close"
      endif
    endfor
  endif
endfunction " }}}1

" vim:fdm=marker
