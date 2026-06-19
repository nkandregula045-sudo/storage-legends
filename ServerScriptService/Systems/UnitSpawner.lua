-- Unit Spawner - Spawns storage units in the game world

local UnitSpawner = {}

function UnitSpawner.SpawnUnit(unitData, position)
    -- TODO: Create physical unit model in workspace
    -- TODO: Add door with animation properties
    -- TODO: Add clickdetector for player interaction
    -- TODO: Store unit data
    print(string.format("[UnitSpawner] Spawning %s", unitData.Name))
    return nil
end

function UnitSpawner.RemoveUnit(unitInstance)
    -- TODO: Destroy unit from workspace
    print("[UnitSpawner] Removing unit")
end

function UnitSpawner.GetUnitPosition(unitInstance)
    -- TODO: Return position of unit
    return Vector3.new(0, 0, 0)
end

function UnitSpawner.AnimateDoorOpen(unitInstance)
    -- TODO: Play door opening animation
    -- TODO: Create particle effects
    -- TODO: Play sound effect
    print("[UnitSpawner] Door opening animation")
end

return UnitSpawner