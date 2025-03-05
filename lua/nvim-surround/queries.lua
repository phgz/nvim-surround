local utils = require("nvim-surround.utils")
local ts_textobjects_shared = require("nvim-treesitter-textobjects.shared")

local M = {}

-- Retrieves the node that corresponds exactly to a given selection.
---@param selection selection The given selection.
---@return _ @The corresponding node.
---@nodiscard
M.get_node = function(selection)
    -- Convert the selection into a list
    local range = {
        selection.first_pos[1],
        selection.first_pos[2],
        selection.last_pos[1],
        selection.last_pos[2],
    }

    -- Get the root node of the current tree
    local root = vim.treesitter.get_node():tree():root()
    -- DFS through the tree and find all nodes that have the given type
    local stack = { root }
    while #stack > 0 do
        local cur = stack[#stack]
        -- If the current node's range is equal to the desired selection, return the node
        if vim.deep_equal(range, { utils.get_vim_range({ cur:range() }) }) then
            return cur
        end
        -- Pop off of the stack
        stack[#stack] = nil
        -- Add the current node's children to the stack
        for child in cur:iter_children() do
            stack[#stack + 1] = child
        end
    end
    return nil
end

-- Filters an existing parent selection down to a capture.
---@param sexpr string The given S-expression containing the capture.
---@param capture string The name of the capture to be returned.
---@param parent_selection selection The parent selection to be filtered down.
M.filter_selection = function(sexpr, capture, parent_selection)
    local parent_node = M.get_node(parent_selection)

    local range = { utils.get_vim_range({ parent_node:range() }) }
    local lang_tree = vim.treesitter.get_parser()
    local ok, parsed_query = pcall(function()
        return vim.treesitter.query.parse and vim.treesitter.query.parse(lang_tree:lang(), sexpr)
            or vim.treesitter.parse_query(lang_tree:lang(), sexpr)
    end)
    if not ok or not parent_node then
        return {}
    end

    for id, node in parsed_query:iter_captures(parent_node, 0, 0, -1) do
        local name = parsed_query.captures[id]
        if name == capture then
            range = { utils.get_vim_range({ node:range() }) }
            return {
                first_pos = { range[1], range[2] },
                last_pos = { range[3], range[4] },
            }
        end
    end
    return nil
end

-- Finds the nearest selection of a given query capture and its source.
---@param capture string The capture to be retrieved.
---@param type string The type of query to get the capture from.
---@return selection|nil @The selection of the capture.
---@nodiscard
M.get_selection = function(capture, type)
    local range6 = ts_textobjects_shared.textobject_at_point(capture, type)
    if not range6 then
        vim.notify("Failed to get textobject at point " .. capture, vim.log.levels.ERROR)
        return
    end
    local range = { utils.get_vim_range(ts_textobjects_shared.torange4(range6)) }

    return {
        first_pos = { range[1], range[2] },
        last_pos = { range[3], range[4] },
    }
end

return M
