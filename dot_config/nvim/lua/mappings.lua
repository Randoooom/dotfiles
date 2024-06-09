require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<C-M-x>", ":RustLsp expandMacro <CR>", { desc = "expand rust macro" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
