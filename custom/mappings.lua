local M = {}

M.general = {
  n = {
    -- rust hover actions
    ["<leader>k"] = {
      function()
        vim.cmd.RustLsp { "hover", "actions" }
      end,
      "Open hover actions",
    },
  },
}

M.dap = {
  n = {
    ["<leader>dd"] = {
      function()
        vim.cmd.RustLsp "debuggables"
      end,
      "Start debugging",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle debugging interface",
    },
    ["<leader>dc"] = {
      function()
        require("dap").terminate()
        require("dapui").close()
      end,
      "Terminate debugging",
    },
    ["<F5>"] = {
      function()
        require("dapui").open()
        vim.cmd.RustLsp "debuggables"
      end,
      "Start debugging",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
      "Step into",
    },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "Step out",
    },
  },
}

return M
