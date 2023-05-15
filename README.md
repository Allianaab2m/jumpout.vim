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
nnoremap <C-w>h <Cmd>call jumpout#jump('h', 'Neotree')<CR>
nnoremap <C-w>j <Cmd>call jumpout#select_jump('j', ['bo term', 'Trouble workspace_diagnostics'])<CR>
```

## Todo

- [x] docs
- [x] autocmd for closing of windows opend by jumpout
- [ ] loop option
