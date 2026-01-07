-- ======================================================================
-- Title: Neovim option
-- About: Basic settings native to neovim
-- ======================================================================

-- Basic Settings
vim.opt.number = true -- Line numbers
vim.opt.relativenumber = true -- Relative Line numbers
vim.opt.cursorline = true -- Highlight current line
vim.opt.scrolloff = 10 -- Keep 10 lines above and below the cursor
vim.opt.sidescrolloff = 0 -- Keep 8 columns left/right of cursor
vim.opt.wrap = false -- Do not wrap line
vim.opt.cmdheight = 1 -- Command line height
vim.opt.spelllang = {'en'} -- Set language for spell check

-- Tabbing / Indentation
vim.opt.tabstop = 2 -- Tab width
vim.opt.shiftwidth = 2 -- Indent width
vim.opt.softtabstop = 2 -- Soft tab stop
vim.opt.expandtab = true -- Use spaces instead of tab
vim.opt.smartindent = true -- Smart auto-indent
vim.opt.autoindent = true -- Copy indent from current line

-- Searching
vim.opt.grepprg = "rg --vimgrep" -- use ripgrep
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.ignorecase = true -- Do a case in-sensitive search
vim.opt.smartcase = true  -- Case sensitive if upper-case in search
vim.opt.incsearch = true -- Show matches as you type


-- Visual Settings
vim.opt.termguicolors = true -- Enable 24 bit color
vim.opt.signcolumn = "yes" -- Always show sign column
vim.opt.colorcolumn = "120" -- Show column at the 100th position
vim.opt.showmatch = true -- highlight matching brackets
vim.opt.matchtime = 2 -- How long to show matching brackets
vim.opt.completeopt = "menuone,noinsert,noselect" -- Completion Options


-- File Handling
vim.opt.backup = false -- Do not create backup file
vim.opt.writebackup = false -- Do not write any backup before overwritting
vim.opt.swapfile = false -- Do not write swap files
vim.opt.undofile = true -- Persistent undo
vim.opt.updatetime = 300 -- Time in ms to trigger cursorhold
vim.opt.timeoutlen = 500 -- Time in ms to wait for mapped sequence
vim.opt.ttimeoutlen = 0 -- No wait for keycode sequences
vim.opt.autoread = true -- Autoload file if changed from outside
vim.opt.diffopt:append("vertical") -- vertical diff split
vim.opt.diffopt:append("algorithm:patience") -- advanced diff algorithm
vim.opt.diffopt:append("linematch:60") -- Better diff highlighting

-- Set updo directory and ensure that it existes
local undodir = "~/.local/share/nvim/undodir"
vim.opt.undodir = vim.fn.expand(undodir)
local undopath = vim.fn.expand(undodir)
if vim.fn.isdirectory(undopath) == 0 then
	vim.fn.mkdir(undopath, "p")
end

-- Behavior settings
vim.opt.path:append("**") -- Search into subfolders using 'gf'
vim.opt.selection = "inclusive" -- Use includive selection
vim.opt.mouse = "a" -- Enable mouse operations
vim.opt.clipboard:append("unnamedplus") -- Use the system clipboard
vim.opt.modifiable = true -- Allow editting buffers
vim.opt.encoding = "UTF-8" -- Use UTF-8 encoding
vim.opt.wildmenu = true -- Enable command-line completion menu
vim.opt.wildmode = "longest:full,full" -- completion mode for command-line
vim.opt.wildignorecase = true -- Case insensitive tab completion in commands


-- Folding settings
-- vim.opt.foldmethod = "expr" -- Use expression for folding
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding

-- Split behavior
vim.opt.splitbelow = true -- Horizontal splits open below
vim.opt.splitright = true -- Vertical splits open below



