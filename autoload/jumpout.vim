function! jumpout#jumpable(direction) abort
  if a:direction !~# '[hjkl]'
    return v:false
  endif
  return winnr() != winnr(a:direction)
  " TODO: Implement autocmd for closing of windows opened by jumpout
endfunction

function! jumpout#hook_jump(direction, cmd) abort
  execute a:cmd

  if a:direction =~# '[hjkl]'
    execute(printf('wincmd %s', a:direction))
  endif
endfunction

