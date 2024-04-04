---@class mappings
local M = {}

M.dap = {
  n = {
    ["<leader>@@"] = {
      "<cmd> DapToggleBreakPoint <CR>",
      "Toggle breakpoint"
    },
    ["<leader>@@s"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

return M
