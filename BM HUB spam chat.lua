local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BM SO HANDSOME HUB", "Sentinel")

local Tab = Window:NewTab("spam chat")
local Section = Tab:NewSection("click and press E")

Section:NewButton("spam chat", "click and press E", function()
    local words = {
    'BM SO HANDSOME HUB IS GOD',
    'HI',
    'lol',
}

local Plr = game.Players.LocalPlayer
local key = "e" -- ปรับปุ่ม
local event = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

Plr:GetMouse().KeyDown:connect(function(t)
    if t == key then
        event:FireServer(words[math.random(#words)],"All")
end
end)
end)