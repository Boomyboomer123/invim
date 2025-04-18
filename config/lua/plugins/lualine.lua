return {
  "nvim-lualine/lualine.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons"},

  config = function()
    local lazy_status = require("lazy.status")

    require("lualine").setup {
      options = {
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
      }
    }
  end
}
