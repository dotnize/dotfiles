require("presence"):setup({
    neovim_image_text = "Neovim",
    client_id = "1030901286499000460",
    main_image = "file",
    --blacklist = {"bash;#toggleterm#%d", "NvimTree_%d", "sh"}, -- not working?
    buttons = function(buffer, repo_url)
        local button = { label = "GitHub", url = "https://github.com/nizewn" }

        if repo_url ~= nil and repo_url ~= '' then
            -- from https://github.com/andweeb/presence.nvim/blob/main/lua/presence/init.lua
            -- Check if repo url uses short ssh syntax
            local domain, project = repo_url:match("^git@(.+):(.+)$")
            if domain and project then
                repo_url = string.format("https://%s/%s", domain, project)
            end

            -- Check if repo url uses a valid protocol
            local protocols = {
                "ftp",
                "git",
                "http",
                "https",
                "ssh",
            }
            local protocol, relative = repo_url:match("^(.+)://(.+)$")
            if not vim.tbl_contains(protocols, protocol) or not relative then
                return { button }
            end
    
            -- Check if repo url has the user specified
            local user, path = relative:match("^(.+)@(.+)$")
            if user and path then
                repo_url = string.format("https://%s", path)
            else
                repo_url = string.format("https://%s", relative)
            end

            button.label = "View Repository"
            button.url = repo_url
        end

        return { button }
    end
})
