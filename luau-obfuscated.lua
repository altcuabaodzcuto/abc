
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


local SavedKeyPath = "ELGATO HUB/SavedKey.txt"
local ServiceID = "elgatohub"
local PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))()

local function Notify(va)
    local notification = game.StarterGui:SetCore("SendNotification", {
        Title = "ELGATO HUB",
        Text = va,
        Icon = "rbxassetid://18710056314",
        Duration = 5,
        Button1 = "OKAY MR BEAT"
    })
    
    notification.Button1Click:Connect(function()
        notification:Dismiss()
    end)
end

function File()
    if not isfolder(SavedKeyPath) then
        makefolder(SavedKeyPath)
    end
end


local function isKeyValid(keyInput)
    if PandaAuth:ValidatePremiumKey(ServiceID, keyInput) or PandaAuth:ValidateKey(ServiceID, keyInput) then
        Notify("AUTHENTICATED")
        load()
        writefile(SavedKeyPath, keyInput)
    else
        if isfile(SavedKeyPath) then
            File()
            delfile(SavedKeyPath)
        end
        Notify("NOT AUTHENTICATED")
    end
end

local Main = Instance.new("ScreenGui", gethui())
Main.Name = "Main"
Main.Parent = game.CoreGui
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local KeySys = Instance.new("CanvasGroup", Main)
KeySys.GroupTransparency = 0.2
KeySys.BorderSizePixel = 0
KeySys.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeySys.AnchorPoint = Vector2.new(0.5, 0.5)
KeySys.Size = UDim2.new(0, 400, 0, 210)
KeySys.Position = UDim2.new(0.5, 0, 0.5, 0)
KeySys.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeySys.Name = "KeySys"

local UICorner = Instance.new("UICorner", KeySys)

local UIStroke = Instance.new("UIStroke", KeySys)
UIStroke.Color = Color3.fromRGB(255, 255, 255)

local whitelist = Instance.new("TextBox", KeySys)
whitelist.BorderSizePixel = 2
whitelist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
whitelist.TextSize = 12
whitelist.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
whitelist.TextColor3 = Color3.fromRGB(201, 201, 201)
whitelist.BackgroundTransparency = 0.9
whitelist.Size = UDim2.new(0, 336, 0, 129)
whitelist.BorderColor3 = Color3.fromRGB(0, 0, 0)
whitelist.Text = ""
whitelist.PlaceholderText = "PUT YOUR KEY"
whitelist.Name = "whitelist"
whitelist.Position = UDim2.new(0.08, 0, 0.16942, 0)

local whitelistUIStroke = Instance.new("UIStroke", whitelist)
whitelistUIStroke.Thickness = 0.2

local Frame = Instance.new("Frame", KeySys)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Size = UDim2.new(0, 400, 0, 19)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)

local TextLabel = Instance.new("TextLabel", Frame)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 15
TextLabel.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Size = UDim2.new(0, 400, 0, 19)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "ELGATO HUB KEY SYSTEM"

local getkey = Instance.new("TextButton", KeySys)
getkey.BorderSizePixel = 0
getkey.TextSize = 20
getkey.TextColor3 = Color3.fromRGB(255, 255, 255)
getkey.BackgroundColor3 = Color3.fromRGB(101, 101, 121)
getkey.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
getkey.Size = UDim2.new(0, 130, 0, 32)
getkey.Name = "getkey"
getkey.BorderColor3 = Color3.fromRGB(0, 0, 0)
getkey.Text = "GET KEY"
--getkey.Position = UDim2.new(0.1375, 0, 0.83, 0)
getkey.MouseButton1Click:Connect(function()
    setclipboard(PandaAuth:GetKey(ServiceID))
    Notify("COPY SUCCESS")
end)

local login = Instance.new("TextButton", KeySys)
login.BorderSizePixel = 0
login.TextSize = 20
login.TextColor3 = Color3.fromRGB(255, 255, 255)
login.BackgroundColor3 = Color3.fromRGB(101, 101, 121)
login.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
login.Size = UDim2.new(0, 130, 0, 32)
login.Name = "login"
login.BorderColor3 = Color3.fromRGB(0, 0, 0)
login.Text = "CHECK KEY"
--login.Position = UDim2.new(0.51, 0, 0.83, 0)
login.MouseButton1Click:Connect(function()
    isKeyValid(whitelist.Text)
end)
local getkeyUICorner = Instance.new("UICorner", getkey)
local loginUICorner = Instance.new("UICorner", login)

local howToGetKey = Instance.new("TextButton", KeySys)
howToGetKey.BorderSizePixel = 0
howToGetKey.TextSize = 20
howToGetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
howToGetKey.BackgroundColor3 = Color3.fromRGB(101, 101, 121)
howToGetKey.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
howToGetKey.Size = UDim2.new(0, 120, 0, 32)
howToGetKey.Name = "howToGetKey"
howToGetKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
howToGetKey.Text = "TUTORIAL"
howToGetKey.MouseButton1Click:Connect(function()
    setclipboard("https://youtu.be/_7pJAZkPE9U")
    Notify("Paste it into your browser to view how to get key")
end)

local howToGetKeyUICorner = Instance.new("UICorner", howToGetKey)

-- Cập nhật vị trí của các button
getkey.Position = UDim2.new(0.01, 0, 0.83, 0)
login.Position = UDim2.new(0.66, 0, 0.83, 0)
howToGetKey.Position = UDim2.new(0.35, 0, 0.83, 0)

if isfile(SavedKeyPath) then
    Notify("CHECKING SAVED KEY...")
    local fileContent = readfile(SavedKeyPath)
    if fileContent then
        isKeyValid(fileContent)
    else
        Notify("ERROR: cannot read file")
    end
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
