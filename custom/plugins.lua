local plugins = {
  -- overrides
  { import = "custom.configs.overrides.mason" },
  { import = "custom.configs.overrides.lspconfig" },
  { import = "custom.configs.overrides.treesitter" },
  -- language servers
  { import = "custom.configs.language-servers.rust" },
  -- debugger
  { import = "custom.configs.debugger.dap" },
  { import = "custom.configs.debugger.dap-ui" },
  { import = "custom.configs.debugger.dap-virtual-text" },
  -- linting and formatting
  { import = "custom.configs.formatters.rust" },
}
return plugins
