-- Economy System - Handles cash and prestige tokens

local Economy = {}

function Economy.AddCash(player, amount)
    -- TODO: Update player data with new cash amount
    -- TODO: Save to database
    -- TODO: Fire RemoteEvent to update client UI
    print(string.format("[Economy] %s earned $%d", player.Name, amount))
end

function Economy.RemoveCash(player, amount)
    -- TODO: Deduct cash from player
    -- TODO: Validate player has enough cash
    -- TODO: Save to database
    print(string.format("[Economy] %s spent $%d", player.Name, amount))
end

function Economy.GetPlayerCash(player)
    -- TODO: Retrieve player's current cash from database
    return 0
end

function Economy.GetPlayerPrestigeTokens(player)
    -- TODO: Retrieve player's prestige tokens
    return 0
end

function Economy.BuyStorageUnit(player, unitName)
    -- TODO: Validate purchase
    -- TODO: Deduct cash
    -- TODO: Spawn storage unit
    -- TODO: Initialize loot
    print(string.format("[Economy] %s purchased %s", player.Name, unitName))
end

return Economy
