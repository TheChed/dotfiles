vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/lukas-reineke/indent-blankline.nvim',
})




require("plugins/lualine")   --status line
--require("plugins/noice")     --UI messages replacement
require("plugins/gitsigns")  --Enable git symbols
require("plugins/snacks")    -- Multiple usefulplugins
require("plugins/indent")
require("plugins/telescope") -- fuzzy finder files / buffers
require("plugins/mini")
require("plugins/catppucin") -- Colorscheme
require("plugins/neotree")   -- File browser
require("plugins/whichkey")  -- recap of key mappings

-- LSP
vim.lsp.enable({ 'clangd', 'lua_ls' })
--
-- Personnal settings
require("vim-options-perso")
require("keymaps-perso")
require("autocommand")


-- keep only TreeSitter ssyntax highligh
vim.cmd('syntax off')


--For linting in LSP

vim.opt.complete:append("o")
vim.opt.completeopt = { "menuone", "noselect" }

vim.o.pumheight = 5
vim.o.pumborder = "rounded"
-- Enable colorscheme
vim.cmd.colorscheme("catppuccin")
