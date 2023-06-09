require('telescope').setup{
    defaults = {
        path_display={"smart"}
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pd', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {}) 
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
