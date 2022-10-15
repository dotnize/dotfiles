require("bufferline").setup{
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = vim.fn.fnamemodify(vim.fn.getcwd(), ':t'),
                text_align = "left",
                separator = true
            }
        }
    }
}
