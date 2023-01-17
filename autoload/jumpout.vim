" Single jump.
" direction -> 'h' | 'j' | 'k' | 'l'
" cmd -> string
" return -> v:null

function! jumpout#jump(direction, cmd) abort
  if (!jumpout_utils#_check_jumpable(a:direction)) " false = run cmd
    execute a:cmd
  endif

  " fallback <C-w>direction or jump into opened window
  execute(printf('wincmd %s', a:direction))
endfunction

" selectable jump commands.
" direction -> 'h' | 'j' | 'k' | 'l'
" cmds -> string[]
" return -> v:null

function! jumpout#select_jump(direction, cmds)
  if (!jumpout_utils#_check_jumpable(a:direction))
    call jumpout_utils#_select(a:cmds, {}, function('jumpout_utils#_select_handler'))
  endif

  execute(printf('wincmd %s', a:direction))
endfunction

