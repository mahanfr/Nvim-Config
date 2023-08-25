local lsp = require('lsp-zero')

lsp.preset({
    manage_nvim_cmp = {
        set_sources = 'recommended'
    }
})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup_servers({'tsserver', 'eslint'})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
cmp.setup({
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
    }
})

vim.diagnostic.config({
    virtual_text = true,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    }
})
