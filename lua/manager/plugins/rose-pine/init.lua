return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("manager.plugins.rose-pine.config")
    end
}
