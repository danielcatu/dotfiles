local dap = require("sjdonado.dap").dap
local dapui = require("sjdonado.dap").dapui

local nnoremap = require("sjdonado.keymap").nnoremap

nnoremap("<leader>dt", function()
  exit_zenmode_if_needed()
  dapui.toggle({})
end)

nnoremap("<leader>dx", function()
  dap.clear_breakpoints()
  dapui.close({})
end)

nnoremap("<F8>", function()
  dap.continue()
end)
nnoremap("<F10>", function()
  dap.step_over()
end)
nnoremap("<F7>", function()
  dap.step_into()
end)
nnoremap("<F9>", function()
  dap.step_out()
end)

nnoremap("<leader>db", function()
  dap.toggle_breakpoint()
end)
nnoremap("<leader>dB", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
nnoremap("<leader>dC", function()
  dap.run_to_cursor()
end)
