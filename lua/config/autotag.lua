require("nvim-ts-autotag").setup({
    aliases = {
        ["xml"] = "html"
    },
    per_filetype = {
        ["html"] = {
            enable_close = true
        },
        ["typescript"] = {
            enable_close = true
        },
        ["xml"] = {
            enable_close = true
        }
    }
})
