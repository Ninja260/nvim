local vscode = require("vscode")

-- VSCode Harpoon Extension API
function HarpoonAdd()
  vscode.call("vscode-harpoon.addEditor")
end

function HarpoonList()
  vscode.call("vscode-harpoon.editorQuickPick")
end

function HarpoonEdit()
  vscode.call("vscode-harpoon.editEditors")
end

function HarpoonGoTo(index)
  return function()
    vscode.call(string.format("vscode-harpoon.gotoEditor%d", index))
  end
end

-- Keymaps
vim.keymap.set({ "n", "x" }, "<leader>H", HarpoonAdd)
vim.keymap.set({ "n", "x" }, "<C-e>", HarpoonList)
vim.keymap.set({ "n", "x" }, "<leader>h", HarpoonEdit)
vim.keymap.set({ "n", "x" }, "<leader>1", HarpoonGoTo(1))
vim.keymap.set({ "n", "x" }, "<leader>2", HarpoonGoTo(2))
vim.keymap.set({ "n", "x" }, "<leader>3", HarpoonGoTo(3))
vim.keymap.set({ "n", "x" }, "<leader>4", HarpoonGoTo(4))
vim.keymap.set({ "n", "x" }, "<leader>5", HarpoonGoTo(5))
vim.keymap.set({ "n", "x" }, "<leader>6", HarpoonGoTo(6))
vim.keymap.set({ "n", "x" }, "<leader>7", HarpoonGoTo(7))
vim.keymap.set({ "n", "x" }, "<leader>8", HarpoonGoTo(8))
vim.keymap.set({ "n", "x" }, "<leader>9", HarpoonGoTo(9))
