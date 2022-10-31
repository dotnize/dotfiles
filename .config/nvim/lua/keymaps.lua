local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


--   "n" = normal_mode
--   "i" = insert_mode
--   "v" = visual_mode
--   "x" = visual_block_mode
--   "t" = term_mode
--   "c" = command_mode

-- quick normal mode with jk
keymap("i", "jk", "<ESC>", opts)

-- better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- visual indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move selected text up and down
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- clear search highlights
keymap("n", "<leader>/", "<cmd>nohlsearch<Bar>:echo<CR>", opts)
keymap("n", "<ESC>", "<cmd>nohlsearch<Bar>:echo<CR>", opts)

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- fzf-lua
keymap("n", "<leader>ff", ":FzfLua files<CR>", opts)
keymap("n", "<leader>fs", ":FzfLua live_grep<CR>", opts)
keymap("n", "<leader>fb", ":FzfLua buffers<CR>", opts)

-- close current buffer
keymap("n", "<leader>qq", ":bw<CR>", opts)

-- additional keymappings in plugins/toggleterm.lua for terminal keymaps
