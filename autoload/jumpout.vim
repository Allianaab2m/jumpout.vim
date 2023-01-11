function! jumpout#jumpable(direction) abort
  if a:direction !~# '[hjkl]'
    return v:false
  endif
  return winnr() != winnr(a:direction)
  " TODO: Implement autocmd for closing of windows opened by jumpout
endfunction

function! jumpout#hook_jump(direction, cmd) abort
  execute a:cmd

  if a:direction ==# 'h'
    wincmd h
  elseif a:direction ==# 'j'
    wincmd j
  elseif a:direction ==# 'k'
    wincmd k
  elseif a:direction ==# 'l'
    wincmd l
  endif
endfunction

