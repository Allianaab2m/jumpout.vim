# jumpout.vim
&lt;C-w> to go outside of Vim.

## Install

vim-plug
```vim
Plug "Allianaab2m/jumpout.vim"
```

Packer
```lua
use({"Allianaab2m/jumpout.vim"})
```

## Usage
```vim
nnoremap <expr> <C-w>h jumpout#jumpable('h') ? 
  \ "\<C-w>h" : 
  \ "\<Cmd>Neotree<CR>" " Do your Ex Command.

nnoremap <expr> <C-w>l jumpout#jumpable('l') ?
  \ "\<C-w>l" :
  \ "\<Cmd>call jumpout#hook_jump('l', 'vsplit')<CR>" " Focus to opened window
```

## Todo

- [ ] docs
- [ ] autocmd for closing of windows opend by jumpout
- [ ] loop option
