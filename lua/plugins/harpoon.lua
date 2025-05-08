local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>h" , mark.add_file, { desc = "Add file to harpoon" })
vim.keymap.set("n", "<leader>y", ui.toggle_quick_menu, { desc = "Toggle harpoon menu" })

vim.keymap.set("n", "<C-a>", function() ui.nav_file(1) end, { desc = "Harpoon file 1" })
vim.keymap.set("n", "<C-s>", function() ui.nav_file(2) end, { desc = "Harpoon file 2" })
vim.keymap.set("n", "<C-d>", function() ui.nav_file(3) end, { desc = "Harpoon file 3" })
vim.keymap.set("n", "<C-f>", function() ui.nav_file(4) end, { desc = "Harpoon file 4" })
