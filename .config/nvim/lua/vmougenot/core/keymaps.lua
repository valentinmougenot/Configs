vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- register management
keymap.set("n", "<leader>p", '"_dP', { desc = "Paste without yanking" }) -- paste without yanking
keymap.set("v", "<leader>p", '"_dP', { desc = "Paste without yanking" }) -- paste without yanking
keymap.set("n", "<leader>d", '"_d', { desc = "Delete without yanking" }) -- delete without yanking
keymap.set("v", "<leader>d", '"_d', { desc = "Delete without yanking" }) -- delete without yanking

-- move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" }) -- move line down
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" }) -- move line up

-- scroll
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page" }) -- scroll down half page
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page" }) -- scroll up half page

-- tabulations
keymap.set("n", "<TAB>", ">>", { desc = "Indent line" }) -- indent line
keymap.set("n", "<S-TAB>", "<<", { desc = "Unindent line" }) -- unindent line
keymap.set("v", "<TAB>", ">gv", { desc = "Indent selection" }) -- indent selection
keymap.set("v", "<S-TAB>", "<gv", { desc = "Unindent selection" }) -- unindent selection

-- terminal
keymap.set("n", "<leader>tt", "<cmd>:split<CR><cmd>terminal<CR>10<C-w>_", { desc = "Open terminal" }) -- open terminal
keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal with ESC" }) -- exit terminal with ESC
