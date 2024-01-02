require 'nvim-treesitter.configs'.setup {
    -- programming languages
    ensure_installed = {
        "vim",
        "vimdoc",
        "bash",
        "c",
        "cpp",
        "json",
        "lua",
        "python",
        "javascript",
        "sql",
        "ssh_config"
    },

    highlight = { enable = true },
    indent = { enable = true },

    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
