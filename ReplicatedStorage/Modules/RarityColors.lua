-- Rarity Colors - Color definitions for all rarities

local RarityColors = {}

RarityColors.Colors = {
    Common = Color3.fromRGB(128, 128, 128),      -- Gray
    Uncommon = Color3.fromRGB(0, 255, 0),        -- Green
    Rare = Color3.fromRGB(0, 0, 255),            -- Blue
    Epic = Color3.fromRGB(128, 0, 128),          -- Purple
    Legendary = Color3.fromRGB(255, 165, 0),     -- Orange
    Mythic = Color3.fromRGB(255, 215, 0),        -- Gold
    Secret = Color3.fromRGB(255, 20, 147),       -- Pink/Magenta
    Divine = Color3.fromRGB(255, 0, 255),        -- Rainbow (Magenta)
}

RarityColors.Names = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Secret",
    "Divine",
}

function RarityColors.GetColorByRarity(rarity)
    return RarityColors.Colors[rarity] or Color3.fromRGB(128, 128, 128)
end

return RarityColors