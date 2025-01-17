vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local bufnr = vim.api.nvim_get_current_buf()
local opts = {buffer = bufnr, remap = false}
vim.keymap.set("n", "<leader>gp", function()
    vim.cmd.Git('push')
end, opts)

-- NOTE: It allows me to easily set the branch i am pushing and any tracking
-- needed if i did not set the branch up correctly
vim.keymap.set("n", "<leader>gt", ":Git push -u origin ", opts);
