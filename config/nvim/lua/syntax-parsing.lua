return {
  "nvim-treesitter/nvim-treesitter",
  config = function () 
    local treesitter_configs = require "nvim-treesitter.configs"
    treesitter_configs.setup({ 
      ensure_installed = {"html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "python","lua"},
      sync_install = true, 
      highlight = { enable = true }
    })
  end
}
