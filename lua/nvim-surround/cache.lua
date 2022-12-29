local M = {}

-- These variables hold cache values for dot-repeating the three actions

---@type { line_mode: boolean }
M.normal = {}
---@type { char: string }
M.delete = {}
---@type { del_char: string, add_delimiters: add_func }
M.change = {}

-- Sets the callback function for dot-repeating.
---@param func_name string A string representing the callback function's name.
M.set_callback = function(func_name)
    vim.go.operatorfunc = "v:lua.require'nvim-surround.utils'.NOOP"
    vim.cmd("normal! g@l")
    vim.go.operatorfunc = func_name
end

return M
