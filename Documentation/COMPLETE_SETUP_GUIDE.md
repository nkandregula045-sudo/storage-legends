# Storage Legends - Complete Setup Guide

## Step 1: Create Folders in ServerScriptService

1. Right-click **ServerScriptService** in Explorer
2. Insert Object → **Folder** → Name it **Modules**
3. Insert Object → **Folder** → Name it **Systems**

## Step 2: Add Server Scripts

### Main Script
1. Right-click **ServerScriptService**
2. Insert Object → **Script** (NOT LocalScript)
3. Rename to **Main** (will auto-become Main.server.lua)
4. Copy code from repo → Main.server.lua

### Server Modules (9 total)
1. Right-click **ServerScriptService > Modules**
2. Insert Object → **ModuleScript**
3. Name each module:
   - Economy
   - Inventory
   - Collections
   - DataManager
   - ItemGenerator
   - Luck
   - Rebirth
   - Events
   - Trading
4. Copy code from repo for each

### System Modules (3 total)
1. Right-click **ServerScriptService > Systems**
2. Insert Object → **ModuleScript** (3 times)
3. Name:
   - UnitSpawner
   - AnimationHandler
   - LeaderboardUpdater
4. Copy code from repo

## Step 3: Create ReplicatedStorage Structure

### Modules Folder
1. Right-click **ReplicatedStorage**
2. Insert Object → **Folder** → Name **Modules**
3. Insert Object → **ModuleScript** (6 times):
   - Constants
   - Utils
   - ItemData
   - WorldData
   - RarityColors
   - (GameBalance - copy from Configurations)
4. Copy code from repo for each

### Events Folder
1. Right-click **ReplicatedStorage**
2. Insert Object → **Folder** → Name **Events**
3. Right-click **ReplicatedStorage > Events**
4. Insert Object → **RemoteEvent** (10 times):
   - UnitPurchased
   - LootRevealed
   - ItemSold
   - ItemKept
   - CollectionCompleted
   - PlayerDataUpdated
   - EventActivated
   - TradeRequested
   - TradeAccepted
   - LootRefresh

## Step 4: Add Client Scripts

### LocalScripts in StarterCharacterScripts
1. Go to **StarterPlayer > StarterCharacterScripts**
2. Insert Object → **LocalScript** (6 times):
   - InputHandler
   - UIController
   - InventoryUI
   - ShopUI
   - CollectionsUI
   - LeaderboardUI
3. Copy code from repo for each

## Step 5: Create Configurations Folder (Optional)

1. Right-click **game** (root of explorer)
2. Create new **Folder** → Name **Configurations**
3. Insert Object → **ModuleScript** (2 times):
   - GameBalance
   - ItemData
4. Copy code from repo

## Step 6: Start the Server

1. Press **Play** in Studio
2. Check **Output** for log messages
3. You should see:
   ```
   ========================================
   🎮 Storage Legends - Starting Server
   ========================================
   ✓ Constants loaded
   ✓ All modules loaded
   ========================================
   ✓ Server initialization complete!
   ========================================
   ```

## Script Type Quick Reference

| Type | File Extension | Where | Icon |
|------|---|---|---|
| Server Script | .server.lua | ServerScriptService | 📄 (red) |
| Local Script | .local.lua | StarterPlayer, StarterGui | 📄 (blue) |
| Module Script | .lua | Inside Modules folder | 📦 |
| Remote Event | (no ext) | ReplicatedStorage | 📡 |

## Common Mistakes

❌ **Wrong:** Putting LocalScript in ServerScriptService
✅ **Right:** Put LocalScript in StarterPlayer > StarterCharacterScripts

❌ **Wrong:** Using `require()` on a ServerScript path from client
✅ **Right:** Only require from ReplicatedStorage on client

❌ **Wrong:** Creating scripts without the .server or .local extensions
✅ **Right:** Studio auto-names them correctly when you select the right type

❌ **Wrong:** Forgetting to create RemoteEvents
✅ **Right:** Create each RemoteEvent manually in ReplicatedStorage > Events

## Testing Your Setup

1. **Server Started?** Check Output for initialization messages
2. **Modules Loading?** Look for "✓ All modules loaded"
3. **Players Joining?** Message should appear in Output
4. **No Errors?** Green checkmarks in Output

If you see red errors, check:
- Module names match exactly (case-sensitive)
- Script types are correct (.server, .local)
- RemoteEvents are created and named correctly
- Paths in `require()` match folder structure

---

**You're ready to build!** Follow the IMPLEMENTATION_GUIDE.md for 8-week development roadmap.
