-- World Data - Complete world definitions

local WorldData = {}

WorldData.Worlds = {
    {
        Number = 1,
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
        Number = 2,
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
        Number = 3,
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
        Number = 4,
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
        Number = 5,
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

return WorldData