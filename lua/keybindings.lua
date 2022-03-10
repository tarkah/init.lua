local map = require("utils").map

vim.g.mapleader = " "

--- moving text
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

--- LSP
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")

--- telescope
map("n", "<C-p>", "<cmd>Telescope find_files<cr>")

--- tabs
map("n", "<Tab>", "<cmd>BufferNext<CR>")
map("n", "<S-Tab>", "<cmd>BufferPrevious<CR>")

-- whichkey
local wk = require("which-key")
wk.register({
  l = {
      name = "lsp",
      r = { "<cmd>lua require'telescope.builtin'.lsp_references{}<CR>", "References" },
      d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
      R = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
      s = { "<cmd>lua require'telescope.builtin'.lsp_document_symbols{}<CR>", "Go to Symbol" },
      p = { "<cmd> lua require'telescope.builtin'.diagnostics{}<CR>", "Diagnostics" },
  },
  f = {
      name = "telescope",
      f = { "<cmd>Telescope find_files<cr>", "Find files"},
      b = { "<cmd>Telescope buffers<cr>", "Buffers"},
      g = { "<cmd>Telescope live_grep<cr>", "Grep"}
  },
  e = { "<cmd>NvimTreeToggle<CR>", "Toggle Explorer" },
  d = { "<cmd>bd<CR>", "Close Buffer" },
  g = {
      name = "git",
      s = { "<cmd>lua require'telescope.builtin'.git_status{}<CR>", "status" },
      c = { "<cmd>lua require'telescope.builtin'.git_commits{}<CR>", "commits" },
      d = { "<cmd>Gvdiffsplit<cr>", "diffsplit" },
  },
  w = {
      name = "window",
      v = { "<cmd>vsplit<cr>", "vertical split" },
      h = { "<cmd>split<cr>", "horizontal split" },
      c = { "<cmd>close<cr>", "close" },
  },
  s = { "<cmd>w<cr>", "save" },
}, { prefix = "<leader>" })
