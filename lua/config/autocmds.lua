--lspKeybinds
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local bufnr = args.buf

    -- Helper to make mapping easier
    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
    end

    -- === 1. NAVIGATION ===
    map('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    map('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
    map('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation') -- Useful for Interfaces
    map('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')

    -- === 2. INFORMATION ===
    map('K', vim.lsp.buf.hover, 'Hover Documentation')
    map('<leader>k', vim.lsp.buf.signature_help, 'Signature Documentation') -- Params of method

    -- === 3. REFACTORING ===
    map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

    -- === 4. DIAGNOSTICS (Errors) ===
    map('[d', vim.diagnostic.goto_prev, 'Previous Diagnostic')
    map(']d', vim.diagnostic.goto_next, 'Next Diagnostic')
    map('<leader>se', vim.diagnostic.open_float, 'Show Error Message') -- Show error in float

    -- === 5. JAVA SPECIFIC (Only maps if the file is Java) ===
    if client.name == 'jdtls' then
       map('<leader>co', function() require('jdtls').organize_imports() end, 'Organize Imports')
       map('<leader>tc', function() require('jdtls').test_class() end, 'Test Class')
       map('<leader>tm', function() require('jdtls').test_nearest_method() end, 'Test Method')
    end
  end,
})
