-- settings
local options = {
  termguicolors = true,
  backup = false,
  swapfile = false,
  hlsearch = true,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  scrolloff = 8,
  sidescrolloff = 8,
  smartindent = true,
  ignorecase = true,
  smartcase = true,
  timeoutlen = 1000,
  shiftround = true,
  splitbelow = true,
  splitright = true,
  number = true,
  clipboard = "unnamedplus",
  relativenumber = true,
  cursorline = true,
  cursorcolumn = true,
  mouse = "a",
  syntax = "on",
  showmode = false
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

-- save last position
vim.cmd [[autocmd BufReadPost * if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif]]
