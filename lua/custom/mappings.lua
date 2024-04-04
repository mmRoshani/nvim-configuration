---@class mappings
local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakPoint <CR>" },
  }
}

M.dap_python = {
  plugin = true,
  ["<leader>dpr"] = {
    function ()
      require('dap-python').test_method()
    end
  }
}

return M
