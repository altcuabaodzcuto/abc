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

local KeySys = loadstring(game:HttpGet("https://raw.githubusercontent.com/altcuabaodzcuto/abc/main/Pixel.lua"))()

KeySys.Main({
  HubName = "Elgato Hub",
  PandaAuth = loadstring(game:HttpGet('https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/main/library/LuaLib/ROBLOX/PandaBetaLib.lua'))(),
  Discord = "https://discord.gg/UrkE64Mfb7",
  Service = "elgatohub",
  APIToken = "", --Only for V4 support Themes(Maggix)
  CustomTextBoxMessage = nil, --put a string if u want
  KeylessSettings = {
  	LoopKeyless = {
  	  Active = true,
        Interval = 5
       },
        CorrectHWID = "CORRECT HWID",
        IncorrectHWID = "INCORRECT HWID",
       PremiumEnabled = true,
       SavePremium = true 
   },
  NormalScript = function()
   load()
  end,
  PremiumScript = function()
    load()
  end
})
