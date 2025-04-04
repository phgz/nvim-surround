local buffer = require("nvim-surround.buffer")
local config = require("nvim-surround.config")
local functional = require("nvim-surround.functional")

local M = {}

-- Do nothing.
M.NOOP = function() end

-- Repeats a delimiter pair n times.
---@param delimiters delimiter_pair The delimiters to be repeated.
---@param n integer The number of times to repeat the delimiters.
---@return delimiter_pair @The repeated delimiters.
---@nodiscard
M.repeat_delimiters = function(delimiters, n)
    local acc = { { "" }, { "" } }
    for _ = 1, n do
        acc[1][#acc[1]] = acc[1][#acc[1]] .. delimiters[1][1]
        vim.list_extend(acc[1], delimiters[1], 2)
        acc[2][#acc[2]] = acc[2][#acc[2]] .. delimiters[2][1]
        vim.list_extend(acc[2], delimiters[2], 2)
    end
    return acc
end

-- Normalizes a pair of delimiters to use a string[] for both the left and right delimiters
---@param raw_delimiters (string|string[])[] The delimiters to be repeated.
---@return delimiter_pair @The normalized delimiters.
---@nodiscard
M.normalize_delimiters = function(raw_delimiters)
    local lhs = raw_delimiters[1]
    local rhs = raw_delimiters[2]
    return {
        type(lhs) == "string" and { lhs } or lhs,
        type(rhs) == "string" and { rhs } or rhs,
    }
end

-- Gets the nearest two selections for the left and right surrounding pair.
---@param char string|nil A character representing what kind of surrounding pair is to be selected.
---@param action "delete"|"change" A string representing what action is being performed.
---@return selections|nil @A table containing the start and end positions of the delimiters.
---@nodiscard
M.get_nearest_selections = function(char, action)
    char = config.get_alias(char)
    local chars = functional.to_list(config.get_opts().aliases[char] or char)
    if not chars then
        return nil
    end

    local curpos = buffer.get_curpos()
    local winview = vim.fn.winsaveview()
    local selections_list = {}
    -- Iterate through all possible selections for each aliased character, and find the closest pair
    for _, c in ipairs(chars) do
        local cur_selections = (function()
            if action == "change" then
                return config.get_change(c).target(c)
            else
                return config.get_delete(c)(c)
            end
        end)()
        -- If found, add the current selections to the list of all possible selections
        if cur_selections then
            selections_list[#selections_list + 1] = cur_selections
        end
        -- Reset the cursor position
        buffer.set_curpos(curpos)
    end
    -- Reset the window view (in case some delimiters were off screen)
    vim.fn.winrestview(winview)

    local nearest_selections = M.filter_selections_list(selections_list)
    return nearest_selections
end

-- Filters down a list of selections to the best one, based on the jumping heuristic.
---@param selections_list selections[] The given list of selections.
---@return selections|nil @The best selections from the list.
---@nodiscard
M.filter_selections_list = function(selections_list)
    local curpos = buffer.get_curpos()
    local best_selections
    for _, cur_selections in ipairs(selections_list) do
        if cur_selections then
            best_selections = best_selections or cur_selections
            if buffer.is_inside(curpos, best_selections) then
                -- Handle case where the cursor is inside the nearest selections
                if
                    buffer.is_inside(curpos, cur_selections)
                    and buffer.comes_before(best_selections.left.first_pos, cur_selections.left.first_pos)
                    and buffer.comes_before(cur_selections.right.last_pos, best_selections.right.last_pos)
                then
                    best_selections = cur_selections
                end
            elseif buffer.comes_before(curpos, best_selections.left.first_pos) then
                -- Handle case where the cursor comes before the nearest selections
                if
                    buffer.is_inside(curpos, cur_selections)
                    or buffer.comes_before(curpos, cur_selections.left.first_pos)
                        and buffer.comes_before(cur_selections.left.first_pos, best_selections.left.first_pos)
                then
                    best_selections = cur_selections
                end
            else
                -- Handle case where the cursor comes after the nearest selections
                if
                    buffer.is_inside(curpos, cur_selections)
                    or buffer.comes_before(best_selections.right.last_pos, cur_selections.right.last_pos)
                then
                    best_selections = cur_selections
                end
            end
        end
    end
    return best_selections
end

-- Get a compatible vim range (1 index based) from a TS node range.
--
-- TS nodes start with 0 and the end col is ending exclusive.
-- They also treat a EOF/EOL char as a char ending in the first
-- col of the next row.
---comment
---@param range integer[]
---@param buf integer|nil
---@return integer, integer, integer, integer
function M.get_vim_range(range, buf)
    ---@type integer, integer, integer, integer
    local srow, scol, erow, ecol = unpack(range)
    srow = srow + 1
    scol = scol + 1
    erow = erow + 1

    if ecol == 0 then
        -- Use the value of the last col of the previous row instead.
        erow = erow - 1
        if not buf or buf == 0 then
            ecol = vim.fn.col({ erow, "$" }) - 1
        else
            ecol = #vim.api.nvim_buf_get_lines(buf, erow - 1, erow, false)[1]
        end
        ecol = math.max(ecol, 1)
    end
    return srow, scol, erow, ecol
end

--- Convert a 0-indexed position to 1-indexed
---@param sel selection
---@return selection
M.convert_to_one_indexed = function(sel)
    sel.first_pos[1] = sel.first_pos[1] + 1
    sel.first_pos[2] = sel.first_pos[2] + 1
    sel.last_pos[1] = sel.last_pos[1] + 1

    return sel
end

--- Get a `selection` representation of a range (4 values: row_start, col_start, row_end, col_end)
---@param range integer[]
---@return selection
M.as_selection = function(range)
    return M.convert_to_one_indexed({ first_pos = { range[1], range[2] }, last_pos = { range[3], range[4] } })
end

return M
