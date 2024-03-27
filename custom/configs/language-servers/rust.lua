return {
  "mrcjkb/rustaceanvim",
  version = "^4",
  ft = { "rust" },
  dependencies = "neovim/nvim-lspconfig",
  config = function()
    local on_attach = require("plugins.configs.lspconfig").on_attach
    local capabilities = require("plugins.configs.lspconfig").capabilities

    vim.g.rustaceanvim = {
      server = {
        on_attach = on_attach,
        capabilities = capabilities,
      },
      tools = {
        hover_actions = {
          auto_focus = true,
        },
      },
    }
  end,
}
