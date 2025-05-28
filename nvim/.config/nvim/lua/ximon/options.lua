vim.o.mouse = "a" -- Enable mouse support in all modes
vim.o.wrap = false -- Disable line wrapping
vim.o.number = true -- Show absolute line numbers
vim.o.relativenumber = true -- Show relative line numbers
vim.o.scrolloff = 10 -- Keep 10 lines visible above/below cursor

vim.o.undofile = true -- Enable persistent undo
vim.o.showmode = false -- Don't show mode (e.g., -- INSERT --)
vim.o.breakindent = true -- Enable break indent
vim.o.ignorecase = true -- Ignore case in search patterns
vim.o.smartcase = true -- Override ignorecase if search pattern contains uppercase

vim.o.cursorline = true -- Highlight the current line
vim.o.signcolumn = "yes" -- Always show the sign column
vim.o.updatetime = 250 -- Faster completion (default is 4000ms)
vim.o.timeoutlen = 300 -- Time to wait for a mapped sequence (in ms)
vim.o.confirm = true -- Confirm to save changes before exiting modified buffer

vim.o.splitbelow = true -- Horizontal splits open below
vim.o.splitright = true -- Vertical splits open to the right
vim.o.tabstop = 4 -- Number of spaces that a tab in the file counts for
vim.o.shiftwidth = 4 -- Number of spaces to use for each step of indent
vim.o.inccommand = "split" -- Show incremental command results in a split

vim.schedule(function()
    vim.o.clipboard = "unnamedplus" -- Use system clipboard for all operations
end)
