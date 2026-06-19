-- Leaderboard UI - Displays player rankings

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Constants = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Constants"))
local Utils = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utils"))

print("[LeaderboardUI] Leaderboard UI ready")

local LeaderboardUI = {}

function LeaderboardUI.DisplayLeaderboard(leaderboardType)
    -- TODO: Create leaderboard frame
    -- TODO: Add column headers (Rank, Player, Value)
    -- TODO: Add rows for top 10 players
    -- TODO: Highlight current player
    -- TODO: Show medals for top 3
    print(string.format("[LeaderboardUI] Displaying %s leaderboard", leaderboardType))
end

function LeaderboardUI.UpdateLeaderboard(data)
    -- TODO: Clear existing rows
    -- TODO: Add new rows with data
    -- TODO: Animate row changes
    print("[LeaderboardUI] Updating leaderboard data")
end

function LeaderboardUI.ShowPlayerRank(playerName, rank, value)
    -- TODO: Highlight player's position
    -- TODO: Show their rank number
    -- TODO: Show their value
    -- TODO: Show how far they are from top
    print(string.format("[LeaderboardUI] %s is rank %d with %s", playerName, rank, Utils.FormatNumber(value)))
end

return LeaderboardUI