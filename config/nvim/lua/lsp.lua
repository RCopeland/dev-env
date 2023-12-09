return {
  'williamboman/mason.nvim', -- mason installs lsp servers
  dependencies = {
    'williamboman/mason-lspconfig.nvim', -- configure the installed servers (mason side)
    'hrsh7th/cmp-nvim-lsp', -- advertise cmp-nvim to lsp servers 
    'neovim/nvim-lspconfig'-- configure lsp settings (nvim side)
  },
  config = function()
    local mason = require 'mason'
    local mason_lspconfig = require 'mason-lspconfig'
    local cmp_nvim_lsp = require 'cmp_nvim_lsp'
    local capabilities = cmp_nvim_lsp.default_capabilities()
    local nvim_lspconfig = require 'lspconfig'

    mason.setup({
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    })

    -- servers to have installed and configured
    local servers = {
      html = {},
      tsserver = {},
      lua_ls = {
        Lua = {
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
      tailwindcss = {},
    }

    local on_attach = function(client, bufnr)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })
    end

    mason_lspconfig.setup {
      ensure_installed = vim.tbl_keys(servers),
      automatic_installation = true
    }

    mason_lspconfig.setup_handlers {
      function(server_name)
        nvim_lspconfig[server_name].setup {
          capabilities = capabilities,
          on_attach = on_attach,
          settings = servers[server_name],
          filetypes = (servers[server_name] or {}).filetypes,
        }
      end,
    }

  end,
}

