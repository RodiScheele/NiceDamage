local addonName, addon, categoryId, frame = ...
local LSM = LibStub("LibSharedMedia-3.0")

-- Create the Ace3 Addon object
LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceEvent-3.0")

function addon:OnInitialize()
    -- Initialize the Database
    -- Note: SavedVariables name must match the .toc file
    self.db = LibStub("AceDB-3.0"):New(addonName .. "DBv1", {
        global = { 
            minimap = { hide = true } 
        },
        profile = {
            enabled = true,
            fontName = "Pepsi Modern",
            fontSize = 1,
        }
    }, true)

    -- Register custom fonts with LibSharedMedia
    self:RegisterFonts()

    -- Create DataBroker object for Minimap/Addon Managers
    self.ldb = LibStub("LibDataBroker-1.1"):NewDataObject(addonName, {
        type = "launcher",
        icon = "Interface\\Icons\\INV_Scroll_03",
        label = "NiceDamage (Reloaded)",
        OnClick = function() self:OpenConfig() end,
    })

    -- Initialize Minimap Icon via LibDBIcon
    self.icon = LibStub("LibDBIcon-1.0")
    self.icon:Register(addonName, self.ldb, self.db.global.minimap)

    -- Register the Options Table with AceConfig
    LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, self:GetOptions())
    
    -- Add the options to the Blizzard Settings menu
    -- We use the full name here for the display label in the menu
    frame, categoryId = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName, "NiceDamage (Reloaded)", nil)
    
    -- Apply fonts immediately on load
    self:ApplySystemFonts()
end

-- Slash command handler
function addon:OnChatCommand() 
    self:OpenConfig() 
end

-- Opens the Blizzard Settings category for this addon
function addon:OpenConfig()
    if Settings and Settings.OpenToCategory then
        Settings.OpenToCategory(categoryId)
    end
end

-- Core logic for updating the game engine fonts
function addon:ApplySystemFonts()
    if not self.db.profile.enabled then return end
    
    local fontPath = LSM:Fetch("font", self.db.profile.fontName)
    local sizeScale = tostring(self.db.profile.fontSize or 1)
    
    if fontPath then
        -- 1. Set the global path variable for the 3D engine
        DAMAGE_TEXT_FONT = fontPath
        
        -- 2. Set the Global Scale (Real-time update for world numbers)
        if GetCVar("WorldTextScale") then
            SetCVar("WorldTextScale", sizeScale)
        end
        
        -- 3. Update the font objects
        local fonts = { CombatTextFont, DamageNumberFont, WorldFont }
        for _, fontObj in ipairs(fonts) do
            if fontObj then
                fontObj:SetFont(fontPath, 18, "OUTLINE")
            end
        end
    end
end

-- Toggles visibility of the Minimap button
function addon:UpdateMinimapIcon()
    if self.db.global.minimap.hide then
        self.icon:Hide(addonName)
    else
        self.icon:Show(addonName)
    end
end