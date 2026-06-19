-- Item Data - Complete item database

local ItemData = {}

-- RETRO COLLECTION
ItemData.RetroCollection = {
    Name = "Retro Collection",
    Items = {
        { Name = "Game Boy", BaseValue = 500, Rarity = "Uncommon" },
        { Name = "Old TV", BaseValue = 1500, Rarity = "Uncommon" },
        { Name = "VHS Player", BaseValue = 800, Rarity = "Common" },
        { Name = "Arcade Cabinet", BaseValue = 5000, Rarity = "Rare" },
    },
    CompletionBonus = { Type = "SellValueMultiplier", Value = 1.05 },
}

-- LUXURY COLLECTION
ItemData.LuxuryCollection = {
    Name = "Luxury Collection",
    Items = {
        { Name = "Rolex", BaseValue = 10000, Rarity = "Epic" },
        { Name = "Diamond Ring", BaseValue = 15000, Rarity = "Epic" },
        { Name = "Gold Bar", BaseValue = 5000, Rarity = "Rare" },
        { Name = "Sports Car Key", BaseValue = 20000, Rarity = "Legendary" },
    },
    CompletionBonus = { Type = "LuckMultiplier", Value = 1.10 },
}

-- GAMING COLLECTION
ItemData.GamingCollection = {
    Name = "Gaming Collection",
    Items = {
        { Name = "PS5", BaseValue = 8000, Rarity = "Rare" },
        { Name = "Xbox Series X", BaseValue = 8000, Rarity = "Rare" },
        { Name = "Nintendo Switch", BaseValue = 4000, Rarity = "Uncommon" },
        { Name = "VR Headset", BaseValue = 12000, Rarity = "Epic" },
    },
    CompletionBonus = { Type = "ValueMultiplier", Value = 1.07 },
}

-- ALL ITEMS
ItemData.AllItems = {
    { Name = "Game Boy", BaseValue = 500, Rarity = "Uncommon", Collection = "Retro" },
    { Name = "Old TV", BaseValue = 1500, Rarity = "Uncommon", Collection = "Retro" },
    { Name = "VHS Player", BaseValue = 800, Rarity = "Common", Collection = "Retro" },
    { Name = "Arcade Cabinet", BaseValue = 5000, Rarity = "Rare", Collection = "Retro" },
    { Name = "Rolex", BaseValue = 10000, Rarity = "Epic", Collection = "Luxury" },
    { Name = "Diamond Ring", BaseValue = 15000, Rarity = "Epic", Collection = "Luxury" },
    { Name = "Gold Bar", BaseValue = 5000, Rarity = "Rare", Collection = "Luxury" },
    { Name = "Sports Car Key", BaseValue = 20000, Rarity = "Legendary", Collection = "Luxury" },
    { Name = "PS5", BaseValue = 8000, Rarity = "Rare", Collection = "Gaming" },
    { Name = "Xbox Series X", BaseValue = 8000, Rarity = "Rare", Collection = "Gaming" },
    { Name = "Nintendo Switch", BaseValue = 4000, Rarity = "Uncommon", Collection = "Gaming" },
    { Name = "VR Headset", BaseValue = 12000, Rarity = "Epic", Collection = "Gaming" },
    { Name = "Old Book", BaseValue = 100, Rarity = "Common", Collection = nil },
    { Name = "Vintage Camera", BaseValue = 2000, Rarity = "Uncommon", Collection = nil },
    { Name = "Antique Clock", BaseValue = 3000, Rarity = "Uncommon", Collection = nil },
    { Name = "Painting", BaseValue = 5000, Rarity = "Rare", Collection = nil },
    { Name = "Vase", BaseValue = 2000, Rarity = "Uncommon", Collection = nil },
}

return ItemData