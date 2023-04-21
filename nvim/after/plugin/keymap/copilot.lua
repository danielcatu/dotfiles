local inoremap = require("sjdonado.keymap").inoremap

inoremap("<C-t><CR>", function()
  require("copilot.suggestion").accept()
end)
inoremap("<C-t>w", function()
  require("copilot.suggestion").accept_word()
end)
inoremap("<C-t>l", function()
  require("copilot.suggestion").accept_line()
end)
inoremap("<C-t>n", function()
  require("copilot.suggestion").next()
end)
inoremap("<C-t>p", function()
  require("copilot.suggestion").prev()
end)
inoremap("<C-t>x", function()
  require("copilot.suggestion").dismiss()
end)
inoremap("<C-t>t", function()
  require("copilot.suggestion").toggle_auto_trigger()
end)
