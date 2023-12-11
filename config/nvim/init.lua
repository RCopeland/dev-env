require 'sets'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require 'syntax-parsing',
  require 'popup-terminal',
  require 'filebrowser',
  require 'fuzzyfinder',
  require 'lsp',
  require 'completion',
  require 'formatting',
  require 'linting',
  require 'testing',
  --require 'ai-assist',
  require 'utility/colortheme',
  require 'utility/statusline',
  require 'utility/dressing',
  require 'utility/hotkey-docs',
  require 'utility/indentdetect',
  require 'utility/indent-help',
}, {})

require 'utility/yank-highlight'
require 'remaps'
