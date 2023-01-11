function! jumpout#jumpable(direction) abort
  if a:direction !~# '[hjkl]'
    return v:false
  endif
  return winnr() != winnr(a:direction)
  " TODO: Implement autocmd for closing of windows opened by jumpout
endfunction
