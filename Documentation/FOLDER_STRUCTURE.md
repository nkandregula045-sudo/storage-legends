# Roblox Explorer Folder Structure Guide

## How to Set Up Your Roblox Game

### Step 1: Create Folders in ServerScriptService

In **ServerScriptService**, create this hierarchy:

```
ServerScriptService/
├── Main.server.lua                     (Initialize the game)
├── Modules/
│   ├── Economy.lua                     (Cash, prestige system)
│   ├── Inventory.lua                   (Loot storage & management)
│   ├── Collections.lua                 (Collection tracking)
│   ├── Luck.lua                        (Luck calculations)
│   ├── Rebirth.lua                     (Rebirth logic)
│   ├── Events.lua                      (Hourly events)
│   ├── Trading.lua                     (P2P trading)
│   ├── DataManager.lua                 (Save/load data)
│   └── ItemGenerator.lua               (Loot generation)
└── Systems/
    ├���─ UnitSpawner.lua                 (Spawn storage units)
    ├── AnimationHandler.lua            (Door animations)
    └── LeaderboardUpdater.lua          (Update leaderboards)
```

### Step 2: Create Folders in StarterPlayer

**Path:** StarterPlayer > StarterCharacterScripts

```
StarterCharacterScripts/
└── LocalScripts/
    ├── UIController.local.lua          (Main UI handler)
    ├── InputHandler.local.lua          (Player input)
    └── InventoryUI.local.lua           (Display inventory)
```

### Step 3: Create Folders in ReplicatedStorage

```
ReplicatedStorage/
├── Modules/
│   ├── Constants.lua                   (Game constants)
│   ├── ItemData.lua                    (Item definitions)
│   ├── WorldData.lua                   (World definitions)
│   ├── RarityColors.lua                (Rarity color data)
│   └── Utils.lua                       (Utility functions)
└── Events/
    ├── UnitPurchased (RemoteEvent)
    ├── LootRevealed (RemoteEvent)
    ├── ItemSold (RemoteEvent)
    ├── CollectionCompleted (RemoteEvent)
    └── PlayerDataUpdated (RemoteEvent)
```

### Step 4: Create Folders in StarterPlayer > StarterGui

```
StarterGui/
├── MainScreen (ScreenGui)
│   ├── UnitShop (Frame)
│   ├── Inventory (ScrollingFrame)
│   ├── Collections (Frame)
│   ├── Leaderboard (Frame)
│   └── Settings (Frame)
├── LootReveal (ScreenGui)
│   ├── ItemDisplay (Frame)
│   └── KeepSellButtons (Frame)
└── Events (ScreenGui)
    └── EventNotification (TextLabel)
```

## File Naming Convention

**Server Scripts:** `ScriptName.server.lua`
**Local Scripts:** `ScriptName.local.lua`
**Module Scripts:** `ModuleName.lua` (no extension prefix)

## When to Use Each Script Type

### Server Scripts (.server.lua)
Use when the code needs to:
- Modify game state
- Run on the server (authoritative)
- Handle purchases/economy
- Validate player actions
- Save/load data
- Spawn objects

**Example:** Economy.lua, DataManager.lua

### Local Scripts (.local.lua)
Use when the code needs to:
- Respond to player input
- Update UI
- Handle client-side events
- Display animations
- Show notifications

**Example:** UIController.lua, InputHandler.lua

### Module Scripts (.lua)
Use when the code is:
- Reusable by multiple scripts
- Utility functions
- Data definitions
- Helper functions

**Example:** Constants.lua, Utils.lua, ItemData.lua

## RemoteEvents vs RemoteFunctions

**Use RemoteEvents for:**
- One-way communication (fire and forget)
- Item sold event
- Loot revealed
- Notifications

**Use RemoteFunctions for:**
- Request-response (need to wait for answer)
- Buying a unit (need confirmation)
- Getting player data
- Validating trades

## Data Flow

```
Player Input (LocalScript)
    ↓
RemoteEvent Fired
    ↓
Server Script Receives
    ↓
Module Script Processes (Economy, Inventory, etc.)
    ↓
Data Saved
    ↓
RemoteEvent Sent Back to Client
    ↓
LocalScript Updates UI
```

## Import Pattern

**On Server:**
```lua
local Economy = require(game.ServerScriptService.Modules.Economy)
local Inventory = require(game.ServerScriptService.Modules.Inventory)
local Constants = require(game.ReplicatedStorage.Modules.Constants)
```

**On Client:**
```lua
local Constants = require(game.ReplicatedStorage.Modules.Constants)
local Utils = require(game.ReplicatedStorage.Modules.Utils)
```

---

**Key Principle:** Server handles logic and data, client handles UI and input.
