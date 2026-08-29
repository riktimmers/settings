require("general_setup")
vim.api.nvim_create_autocmd("BufEnter", { callback = function() vim.opt.formatoptions = vim.opt.formatoptions - { "c","r","o" } end, })

--vim.opt.rtp:append('/home/rik/workspace/lua/boilerplate_plugin')
