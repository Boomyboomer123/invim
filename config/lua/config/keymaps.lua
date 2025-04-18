local keymap = vim.keymap
local cmd = vim.cmd
local any = {"n", "i", "v", "c"}

keymap.set("i", "<C-BS>", "<Esc>caw", {desc = "Delete a line in insert mode"})
keymap.set("i", "<S-BS>", "<Esc>ddA", {desc = "Delete a word in insert mode"})

keymap.set("i", "<C-y>", "<Esc>VyA", {desc = "Copy a line in insert mode"})
keymap.set("i", "<M-y>", "<Esc>VypA", {desc = "Copy and paste a line in insert mode"})

keymap.set(any, "<C-w>", cmd.w, {desc = "Write file in insert mode"})
keymap.set(any, "<C-q>", cmd.q, {desc = "Quit in insert mode"})
keymap.set(any, "<M-q>", cmd.qa, {desc = "Quit all in insert mode"})

keymap.set(any, "<M-e>", cmd.NvimTreeToggle, {desc = "Open Nvim Tree"})
keymap.set(any, "<C-e>", cmd.NvimTreeFindFileToggle, {desc = "Open Nvim Tree in the location of the current file"})

keymap.set(any, "<M-l>", cmd.Lazy, {desc = "Open Lazy Nvim ui"})

keymap.set(any, "<C-a>", cmd.Alpha, {desc = "Open Alpha"})

keymap.set(any, "<C-f>", "<Esc><cmd>Telescope find_files<Enter>", {desc = "Open Telescope"})
keymap.set(any, "<C-r>", "<Esc><cmd>Telescope oldfiles<Enter>", {desc = "Open Telescope recent files"})

keymap.set("i", "<C-v>", "<Esc>v", {desc = "Enter visual mode from insert mode"})
keymap.set("i", "<C-l>", "<Esc>V", {desc = "Enter visual line mode from insert mode"})

keymap.set(any, "<C-;>", "<Esc>:", {desc = "Execute a command"})

keymap.set("i", "<C-o>", "<Esc>o", {desc = "Add a new line under the cursor in insert mode"})

keymap.set("i", "<C-u>", "<Esc>ui", {desc = "Undo in insert mode"})
keymap.set("i", "<M-u>", "<Esc><C-r>i", {desc = "Redo in insert mode"})

keymap.set("i", "<C-Right>", "<Esc>A", {desc = "Go to the end of the line in insert mode"})
keymap.set("i", "<C-Left>", "<Esc>^i", {desc = "Go to the beginning of the line in insert mode"})

keymap.set("i", "<C-p>", "<Esc>pi", {desc = "Put in insert mode"})

keymap.set("v", "y", "yi", {desc = "Yank and enter insert mode"})
keymap.set("v", "d", "di", {desc = "Delete and enter insert mode"})

keymap.set(any, "<Esc>", "<Esc>i", {desc = "Enter insert mode"})
keymap.set(any, "<S-Esc>", "<Esc>", {desc = "Enter normal mode"})

keymap.set("c", "<Enter>", "<Enter>i", {desc = "Run a command and enter insert mode"})
keymap.set("c", "<S-Enter>", "<Enter>", {desc = "Run a command and enter normal mode"})

keymap.set("i", "<C-=>", "<Esc><C-a>i", {desc = "Increase a number"})
keymap.set("i", "<C-->", "<Esc><C-x>i", {desc = "Decrease a number"})

keymap.set(any, "<C-t>n", cmd.tabnew, {desc = "Open a new tab"})
keymap.set(any, "<C-t>d", "<cmd>tabnew %<Enter>", {desc = "Duplicate the current tab"})

keymap.set(any, "<M-Right>", cmd.tabn, {desc = "Go to the next tab"})
keymap.set(any, "<M-Left>", cmd.tabp, {desc = "Go to the previous tab"})
