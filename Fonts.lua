local _, addon = ...
local LSM = LibStub("LibSharedMedia-3.0")

-- Define custom font files located in \NiceDamage\fonts\
-- Add fonts here if you want to add custom fonts ["Font Name"] = "fontfile.ttf"
local myFonts = {
    ["Pepsi Modern"] = "pepsi_modern.ttf",
    ["Pepsi Cursive"] = "pepsi_cursive.ttf",
    ["Bangers"] = "Bangers.ttf",
    ["Pf Tempesta Seven"] = "pf_tempesta_seven.ttf",
    ["Prototype"] = "Prototype.ttf",
    ["Expressway"] = "Expressway.ttf",
    ["Roboto Bold"] = "Roboto-Bold.ttf",
    ["Big Noodle Titling"] = "bignoodletitling.ttf",
    ["Die Die Die"] = "DIEDIEDI.ttf",
    ["LifeCraft"] = "LifeCraft_Font.ttf"
}

function addon:RegisterFonts()
    local prefix = "Interface\\AddOns\\NiceDamage\\fonts\\"
    
    -- Loop through the table and register each entry with LSM
    for name, file in pairs(myFonts) do
        LSM:Register("font", name, prefix .. file)
    end
end