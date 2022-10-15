require'fzf-lua'.setup {
    previewers = {
        bat = {
            theme = "gruvbox-dark"
        }
    },
    files = {
        previewer = "bat",
        cmd = "rg --files --hidden --follow -g '!{.git,node_modules}'"
    }
}
