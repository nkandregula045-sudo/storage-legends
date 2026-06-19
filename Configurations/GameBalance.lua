-- Storage Legends Game Balance Configuration
-- Easy to tweak game economy and progression

local GameBalance = {}

-- CURRENCY
GameBalance.StartingCash = 5000
GameBalance.StartingPrestigeTokens = 0

-- WORLD DEFINITIONS
GameBalance.Worlds = {
    {
        Name = "Local Storage",
        UnlockRequirement = 0,
        MaxItemValue = 50000,
        Units = {
            { Name = "Tiny Locker", Cost = 100, MinItems = 2, MaxItems = 4 },
            { Name = "Small Unit", Cost = 500, MinItems = 3, MaxItems = 6 },
            { Name = "Garage Unit", Cost = 2000, MinItems = 4, MaxItems = 8 },
        }
    },
    {
        Name = "Auction House",
        UnlockRequirement = 1000000,
        MaxItemValue = 5000000,
        Units = {
            { Name = "Estate Unit", Cost = 50000, MinItems = 3, MaxItems = 7 },
            { Name = "Luxury Unit", Cost = 200000, MinItems = 4, MaxItems = 8 },
            { Name = "Antique Unit", Cost = 500000, MinItems = 5, MaxItems = 10 },
        }
    },
    {
        Name = "Celebrity Storage",
        UnlockRequirement = 100000000,
        MaxItemValue = 100000000,
        Units = {
            { Name = "Influencer Unit", Cost = 5000000, MinItems = 4, MaxItems = 8 },
            { Name = "Rockstar Unit", Cost = 20000000, MinItems = 5, MaxItems = 10 },
            { Name = "Celebrity Mansion Storage", Cost = 50000000, MinItems = 6, MaxItems = 12 },
        }
    },
    {
        Name = "Secret Government Auctions",
        UnlockRequirement = 1000000000,
        MaxItemValue = 10000000000,
        Units = {
            { Name = "Evidence Locker", Cost = 100000000, MinItems = 5, MaxItems = 10 },
            { Name = "Military Warehouse", Cost = 500000000, MinItems = 6, MaxItems = 12 },
            { Name = "Classified Vault", Cost = 1000000000, MinItems = 7, MaxItems = 15 },
        }
    },
    {
        Name = "Lost Civilizations",
        UnlockRequirement = 10000000000,
        MaxItemValue = 1000000000000,
        Units = {
            { Name = "Pharaoh Vault", Cost = 5000000000, MinItems = 6, MaxItems = 12 },
            { Name = "Atlantis Archive", Cost = 50000000000, MinItems = 7, MaxItems = 14 },
            { Name = "Dragon Treasury", Cost = 100000000000, MinItems = 8, MaxItems = 16 },
        }
    },
}

-- RARITIES
GameBalance.Rarities = {
    { Name = "Common", Color = Color3.fromRGB(128, 128, 128), DropRate = 0.50 },
    { Name = "Uncommon", Color = Color3.fromRGB(0, 255, 0), DropRate = 0.25 },
    { Name = "Rare", Color = Color3.fromRGB(0, 0, 255), DropRate = 0.15 },
    { Name = "Epic", Color = Color3.fromRGB(128, 0, 128), DropRate = 0.07 },
    { Name = "Legendary", Color = Color3.fromRGB(255, 165, 0), DropRate = 0.02 },
    { Name = "Mythic", Color = Color3.fromRGB(255, 215, 0), DropRate = 0.005 },
    { Name = "Secret", Color = Color3.fromRGB(255, 20, 147), DropRate = 0.0005 },
    { Name = "Divine", Color = Color3.fromRGB(255, 0, 255), DropRate = 0.00001 },
}

-- LUCK PROGRESSION
GameBalance.LuckLevels = {
    { Level = 1, MythicChance = 0.001, Cost = 1000 },
    { Level = 10, MythicChance = 0.003, Cost = 50000 },
    { Level = 25, MythicChance = 0.005, Cost = 500000 },
    { Level = 50, MythicChance = 0.007, Cost = 5000000 },
    { Level = 100, MythicChance = 0.010, Cost = 50000000 },
}

-- REBIRTH
GameBalance.Rebirth = {
    RequiredNetWorth = 1000000000,
    PrestigeTokensPerRebirth = 1,
    PrestigeMultiplierBonus = 1.05, -- +5% per rebirth
}

-- TRADING
GameBalance.Trading = {
    UnlockLevel = 25,
    CooldownSeconds = 1800, -- 30 minutes
}

-- EVENTS
GameBalance.Events = {
    HourlyEventChance = 1.0, -- 100% chance of event each hour
    EventTypes = {
        { Name = "Estate Sale", RarityMultiplier = 2.0, DurationMinutes = 60 },
        { Name = "Celebrity Auction", ExclusiveDrops = true, DurationMinutes = 60 },
        { Name = "Golden Hour", ValueMultiplier = 2.0, DurationMinutes = 60 },
    }
}

-- GAMEPASSES
GameBalance.GamePasses = {
    VIP = {
        Price = 499, -- Robux
        CashBonus = 1.15, -- +15%
        AutoSellCommons = true,
        ExtraInventory = 50,
        FastOpen = true,
    }
}

return GameBalance
