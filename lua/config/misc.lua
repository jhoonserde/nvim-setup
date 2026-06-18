-- set leader key
vim.g.mapleader = " "


-- set clipboard
vim.opt.clipboard = "unnamedplus"


-- set tab to 4 space
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4


-- set line number
vim.o.number = true


-- set line breake
vim.opt.breakindent = true
vim.opt.formatoptions = "t"
vim.opt.linebreak = true


-- incremental search
vim.opt.incsearch = true


-- terminal color
vim.opt.termguicolors = true


-- set scrol off
vim.opt.scrolloff = 10


vim.opt.signcolumn = "yes"
vim.opt.isfname:append "@-@"
vim.opt.updatetime = 50


-- hide cmdline when not used
vim.opt.cmdheight = 0


-- set colorscheme
vim.cmd.colorscheme("vim")
vim.api.nvim_set_hl(0, "Normal", { bg = "black" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#0000B3", fg = "white" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#C0C0C0", fg = "white" })


-- set padding background to be same with background nvim
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal.bg then return end
    io.write(string.format("\027]11;#%06x\027\\", normal.bg))
  end,
})

vim.api.nvim_create_autocmd("UILeave", {
  callback = function() io.write("\027]111\027\\") end,
})

