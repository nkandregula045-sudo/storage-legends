-- Constants - Shared game constants and configuration

local Constants = {}

-- GAME VERSION
Constants.Version = "0.1.0"
Constants.GameName = "Storage Legends"

-- RARITIES (indexed by name for easy lookup)
Constants.RarityColors = {
    Common = Color3.fromRGB(128, 128, 128),
    Uncommon = Color3.fromRGB(0, 255, 0),
    Rare = Color3.fromRGB(0, 0, 255),
    Epic = Color3.fromRGB(128, 0, 128),
    Legendary = Color3.fromRGB(255, 165, 0),
    Mythic = Color3.fromRGB(255, 215, 0),
    Secret = Color3.fromRGB(255, 20, 147),
    Divine = Color3.fromRGB(255, 0, 255),
}

Constants.RarityOrder = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Secret",
    "Divine",
}

-- WORLD NAMES
Constants.Worlds = {
    "Local Storage",
    "Auction House",
    "Celebrity Storage",
    "Secret Government Auctions",
    "Lost Civilizations",
}

-- EVENT TYPES
Constants.EventTypes = {
    "Estate Sale",
    "Celebrity Auction",
    "Golden Hour",
}

-- COLLECTION NAMES
Constants.Collections = {
    "Retro",
    "Luxury",
    "Gaming",
}

return Constants
