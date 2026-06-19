-- Events System - Handles hourly game events with special boosts

local Events = {}

function Events.StartEventTimer()
    -- TODO: Create timer that fires every hour
    -- TODO: Select random event type
    -- TODO: Broadcast event to all players
    print("[Events] Event timer started")
end

function Events.GetRandomEvent()
    -- TODO: Select random event from EventTypes in GameBalance
    -- TODO: Return event data
    return nil
end

function Events.ActivateEvent(eventType)
    -- TODO: Apply event multipliers
    -- TODO: Fire RemoteEvent to all players
    -- TODO: Start countdown timer
    print(string.format("[Events] Activating event: %s", eventType))
end

function Events.ApplyEventBoost(item, eventActive)
    -- TODO: If event is active, apply boost to item value/rarity
    return item
end

function Events.GetActiveEvent()
    -- TODO: Return currently active event, or nil if none
    return nil
end

return Events