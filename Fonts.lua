local _, addon = ...
local LSM = LibStub("LibSharedMedia-3.0")

-- Define custom font files located in \NiceDamage\fonts\
local myFonts = {
    ["Pepsi Modern"] = "pepsi_modern.ttf",
    ["Pepsi Cursive"] = "pepsi_cursive.ttf"
}

function addon:RegisterFonts()
    local prefix = "Interface\\AddOns\\NiceDamage\\fonts\\"
    
    -- Loop through the table and register each entry with LSM
    for name, file in pairs(myFonts) do
        LSM:Register("font", name, prefix .. file)
    end
end