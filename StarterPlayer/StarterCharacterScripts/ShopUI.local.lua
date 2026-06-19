-- Shop UI - Displays available storage units for purchase

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Constants = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Constants"))
local Utils = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utils"))

print("[ShopUI] Shop UI ready")

local ShopUI = {}

function ShopUI.DisplayUnits(worldNumber)
    -- TODO: Get units for world
    -- TODO: Create unit buttons
    -- TODO: Show unit cost
    -- TODO: Show item count range
    -- TODO: Add buy buttons
    print(string.format("[ShopUI] Displaying units for world %d", worldNumber))
end

function ShopUI.DisplayWorldSelector()
    -- TODO: Show all available worlds
    -- TODO: Mark current world
    -- TODO: Show unlock requirements for locked worlds
    -- TODO: Add world select buttons
    print("[ShopUI] Displaying world selector")
end

function ShopUI.UpdateAffordability(playerCash)
    -- TODO: Check which units player can afford
    -- TODO: Disable/enable buy buttons accordingly
    -- TODO: Show "Not enough cash" message if needed
    print(string.format("[ShopUI] Updating affordability with $%d", playerCash))
end

function ShopUI.ShowBuyConfirmation(unit)
    -- TODO: Show confirmation dialog
    -- TODO: Display unit cost
    -- TODO: Display item range
    -- TODO: Show net worth after purchase
    print(string.format("[ShopUI] Confirming purchase of %s", unit.Name))
end

return ShopUI