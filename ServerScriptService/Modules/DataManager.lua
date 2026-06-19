-- Data Manager - Handles player data persistence

local DataStoreService = game:GetService("DataStoreService")
local DataManager = {}

local playerDataStore = DataStoreService:GetDataStore("PlayerData")

function DataManager.LoadPlayerData(player)
    -- TODO: Load player data from DataStore
    -- TODO: Return player profile with cash, items, collections, etc.
    print(string.format("[DataManager] Loading data for %s", player.Name))
    return {
        Cash = 5000,
        PrestigeTokens = 0,
        Inventory = {},
        Collections = {},
        Level = 1,
    }
end

function DataManager.SavePlayerData(player, data)
    -- TODO: Save player data to DataStore
    print(string.format("[DataManager] Saving data for %s", player.Name))
end

function DataManager.DeletePlayerData(player)
    -- TODO: Remove player data (for testing)
    print(string.format("[DataManager] Deleting data for %s", player.Name))
end

return DataManager
