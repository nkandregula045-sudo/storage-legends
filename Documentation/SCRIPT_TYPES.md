# Storage Legends - Complete File Structure with Script Types

## ServerScriptService Structure

```
ServerScriptService/
├── Main.server.lua                    [SERVER SCRIPT]
│   └── Initializes game, loads modules, handles player joins/leaves
│
└── Modules/
    ├── Economy.lua                    [MODULE SCRIPT]
    │   └── Handles cash, prestige tokens, transactions
    ├── Inventory.lua                  [MODULE SCRIPT]
    │   └── Manages player items, buying, selling
    ├── Collections.lua                [MODULE SCRIPT]
    │   └── Tracks collection progress, awards bonuses
    ├── DataManager.lua                [MODULE SCRIPT]
    │   └── Saves/loads player data to DataStore
    ├── ItemGenerator.lua              [MODULE SCRIPT]
    │   └── Creates random loot based on rarity/luck
    ├── Luck.lua                       [MODULE SCRIPT]
    │   └── Manages luck levels and rarity multipliers
    ├── Rebirth.lua                    [MODULE SCRIPT]
    │   └── Handles rebirth system and prestige
    ├── Events.lua                     [MODULE SCRIPT]
    │   └── Manages hourly events with boosts
    └── Trading.lua                    [MODULE SCRIPT]
        └── Handles P2P trading between players

└── Systems/
    ├── UnitSpawner.lua                [MODULE SCRIPT]
    │   └── Spawns physical storage units in world
    ├── AnimationHandler.lua           [MODULE SCRIPT]
    │   └── Manages all animations (doors, reveals, etc.)
    └── LeaderboardUpdater.lua         [MODULE SCRIPT]
        └── Updates leaderboards every 5 minutes
```

## StarterPlayer/StarterCharacterScripts Structure

```
StarterPlayer/StarterCharacterScripts/
├── InputHandler.local.lua             [LOCAL SCRIPT]
│   └── Handles keyboard input, shortcuts
├── UIController.local.lua             [LOCAL SCRIPT]
│   └── Main UI manager, connects events to UI updates
├── InventoryUI.local.lua              [LOCAL SCRIPT]
│   └── Creates/manages inventory grid display
├── ShopUI.local.lua                   [LOCAL SCRIPT]
│   └── Creates/manages unit shop interface
├── CollectionsUI.local.lua            [LOCAL SCRIPT]
│   └── Creates/manages collection progress display
└── LeaderboardUI.local.lua            [LOCAL SCRIPT]
    └── Creates/manages leaderboard display
```

## ReplicatedStorage Structure

```
ReplicatedStorage/
├── Modules/
│   ├── Constants.lua                  [MODULE SCRIPT]
│   │   └── Game constants, rarity tables, world names
│   ├── Utils.lua                      [MODULE SCRIPT]
│   │   └── Utility functions (formatting, randomization, etc.)
│   ├── ItemData.lua                   [MODULE SCRIPT]
│   │   └── Item database with collections and values
│   ├── WorldData.lua                  [MODULE SCRIPT]
│   │   └── All 5 worlds with units and requirements
│   └── RarityColors.lua               [MODULE SCRIPT]
│       └── Color definitions for each rarity
│
└── Events/
    ├── UnitPurchased                  [REMOTE EVENT]
    │   └── Fired: Player buys storage unit
    ├── LootRevealed                   [REMOTE EVENT]
    │   └── Fired: Loot items revealed from unit
    ├── ItemSold                       [REMOTE EVENT]
    │   └── Fired: Player sells an item
    ├── ItemKept                       [REMOTE EVENT]
    │   └── Fired: Player keeps an item
    ├── CollectionCompleted            [REMOTE EVENT]
    │   └── Fired: Player completes a collection
    ├── PlayerDataUpdated              [REMOTE EVENT]
    │   └── Fired: Player data changes (cash, prestige, etc.)
    ├── EventActivated                 [REMOTE EVENT]
    │   └── Fired: Hourly event activates (Estate Sale, etc.)
    ├── TradeRequested                 [REMOTE EVENT]
    │   └── Fired: Player requests a trade
    ├── TradeAccepted                  [REMOTE EVENT]
    │   └── Fired: Trade is accepted
    └── LootRefresh                    [REMOTE EVENT]
        └── Fired: Refresh inventory display
```

## Configurations Structure

```
Configurations/
├── GameBalance.lua                    [MODULE SCRIPT]
│   └── Game economy settings (costs, rarities, events, gamepasses)
└── ItemData.lua                       [MODULE SCRIPT]
    └── Item database (moved to ReplicatedStorage later)
```

## Documentation Structure

```
Documentation/
├── GAME_DESIGN.md                     [MARKDOWN]
│   └── Complete game concept and design
├── FOLDER_STRUCTURE.md                [MARKDOWN]
│   └── How to set up folders in Studio
└── IMPLEMENTATION_GUIDE.md            [MARKDOWN]
    └── 8-week development roadmap with checklists
```

## Script Type Reference

### SERVER SCRIPT (.server.lua)
- **Where:** ServerScriptService (or any folder inside it)
- **Use For:** Code that runs on the server, modifies game state, handles purchases, saves data
- **Access:** Can access both ServerScriptService and ReplicatedStorage
- **Example:** Main.server.lua - initializes the game

### LOCAL SCRIPT (.local.lua)
- **Where:** StarterPlayer > StarterCharacterScripts (or StarterGui, other client locations)
- **Use For:** Responds to player input, updates UI, plays animations, displays information
- **Access:** Can only access ReplicatedStorage and StarterGui (client-side)
- **Example:** InputHandler.local.lua - handles keyboard input

### MODULE SCRIPT (.lua)
- **Where:** Anywhere (usually inside Modules folder in ServerScriptService or ReplicatedStorage)
- **Use For:** Reusable code, utility functions, data definitions
- **Access:** Depends on where it's stored
- **How to Use:** `local Module = require(path.to.Module)`
- **Example:** Economy.lua - handles cash transactions

### REMOTE EVENT (no file extension)
- **Where:** ReplicatedStorage > Events
- **Use For:** Communication between server and client
- **How Created:** In Studio, Insert > RemoteEvent
- **Example:** UnitPurchased - fired when player buys a unit

## Data Flow Example

**Player clicks BUY button in Shop:**

1. ShopUI.local.lua (LOCAL SCRIPT)
   → Detects click, fires RemoteEvent: UnitPurchased

2. Main.server.lua (SERVER SCRIPT)
   → Receives event, calls Economy module

3. Economy.lua (MODULE SCRIPT)
   → Validates player has cash
   → Deducts cash, saves data
   → Calls ItemGenerator to create loot

4. ItemGenerator.lua (MODULE SCRIPT)
   → Creates random items based on rarity
   → Returns loot array

5. Main.server.lua (SERVER SCRIPT)
   → Fires RemoteEvent: LootRevealed back to client

6. UIController.local.lua (LOCAL SCRIPT)
   → Receives event
   → Calls ShopUI to show loot on screen

7. ShopUI.local.lua (LOCAL SCRIPT)
   → Displays items with keep/sell buttons
   → Waits for player choice

---

**Key Rules:**
- Server scripts handle LOGIC and DATA
- Local scripts handle UI and INPUT
- Modules are used by BOTH
- RemoteEvents connect server to clients
