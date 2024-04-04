require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- defugger
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "DeBug mode" })
map("n", "<leader>dpr", 
  function()
    require("dap-python").test_method()
  end, { desc = "Debug Python Run" })

-- defaults
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
