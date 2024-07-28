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
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local function Notify(v)
    Fluent:Notify({
        Title = "ELGATO HUB",
        Content = v,
        Duration = 5
    })
end

local function isKeyValid(keyInput)
    if keyInput then
        local isKeyValid = KeySystem:verifyKey(keyInput)
        if isKeyValid then
            if writefile then
                writefile(SavedKeyPath, keyInput)
            end
            Notify("VALID KEY!")
            load()
            return true
        else
            Notify("INVALID KEY!")
        end
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
getkey.Size = UDim2.new(0, 136, 0, 32)
getkey.Name = "getkey"
getkey.BorderColor3 = Color3.fromRGB(0, 0, 0)
getkey.Text = "GET KEY"
getkey.Position = UDim2.new(0.1375, 0, 0.83, 0)
getkey.MouseButton1Click:Connect(function()
    KeySystem:copyGetKeyURL()
    Notify("COPY SUCCESS")
end)

local login = Instance.new("TextButton", KeySys)
login.BorderSizePixel = 0
login.TextSize = 20
login.TextColor3 = Color3.fromRGB(255, 255, 255)
login.BackgroundColor3 = Color3.fromRGB(101, 101, 121)
login.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
login.Size = UDim2.new(0, 136, 0, 32)
login.Name = "login"
login.BorderColor3 = Color3.fromRGB(0, 0, 0)
login.Text = "CHECK KEY"
login.Position = UDim2.new(0.51, 0, 0.83, 0)
login.MouseButton1Click:Connect(function()
    isKeyValid(whitelist.Text)
end)

local getkeyUICorner = Instance.new("UICorner", getkey)

local loginUICorner = Instance.new("UICorner", login)

local FrameUIStroke = Instance.new("UIStroke", Frame)
FrameUIStroke.Color = Color3.fromRGB(255, 255, 255)

if readfile and writefile then
    local success_file, error_file = pcall(function()
        local is_key_present = isfile(SavedKeyPath);

        if is_key_present == true then
            Notify("CHECKING SAVED KEY...")

            local key_file_txt = readfile(SavedKeyPath)
            local onl_key = isKeyValid(key_file_txt)

            if onl_key then
                Notify("VALID KEY!")
            else
                Notify("UNVALID KEY")
                delfile(SavedKeyPath)
            end
        end
    end)
    if error_file then
        Notify("FAILED TO CHECK SAVED KEY")
        warn(error_file)
    end
end
