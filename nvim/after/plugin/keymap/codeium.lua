local inoremap = require("sjdonado.keymap").inoremap

local opts = { expr = true }

inoremap("<C-g>g", function()
  return vim.fn["codeium#Accept"]()
end, opts)

inoremap("<C-g>n", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, opts)

inoremap("<C-g>p", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, opts)

inoremap("<C-g>x", function()
  return vim.fn["codeium#Clear"]()
end, opts)
