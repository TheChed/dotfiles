-- return{
--     "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
--
--     config = function()
--         local config = require("nvim-treesitter.configs")
--             config.setup({
--             ensure_installed = { "cpp","c", "lua", "vim", "vimdoc", "regex",  "javascript", "html" },
--             highlight = { enable = true },
--             indent = { enable = true },
--         })
-- end
-- }
return {
"lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "mupdf"
  end
  }
