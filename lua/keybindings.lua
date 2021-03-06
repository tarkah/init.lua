local map = require("utils").map

vim.g.mapleader = " "

--- window movement
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

--- LSP
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")

--- telescope
map("n", "<C-p>", "<cmd>Telescope find_files<cr>")
map("n", ";", "<cmd>Telescope buffers<cr>")

--- tabs
map("n", "<Tab>", "<cmd>BufferNext<CR>")
map("n", "<S-Tab>", "<cmd>BufferPrevious<CR>")

-- move lines up and down in visual mode
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

-- indentation control in visual mode
map('v', '>', '>gv', {
    noremap = true,
    silent = true
})
map('v', '<', '<gv', {
    noremap = true,
    silent = true
})

-- when jumping to bottom, center the page
map('n', 'G', 'Gzz', {
    noremap = true,
    silent = true
})

-- whichkey
local wk = require("which-key")
wk.register({
   h = {"<cmd>nohlsearch<cr>", "clear search"},
   e = {"<cmd>NvimTreeToggle<CR>", "explorer"},
   w = { "<cmd>w!<CR>", "save" },
   l = {
        name = "lsp",
        f = {"<cmd>lua vim.lsp.buf.formatting()<cr>", "format"},
        r = {"<cmd>lua require'telescope.builtin'.lsp_references{}<CR>", "references"},
        d = {"<cmd>lua vim.lsp.buf.definition()<CR>", "definition"},
        R = {"<cmd>lua vim.lsp.buf.rename()<CR>", "rename"},
        s = {"<cmd>lua require'telescope.builtin'.lsp_document_symbols{}<CR>", "go to symbol"},
        e = {"<cmd>lua require'telescope.builtin'.diagnostics{}<CR>", "errors"},
        n = {"<cmd>lua vim.diagnostic.goto_next()<CR>", "next problem"},
        p = {"<cmd>lua vim.diagnostic.goto_prev()<CR>", "prev problem"},
        a = {"<cmd>lua vim.lsp.buf.code_action()<CR>", "code action"},
        u = {"<cmd>lua require'rust-tools.parent_module'.parent_module()<CR>", "up one module"}
    },
    c = {
        name = "+comment",
        c = {"<Plug>kommentary_line_default", "line"},
        m = {"<Plug>kommentary_motion_default", "motion"},
        v = {
            "<Plug>kommentary_visual_default",
            "section",
            mode = "v"
        }
    },
    b = {
        name = "+buffers",
        b = {"<cmd>Telescope buffers<cr>", "all buffers"},
        d = {"<cmd>bd<CR>", "close Buffer"}
    },
    f = {
        name = "+file",
        f = {"<cmd>Telescope find_files<cr>", "find files"},
        j = {"<cmd>Telescope grep_string<cr>", "find word"},
        g = {"<cmd>Telescope live_grep<cr>", "grep"},
        s = {"<cmd>Telescope current_buffer_fuzzy_find<cr>", "search in file"},
    },
    g = {
        name = "git",
        s = {"<cmd>lua require'telescope.builtin'.git_status{}<CR>", "status"},
        c = {"<cmd>lua require'telescope.builtin'.git_commits{}<CR>", "commits"},
        d = {"<cmd>DiffviewOpen -uno<cr>", "diffsplit"}
    },
    p = {
        name = "packer",
        s = {"<cmd>PackerSync<cr>", "sync"},
        i = {"<cmd>PackerInstall<cr>", "install"},
        c = {"<cmd>PackerCompile<cr>", "compile"},
        l = {"<cmd>PackerClean<cr>", "clean"}
    },
    s = {
        name = "session",
        l = {"<cmd>SessionManager load_last_session<cr>", "last"},
        s = {"<cmd>SessionManager load_session<cr>", "select"},
    },
    v = {
        name = "vim",
        r = {":so $MYVIMRC<cr>", "reload init.lua"},
        e = {":e $MYVIMRC<cr>", "edit init.lua"},
    }
}, {
    prefix = "<leader>"
})
