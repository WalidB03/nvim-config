-- open Explorer --
-------------------
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- sourse out --
----------------
vim.keymap.set("n", "<leader><leader>", vim.cmd.so)

-- navigate windows --
----------------------
vim.keymap.set("n", "<leader><Tab>", "<C-w><C-w>")

-- go back --
---------------
vim.keymap.set("n", "<leader>gb", "<C-o>")

-- move selected lines --
----------------
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- visual zen --
----------------
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- preserve past after cut --
-------------------------------
vim.keymap.set("x", "<leader>p", "\"_dP")

-- change word on buffer --
---------------------------
vim.keymap.set("n", "<leader>c", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

