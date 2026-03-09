local M = {}
M.command = ""

-- Adds semicolon at the enf of the line
function M.add_semicolon()
    local line = vim.api.nvim_get_current_line()
    if not line:match(";%s*$") then
    vim.api.nvim_set_current_line(line .. ";")
    end
end

-- Run current file
function M.run_current_file()
    if M.command == "" then
        M.command = vim.fn.input("Run command: ")
    end

    vim.cmd("split | terminal " .. M.command)
end

return M

