spawn(function()
    while wait() do 
        pcall(function()
            if _G.Raids then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "Model" and v.Humanoid.Health > 0 then
                        v.Humanoid.Health = Die
                    end
                end
            end
        end)
    end
end)
 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BM SO HANDSOME HUB", "Sentinel")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Raid") 
Section:NewToggle("Kill aura", "", function(v)
    _G.Raids = v
end)
 
 