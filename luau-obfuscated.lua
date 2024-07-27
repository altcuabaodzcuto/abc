
local function load()
 
 repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

if game.PlaceId == 6897167394 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/altcuabaodzcuto/abc/main/FS.lua"))()
elseif game.PlaceId == 10260193230 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/altcuabaodzcuto/abc/main/MM.lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/Scare.lua"))()
end

end

local Links = 'ElgatoHub'
local SavedKeyPath = "ELGATO HUB/SavedKey.txt"
local KeyLibrary = KeyLibrary or loadstring(game:HttpGet('https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/setup_obf.lua'))()
local KeySystem = KeyLibrary.new(Links)
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/Fluent.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ELGATO HUB | LINKVERTISE KEY SYSTEM",
    SubTitle = "by tvbcutodz",
    TabWidth = 65,
    Size = UDim2.fromOffset(299, 250),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.F15
})
local Tabs = {
    Main = Window:AddTab({ Title = "Home", Icon = "rbxassetid://17542643869" }),
}

Tabs.Main:AddParagraph({
    Title = "Game Supports: Fruit Seas",
    Content = ""
})

Tabs.Main:AddParagraph({
    Title = "Game Supports: MeMe Sea",
    Content = ""
})

local function Notify(v)
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        Fluent:Notify({
            Title = "Elgato Hub | ✅ Working",
            Content = v,
            Duration = 5
        })
    else
        Fluent:Notify({
            Title = "Elgato Hub | ❎ Working",
            Content = v,
            Duration = 5
        })
    end
end

local function Notify1(v)
        Fluent:Notify({
            Title = "Elgato Hub",
            Content = v,
            Duration = 50
        })
end

local function isKeyValid(keyInput)
    if keyInput then
        local isKeyValid = KeySystem:verifyKey(keyInput)
        if isKeyValid then
            if writefile then
                writefile(SavedKeyPath, keyInput)
            end
            Notify("✅ Valid Key!")
            wait(1)
            load()
            return true
        else
            Notify("❎ Invalid Key!")
        end
    end
end

if readfile and writefile then
    local success_file, error_file = pcall(function()
        local is_key_present = isfile(SavedKeyPath);
        if is_key_present == true then
            Notify("Checking Key...")
            local key_file_txt = readfile(SavedKeyPath)
            local onl_key = isKeyValid(key_file_txt)
            if onl_key then
                Notify("✅ Save Key")
            else
                Notify("❎ Save Key")
                delfile(SavedKeyPath)
            end
        end
    end)
    if error_file then
        Notify(error_file)
    end
end

Tabs.Main:AddInput("Input", {
    Title = "",
    Default = "",
    Placeholder = "PUT YOUR KEY",
    Numeric = false,
    Finished = false,
    Callback = function(va)
        keyTextbox = va
    end
})

Tabs.Main:AddButton({
    Title = "CHECK KEY",
    Description = "",
    Callback = function()
        isKeyValid(keyTextbox)
    end
})

Tabs.Main:AddButton({
    Title = "GET KEY",
    Description = "",
    Callback = function()
        KeySystem:copyGetKeyURL()
        Notify("Copy Success")
    end
})


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
    while task.wait() do
        pcall(function()
            local elapsedTime = tick() - startTime
            local hours = math.floor(elapsedTime / 3600)
            local minutes = math.floor((elapsedTime % 3600) / 60)
            local seconds = math.floor(elapsedTime % 60)
            hi22.Text = "Time: ".. hours.. ":".. minutes.. ":".. seconds.. " | FPS: " .. math.floor(workspace:GetRealPhysicsFPS()).. " | Ping: " .. game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        end)
    end
end)
