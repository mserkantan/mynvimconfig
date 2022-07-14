local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd([[

nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

set number

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material

if (has('termguicolors'))
  set termguicolors
endif





]])

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
    use 'wbthomason/packer.nvim'

    use 'kaicataldo/material.vim'
    use 'marp-team/marp'
    use 'preservim/nerdtree'
    use 'neoclide/coc.nvim'
    use 'prabirshrestha/vim-lsp'
    use 'm-pilia/vim-ccls'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
