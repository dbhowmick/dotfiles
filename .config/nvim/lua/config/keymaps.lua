-- ========================================================================================
-- Title: Neovim keymaps
-- About: Set some quality-of-life keymaps
-- ========================================================================================




-- Better indentation in visual mode
vim.keymap.set("v", "<", "<gv", {desc = "Indent left and reselect"})
vim.keymap.set("v", ">", ">gv", {desc = "Indent right and reselect"})

-- Buffer Navigations
vim.keymap.set("n", "<leader>bp", "<Cmd>bprevious<CR>", {desc = "Switch to the previous buffer"})
vim.keymap.set("n", "<leader>bn", "<Cmd>bnext<CR>", {desc = "Switch to the next buffer"})

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", {desc = "Move to left window"})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc = "Move to bottom window"})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc = "Move to top window"})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc = "Move to right window"})

-- Spliting and Resizing
vim.keymap.set("n", "<leader>sv", "<Cmd>vsplit<CR>", {desc = "Split vertically"})
vim.keymap.set("n", "<leader>sh", "<Cmd>hsplit<CR>", {desc = "Split horizontally"})
vim.keymap.set("n", "<C-Up>", "<Cmd>resize +2<CR>", {desc = "Increase Window height"})
vim.keymap.set("n", "<C-Down>", "<Cmd>resize -2<CR>", {desc = "Decrease Window height"})
vim.keymap.set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", {desc = "Decrease Window width"})
vim.keymap.set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", {desc = "Increase Window width"})

-- Quick config editing
vim.keymap.set("n", "<leader>rc", "<Cmd>e ~/.config/nvim/init.lua<CR>", {desc = "Edit Config"})
