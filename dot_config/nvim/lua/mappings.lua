require("nvchad.mappings")

local map = vim.keymap.set

map("n", "<C-M-x>", ":RustLsp expandMacro <CR>", { desc = "expand rust macro" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- replace telescope git status with Neogit
local neogit = require("neogit")
map("n", "<leader>gs", ":Neogit <CR>", { desc = "Open Neogit interface" })
map("n", "<leader>gp", ":Neogit push <CR>", { desc = "Git push" })
map("n", "<leader>gu", neogit.action("pull", "from_pushremote"), { desc = "Git pull" })
map("n", "<leader>gt", ":Neogit tag <CR>", { desc = "Git tag" })
map("n", "<leader>gc", neogit.action("commit", "commit"), { desc = "Commit changes" })
map("n", "<leader>cm", neogit.action("log", "log_current"), { desc = "Browse recent commits" })
