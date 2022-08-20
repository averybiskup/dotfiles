local nnoremap = require("config.keymaps").nnoremap

nnoremap("<leader>ee", "<cmd>Ex<CR>")
nnoremap("<leader>f", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>p", "<cmd>:lua vim.lsp.buf.formatting()<CR>")
