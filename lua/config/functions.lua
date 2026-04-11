local M = {}
M.command = ""

-- Adds character at the enf of the line
function M.add_char(character)
    local line = vim.api.nvim_get_current_line()
    if not line:match(";%s*$") then
        vim.api.nvim_set_current_line(line .. character)
    end
end

-- Run current file
function M.run_current_file(ask_command)
    if M.command == "" or ask_command then
        M.command = vim.fn.input("Run command: ")
    end

    local current_file_path = vim.api.nvim_buf_get_name(0)
    local expanded_cmd = string.gsub(M.command, "!", current_file_path)

    vim.cmd("split | terminal " .. expanded_cmd)
end

-- Search for term or character in the current line
function M.find_in_line()
    local current_line_number = vim.fn.line(".")

    vim.fn.feedkeys("/\\%" .. current_line_number .. "l", "n")
end

return M

