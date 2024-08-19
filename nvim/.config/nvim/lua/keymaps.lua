-- space bar leader key
vim.g.mapleader = " "

-- save, quit
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>c", ":q<cr>")

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")


-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- yank line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])


