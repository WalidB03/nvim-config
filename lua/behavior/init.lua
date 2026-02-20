require("behavior.autocommands")

-- Identation --
----------------
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.smartindent = true

-- Cursor --
------------
vim.opt.guicursor = {
    "i:block"
}

-- Line number --
------------------
vim.opt.number = true
vim.opt.relativenumber = true

-- Mouse mode --
----------------
vim.opt.mouse = ""

-- Show mode --
---------------
vim.opt.showmode = true

-- Clipboard --
---------------
vim.schedule(function() vim.opt.clipboard = "unnamedplus" end)

-- line wrap --
---------------
vim.opt.wrap = false

-- Save undo history --
-----------------------
vim.opt.undofile = true

-- Case-insensitive searching --
--------------------------------
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- search --
------------
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Signcolumn --
----------------
vim.opt.signcolumn = "no"

-- Decrease update time --
--------------------------
vim.opt.updatetime = 300

-- Decrease mapped sequence wait time --
----------------------------------------
vim.opt.timeoutlen = 300

-- Splits --
------------
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live --
--------------------------------
vim.opt.inccommand = "split"

-- Show which line your cursor is on --
---------------------------------------
vim.opt.cursorline = true

-- Lines to keep above and below the cursor --
----------------------------------------------
vim.opt.scrolloff = 10

-- terminal true colors --
--------------------------
vim.opt.termguicolors = true

-- global status line --
------------------------
vim.opt.laststatus = 3

