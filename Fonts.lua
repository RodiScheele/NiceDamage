local _, addon = ...
local LSM = LibStub("LibSharedMedia-3.0")

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
    for name, file in pairs(myFonts) do
        LSM:Register("font", name, prefix .. file)
    end
end