vim.g.python3_host_prog = '/usr/bin/python3'
vim.cmd([[autocmd BufWritePost *.py silent! execute ':Black' | execute ':w']])
vim.api.nvim_set_keymap('n', '<F9>', ':NERDTreeToggle<CR>', {noremap = true, silent = true})

vim.g.f10_state = 0

function toggle_f10()
    if vim.g.f10_state == 0 then
        vim.cmd('tab split')
        vim.g.f10_state = 1
    else
        vim.cmd('q')
        vim.g.f10_state = 0
    end
end


vim.api.nvim_set_keymap('n', '<F10>', ':lua toggle_f10()<CR>', {noremap = true, silent = true})



require('theprimeagen')
