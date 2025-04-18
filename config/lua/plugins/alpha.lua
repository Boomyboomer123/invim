return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local macchiato = require("catppuccin.palettes").get_palette "macchiato"
    
    dashboard.opts.layout = {
      { type = "padding", val = 6 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer
    }

    dashboard.section.footer.opts.hl = "Overlay0"
    vim.api.nvim_set_hl(0, "Overlay0", { fg = macchiato.overlay0 })

    dashboard.section.header.opts.hl = "Green"
    vim.api.nvim_set_hl(0, "Green", { fg = macchiato.green })

    local text = {
      'Go again... You nerd...',
      'Did you know that 99% of programers alt + q before they win big?',
      "Hope you aren't on Windows...",
      'Do you use Arch btw?',
      'Someone should tell "vibe coders" about "vim coding"',
      "Don't leave insert mode...",
      'Did you know this text is random?',
      "Did you know most programs don't like spagetti? Think about that next time!",
      'Have you ever Twisted Space? I did...'
    }

    math.randomseed(os.time())

    dashboard.section.footer.val = (text[math.random(#text)])

    dashboard.section.header.val = {
      "██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗",
      "██║████╗  ██║██║   ██║██║████╗ ████║",
      "██║██╔██╗ ██║██║   ██║██║██╔████╔██║",
      "██║██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      "██║██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
      "╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "  New file", vim.cmd.ene),
      dashboard.button("e", "  Open file explorer", vim.cmd.NvimTreeToggle),
      dashboard.button("f", "󰱼  Find files", "<cmd>Telescope find_files<Enter>"),
      dashboard.button("r", "󰈢  Recent files", "<cmd>Telescope oldfiles<Enter>"),
      dashboard.button("c", "  Configuration files", "<cmd>cd ~/.config/nvim<Enter><cmd>NvimTreeToggle<Enter>"),
      dashboard.button("l", "󰒲  Open Lazy Nvim", vim.cmd.Lazy),
      dashboard.button("q", "  Quit NVIM", vim.cmd.qa),
    }

    alpha.setup(dashboard.opts)
    
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
