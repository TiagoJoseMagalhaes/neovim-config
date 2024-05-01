vim.g.mapleader = " "

-- file view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- save file
vim.keymap.set("n", "<c-s>", vim.cmd.write)
vim.keymap.set("i", "<c-s>", vim.cmd.write)

-- window management
vim.api.nvim_set_keymap("n", "<leader>cc", ":q<CR>", {
    noremap = true
})

-- moving code up and down
vim.api.nvim_set_keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", {
    noremap = true
})
vim.api.nvim_set_keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", {
    noremap = true
})
vim.keymap.set("n", "<A-Up>", "<Up>ddp<Up>")
vim.keymap.set("n", "<A-Down>", "ddp")

-- indent via Tab
vim.api.nvim_set_keymap("n", "<Tab>", ">>_", {
    noremap = true
})
vim.api.nvim_set_keymap("n", "<S-Tab>", "<<_", {
    noremap = true
})
vim.api.nvim_set_keymap("v", "<Tab>", ">>_", {
    noremap = true
})
vim.api.nvim_set_keymap("v", "<S-Tab>", "<<_", {
    noremap = true
})

-- paste over token
vim.keymap.set("x", "<leader>p", "\"_dP")

-- format file
vim.keymap.set("n", "<leader>ff", function()
    vim.lsp.buf.format()
end)

-- refactoring
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename)

-- source file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- clipboard
vim.api.nvim_set_keymap("n", "<C-v>", "\"+p", {
    noremap = true
})
vim.api.nvim_set_keymap("n", "<C-c>", "\"+y", {
    noremap = true
})
vim.api.nvim_set_keymap("n", "<C-x>", "\"+d", {
    noremap = true
})
vim.api.nvim_set_keymap("i", "<C-v>", "<Esc>\"+pa", {
    noremap = true
})

-- todo & note insertion
vim.keymap.set("n", "<A-t>", "a//TODO(Tiago):")
vim.keymap.set("i", "<A-t>", "//TODO(Tiago):")
vim.keymap.set("n", "<A-n>", "a//NOTE(Tiago):")
vim.keymap.set("i", "<A-n>", "//NOTE(Tiago):")

-- splits
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>hs", vim.cmd.split)

-- home button handling
vim.keymap.set("n", "<Home>", "^")
vim.keymap.set("i", "<Home>", "<Esc>^i")
