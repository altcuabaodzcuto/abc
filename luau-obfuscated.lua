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

local ServiceID = "elgatohub"
local PandaAuth = loadstring(game:HttpGet("https://raw.githubusercontent.com/luableapi/main/main/panda.lua"))()
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/Fluent.lua"))()

-- Create the main window
local Window = Fluent:CreateWindow({
    Title = "ELGATO HUB | PELIDAN COMMUNITY KEY SYSTEM",
    SubTitle = "VER 2.6",
    TabWidth = 65,
    Size = UDim2.fromOffset(350, 250),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.F15
})

-- Define tabs
local Tabs = {
    Main = Window:AddTab({ Title = "Home", Icon = "rbxassetid://17542643869" }),
}

-- Define a notification function
local function Notify(v)
    Fluent:Notify({
        Title = "ELGATO HUB",
        Content = v,
        Duration = 5
    })
end

Tabs.Main:AddParagraph({
    Title = "AUTO WHITELST",
    Content = "SUPPORT ONLY WHITELIST"
})

Tabs.Main:AddButton({
    Title = "GET LINK WHITELIST",
    Description = "",
    Callback = function()
        setclipboard(PandaAuth:GetKey(ServiceID))
    end
})

Tabs.Main:AddParagraph({
    Title = "PREMIUM KEY",
    Content = "SUPPORT ONLY PREMIUM KEY"
})

Tabs.Main:AddInput("Input", {
    Title = "KEY",
    Default = "",
    Placeholder = "BAOCUTO",
    Numeric = false,
    Finished = false,
    Callback = function(va)
        _G.Key = va
    end
})

Tabs.Main:AddButton({
    Title = "CHECK KEY",
    Description = "",
    Callback = function()
        if PandaAuth:ValidatePremiumKey(ServiceID, _G.Key) then
            load()
            Notify("Authenticated")
        else
            Notify("Not Authenticated")
        end
    end
})

while true do
    if PandaAuth:Authenticate_Keyless(ServiceID) then
        load()
        Notify("Successfully Authorized")
        break
    else
        Notify("Hardware ID not Successfully Authorized")
    end
    wait(5)
end
