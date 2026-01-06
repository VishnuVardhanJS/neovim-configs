-- to enable oil 
vim.keymap.set("n", "<leader>e", ":Oil<CR>", {
    desc = "Open Oil file explorer"
})

vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {
    desc = "Find files"
})

vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {
    desc = "Live grep"
})

vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {
    desc = "Open buffers"
})

vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {
    desc = "Help tags"
})

vim.keymap.set("n", "<leader>fo", require('telescope.builtin').current_buffer_fuzzy_find, {
    desc = "Search in current buffer"
})


--pasting without copying to register
vim.keymap.set("x", "<leader>p", [["_dP]], {desc = "Safe Paste"})


--deleting without copying to register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

--add format selected for conform
vim.keymap.set("v", "<leader>fs", function()
    require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
    })
end, { desc = "Format file or range (in visual mode)" })

vim.keymap.set("n", "<leader>cs", ":nohlsearch<CR>", {
    desc = "Clear Current Search"
})


