vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.clipboard:append("unnamedplus")

require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'preservim/nerdtree'
  use 'neoclide/coc.nvim'
  use 'junegunn/fzf.vim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'numToStr/Comment.nvim'
  use 'github/copilot.vim'

  -- local satus, plugins = pcall(require, 'plugins')
  -- if status then
  --   for _, plugin in ipairs(plugsin) do
  --     use(plugin)
  --   end
  -- end
end)

-- init indent-blankline
require('ibl').setup()

-- init Comment.vim
require('Comment').setup()

-- key mapping
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<Leader>t', ':NERDTreeToggle<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>k', '<Cmd>call CocAction(\'doHover\')<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>d', '<Cmd>call CocAction(\'jumpDefinition\')<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>r', '<Cmd>call CocAction(\'listReferences\')<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>o', '<Cmd>call CocAction(\'outline\')<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>o', ':CocList outline<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', '<Plug>(coc-diagnostic-next)', {silent = true, noremap = false})
vim.api.nvim_set_keymap('n', '<leader>p', '<Plug>(coc-diagnostic-prev)', {silent = true, noremap = false})

-- run custom init script
local status, err = pcall(require, 'init_custom')
