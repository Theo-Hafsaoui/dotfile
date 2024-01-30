local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  lsp.buffer_autoformat() -- for formating with save
  vim.keymap.set({'n', 'x'}, 'gq', function() -- for formating wih gq
    vim.lsp.buf.format({async = false, timeout_ms = 10000})
  end)
end)

lsp.set_sign_icons({ --For the icons on the left 
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

require('mason').setup({
  ui = {
    border = 'rounded'
  }
})

lsp.setup()
