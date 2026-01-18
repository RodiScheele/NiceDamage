local addonName, addon = ...
local LSM = LibStub("LibSharedMedia-3.0")

function addon:GetOptions()
    return {
        name = addonName,
        type = "group",
        args = {
            settings = {
                name = "General Settings",
                type = "group",
                inline = true,
                order = 1,
                args = {
                    enable = {
                        type = "toggle",
                        name = "Enable Addon",
                        desc = "Toggle the replacement of combat text fonts.",
                        get = function() return self.db.profile.enabled end,
                        set = function(_, v) 
                            self.db.profile.enabled = v
                            self:ApplySystemFonts() 
                        end,
                        order = 1,
                    },
                    minimap = {
                        type = "toggle",
                        name = "Show Minimap Icon",
                        desc = "Toggle the display of the minimap button.",
                        get = function() return not self.db.global.minimap.hide end,
                        set = function(_, v) 
                            self.db.global.minimap.hide = not v
                            self:UpdateMinimapIcon() 
                        end,
                        order = 2,
                    },
                }
            },
            fontGroup = {
                name = "Font Appearance",
                type = "group",
                inline = true,
                order = 2,
                args = {
                    warning = {
                        type = "description",
                        name = "|cFFFF0000Important:|r Changing the Combat Font requires you to Log Out and back in to apply the change. A /reload will not work.",
                        order = 1,
                        fontSize = "medium",
                    },
                    font = {
                        type = "select",
                        name = "Combat Font",
                        desc = "Select the font to use for world damage and healing numbers.",
                        dialogControl = 'LSM30_Font',
                        values = LSM:HashTable("font"),
                        get = function() return self.db.profile.fontName end,
                        set = function(_, v) 
                            self.db.profile.fontName = v
                            self:ApplySystemFonts() 
                        end,
                        order = 2,
                    },
                    fontSize = {
                        type = "range",
                        name = "Font Size Scale",
                        desc = "Adjust the scale of the combat text. 1.0 is default, 2.0 is double size.",
                        min = 0.5,
                        max = 2.5,
                        step = 0.1,
                        isPercent = false,
                        get = function() return self.db.profile.fontSize end,
                        set = function(_, v) 
                            self.db.profile.fontSize = v
                            self:ApplySystemFonts() 
                        end,
                        order = 3,
                    },
                }
            }
        }
    }
end