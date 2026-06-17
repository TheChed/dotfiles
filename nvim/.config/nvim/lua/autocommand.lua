---- See `:help vim.highlight.on_yank()`
--- ?Allows the buffer to highlight when yanked
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})




-- USed by treesitter
--
vim.api.nvim_create_autocmd('FileType', {
    callback = function() pcall(vim.treesitter.start) end,
})

vim.api.nvim_create_autocmd('LspAttach',
    {
        group = vim.api.nvim_create_augroup('my.lsp', {}),
        callback = function(ev)
            local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
            if client:supports_method('textDocument/completion') then
                vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
            end
            if not client:supports_method('textDocument/willSaveWaitUntil')
                and client:supports_method('textDocument/formatting') then
                vim.api.nvim_create_autocmd('BufWritePre',
                    {
                        group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
                        buffer = ev.buf,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
                        end,
                    })
            end
        end,
    })
