local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BM SO HANDSOME", "Sentinel")

local Tab = Window:NewTab("setting")
local Section = Tab:NewSection("attack")
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
     pcall(function()
         local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
         local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
         Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}
         Combat.activeController.timeToNextAttack = 0
     end)
 end) 
 end)
 
 
 spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
     pcall(function()
         game:GetService'VirtualUser':CaptureController()
         game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
     end)
 end) 
 end)
Section:NewToggle("auto attack", "attack auto", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)