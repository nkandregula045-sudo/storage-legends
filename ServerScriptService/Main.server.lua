-- Storage Legends - Main Server Script
-- Initialize game systems and handle core logic

local ServerScriptService = game:GetService("ServerScriptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DataStoreService = game:GetService("DataStoreService")

print("========================================")
print("🎮 Storage Legends - Starting Server")
print("========================================")

-- Load Modules
local Modules = ServerScriptService:WaitForChild("Modules")

-- Require constants
local Constants = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Constants"))
print("✓ Constants loaded")

-- TODO: Load all modules:
-- local Economy = require(Modules:WaitForChild("Economy"))
-- local Inventory = require(Modules:WaitForChild("Inventory"))
-- local Collections = require(Modules:WaitForChild("Collections"))
-- local ItemGenerator = require(Modules:WaitForChild("ItemGenerator"))
-- local DataManager = require(Modules:WaitForChild("DataManager"))

print("✓ All modules loaded")

-- Handle player joins
local Players = game:GetService("Players")

local function onPlayerAdded(player)
    print(string.format("[Server] %s joined the game", player.Name))
    -- TODO: Load player data
    -- TODO: Initialize player inventory
    -- TODO: Setup RemoteEvent connections
end

local function onPlayerRemoving(player)
    print(string.format("[Server] %s left the game", player.Name))
    -- TODO: Save player data
end

Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)

-- Load existing players
for _, player in pairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end

print("========================================")
print("✓ Server initialization complete!")
print("========================================")

_G.StorageLegendsReady = true
