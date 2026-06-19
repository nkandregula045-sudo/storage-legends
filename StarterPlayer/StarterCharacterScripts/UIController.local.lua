-- UI Controller - Main client-side UI handler
-- Manages all UI interactions and updates

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Constants = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Constants"))
local Utils = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utils"))

print("[UIController] Client initialized for", player.Name)

-- TODO: Create main UI screen
-- TODO: Setup inventory display
-- TODO: Setup unit shop
-- TODO: Setup collections UI
-- TODO: Setup leaderboard

local UIController = {}

function UIController.UpdateCashDisplay(amount)
    -- TODO: Update cash label with formatted number
    print("Cash:", Utils.FormatNumber(amount))
end

function UIController.ShowLootReveal(items)
    -- TODO: Show dramatic reveal animation
    -- TODO: Display items with rarity colors
    -- TODO: Show keep/sell buttons
    print("[UIController] Showing loot reveal for", #items, "items")
end

function UIController.UpdateInventoryUI(items)
    -- TODO: Create grid layout
    -- TODO: Display all items with pictures and values
    print("[UIController] Updated inventory with", #items, "items")
end

return UIController
