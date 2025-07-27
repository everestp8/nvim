local M = {}

-- Adds semicolon at the enf of the line
function M.add_semicolon()
    local line = vim.api.nvim_get_current_line()
    if not line:match(";%s*$") then
    vim.api.nvim_set_current_line(line .. ";")
    end
end

-- Run current file
function M.run_current_file()
    local file = vim.fn.expand("%:p")
    local ext = vim.fn.expand("%:e")
    local cmd = {
        ["py"] = "python3 " .. file,
        ["js"] = "node " .. file,
        ["lua"] = "lua " .. file,
        ["c"] = "gcc " .. file .. " -o /tmp/a.out && /tmp/a.out",
        ["cpp"] = "g++ " .. file .. " -o /tmp/a.out && /tmp/a.out",
        ["sh"] = "bash " .. file
    }

    if cmd[ext] then
        vim.cmd("split | terminal " .. cmd[ext])
    else
        print("File extesion not supported." .. ext)
    end
end

return M

