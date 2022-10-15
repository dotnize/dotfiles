local status_ok, _ = pcall(vim.cmd, "colorscheme gruvbox")

if not status_ok then
    return
end
