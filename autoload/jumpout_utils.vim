" Return window exists for direction.
" return -> bool

function! jumpout_utils#_check_jumpable(direction) abort
  if a:direction !~# '[hjkl]'
    return v:false
  endif
  return winnr() != winnr(a:direction)
endfunction

function! jumpout_utils#_reverse_direction(direction) abort
  if a:direction ==# 'h'
    return 'l'
  elseif a:direction ==# 'j'
    return 'k'
  elseif a:direction ==# 'k'
    return 'j'
  elseif a:direction ==# 'l'
    return 'h'
  endif
endfunction

" https://zenn.dev/kawarimidoll/articles/97331bd750aec8 thanks!
" vim.ui.select like menu
function! jumpout_utils#_select(items, opts, on_choice) abort
  let prompt = get(a:opts, 'prompt', 'Select jump:')
  let s:format_item = get(a:opts, 'format_item', { item -> item })
  let items = map(a:items[:], {idx, item -> (idx + 1) .. ': ' .. s:format_item(item) })
  
  let choice = inputlist(insert(items, prompt))
  if choice > 0 && choice <= len(a:items)
    call a:on_choice(a:items[choice - 1], choice)
  else
    call a:on_choice(v:null, v:null)
  endif
endfunction

function! jumpout_utils#_select_handler(item, idx) abort
  execute(printf(a:item))
endfunction
