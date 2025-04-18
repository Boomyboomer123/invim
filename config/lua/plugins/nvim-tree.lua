return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-tree").setup({
    })

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      api.config.mappings.default_on_attach(bufnr)

      vim.keymap.del("n", "<C-e>", { buffer = bufnr})
      vim.keymap.set("n", "r", api.tree.reload, opts("Refresh"))
      vim.keymap.set("n", "n", api.fs.rename, opts("Rename"))
      vim.keymap.set("n", "c", api.fs.create, opts("Create file or directory"))
    end

    require("nvim-tree").setup({
    ---
    on_attach = my_on_attach,
    ---
    actions = {
      open_file = {
        quit_on_open = true,
      },
    }, 
  })
  end
}
