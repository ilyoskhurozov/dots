vim.g.mapleader = " "

function map(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs)
end

-- registers
map({"n", "v"}, "<leader>y", [["+y]])
map({"n", "v"}, "<leader>d", [["_d]])
map("n", "<leader>p", [[+p]])

-- center screen after search
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- split screen
map("n", "<A-h>", ":split ")
map("n", "<A-v>", ":vsplit ")

-- change active slice
map("n", "<A-Left>", "<C-w>h")
map("n", "<A-Down>", "<C-w>j")
map("n", "<A-Up>", "<C-w>k")
map("n", "<A-Right>", "<C-w>l")

-- resize slice
map("n", "<A-S-Up>", ":resize +2<CR>")
map("n", "<A-S-Down>", ":resize -2<CR>")
map("n", "<A-S-Right>", ":vertical resize +2<CR>")
map("n", "<A-S-Left>", ":vertical resize -2<CR>")
