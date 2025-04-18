return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup {
      pickers = {
        find_files = {
          hidden = true
        }
      }
    }
    local actions = require("telescope.actions")

    telescope.load_extension("fzf")
  end
}
