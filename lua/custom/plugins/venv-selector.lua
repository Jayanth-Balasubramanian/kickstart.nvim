return {
    'linux-cultist/venv-selector.nvim',
    branch = 'regexp',
    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
    opts = {
        -- Your options go here
        name = { "venv", "envs" },
        enable_debug_output = false,
        auto_refresh = false,
        anaconda_envs_path = "/Users/jayanth/opt/anaconda3/envs/"
    },
    event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    keys = {
        -- Keymap to open VenvSelector to pick a venv.
        { '<leader>vs', '<cmd>VenvSelect<cr>' },
        -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
        { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
    },
}
