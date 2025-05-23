local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

lspconfig.omnisharp.setup({
    --cmd = { "dotnet", "/Users/w1dget/.local/bin/omnisharp/OmniSharp.dll" },
    cmd = {
        vim.fn.stdpath("data") .. "/mason/packages/omnisharp/omnisharp",
        "--languageserver",
        "--hostPID", tostring(vim.fn.getpid()),
    },
    root_dir = require("lspconfig.util").root_pattern("*.sln", "*.csproj"),
--    root_dir = function(fname)
--        return require("lspconfig.util").root_pattern("SimRacing.sln")(fname) or vim.fn.getcwd()
--    end,
--    enable_roslyn_analyzers = true, -- Включает анализаторы кода
--    organize_imports_on_format = true, -- Авто-упорядочивание using
--    enable_import_completion = true,
})
lspconfig.mason.setup({
    ensure_installed = { "omnisharp" }, -- Убедитесь, что omnisharp установлен
    automatic_installation = true, -- Автоматическая установка при запуске
})

handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = false,  -- Показывать ошибки прямо в коде
      signs = false,         -- Показывать иконки ошибок на строках
      underline = false,     -- Подчеркивать ошибки
      update_in_insert = false,  -- Обновлять ошибки во время редактирования
    }),
},



-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'lD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'ld', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'lk', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'i', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    
    -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wl', function()
    --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, opts)
    
    -- TODO: Используется повторно, необходимо вырезать в след.версии
    -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>r', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
