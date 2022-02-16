local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BM SO HANDSOME HUB", "Sentinel")

local Tab = Window:NewTab("main")
local Section = Tab:NewSection("100% every round")

Section:NewButton("auto 100%", "click and fun", function()
    local walkspeed = 24 -- edit this number for walkspeed (default is 16)
local MainModule = require(game:GetService("ReplicatedStorage").Shootball)
local rs = game:GetService("RunService")
local hookfunc = MainModule.Shoot
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
pcall(function()
while true do
rs.Heartbeat:Wait()
local slider = game.Players.LocalPlayer.PlayerGui.Slider.Frame.Slider
slider.Position = UDim2.new(0.5, slider.Position.Y)
end
end)
local oldFunction
oldFunction = hookfunction(hookfunc, function(...)
local args = {...}
print("before", ...)
args[3] = 0
print("after", unpack(args))
return oldFunction(args)
end)
end)