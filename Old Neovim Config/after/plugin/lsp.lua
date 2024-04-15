local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'clangd',
	'jdtls',
})
lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  })
-- See :help lsp-zero-preferences
--lsp.set_preferences({
  --set_lsp_keymaps = true, -- set to false if you want to configure your own keybindings
  --manage_nvim_cmp = true, -- set to false if you want to configure nvim-cmp on your own
--})

-- (Optional) Configure lua language server for neovim
 lsp.nvim_workspace()

lsp.setup()
