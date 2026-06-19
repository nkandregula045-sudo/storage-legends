-- Utility Functions - Helper functions used across the game

local Utils = {}

-- Format large numbers with K, M, B suffixes
function Utils.FormatNumber(num)
    if num >= 1000000000 then
        return string.format("$%.1fB", num / 1000000000)
    elseif num >= 1000000 then
        return string.format("$%.1fM", num / 1000000)
    elseif num >= 1000 then
        return string.format("$%.1fK", num / 1000)
    else
        return string.format("$%d", num)
    end
end

-- Convert number to percentage string
function Utils.FormatPercent(num)
    return string.format("%.2f%%", num * 100)
end

-- Clamp a value between min and max
function Utils.Clamp(value, min, max)
    return math.min(math.max(value, min), max)
end

-- Get random item from table
function Utils.GetRandomItem(table)
    if #table == 0 then return nil end
    return table[math.random(1, #table)]
end

-- Shuffle array (Fisher-Yates)
function Utils.ShuffleArray(array)
    local copy = {}
    for i, v in ipairs(array) do
        copy[i] = v
    end
    
    for i = #copy, 2, -1 do
        local j = math.random(1, i)
        copy[i], copy[j] = copy[j], copy[i]
    end
    
    return copy
end

return Utils
