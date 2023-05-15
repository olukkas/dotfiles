function ColorMyPencils(color)
    require('rose-pine').setup {
        disable_background = true,
        variant = 'moon'
    }
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- ColorMyPencils() call to configure rose-pine theme

require("catppuccin").setup {
    flavour = "mocha",     -- latte, frappe, macchiato, mocha
    transparent_background = true,
    term_colors = true,
}

vim.cmd.colorscheme "catppuccin"
