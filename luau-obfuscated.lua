if game.PlaceId == 6897167394 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/altcuabaodzcuto/abc/main/FS.lua"))()
elseif game.PlaceId == 4520749081 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/altcuabaodzcuto/abc/main/KL.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/Scare.lua"))()
end

--anti afk
local VirtualUser = game:GetService("VirtualUser")
local character = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

local hi22 = Instance.new("Hint")
hi22.Name = "hi22"
hi22.Parent = game.CoreGui
hi22.Text = "by .tranvanbaodeptrai"

spawn(function()
    local startTime = tick()
    while wait(1) do
        pcall(function()
            local elapsedTime = tick() - startTime
            local hours = math.floor(elapsedTime / 3600)
            local minutes = math.floor((elapsedTime % 3600) / 60)
            local seconds = math.floor(elapsedTime % 60)
            hi22.Text = "Time: ".. hours.. ":".. minutes.. ":".. seconds.. " | FPS: " .. math.floor(workspace:GetRealPhysicsFPS()).. " | Ping: " .. game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        end)
    end
end)
