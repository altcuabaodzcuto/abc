
local function load()
   if game.PlaceId == 6897167394 then
   print("✅ " ..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)

repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ElgatoHub/main/Boss.lua"))()

_G.Settings = {
    Main = {
        ["AutoFarm"] = false,
        ["AutoFarmGun"] = false,
        ["AutoQuest"] = false,
        ["SwordMas"] = false,
        ["GunMas"] = false,
        ["FruitMas"] = false,
    },
    Boss = {
       ["SelectBoss"] = "Bandit Leader",
        ["SelectDungeon"] = "Starvation Prison",
        ["NameBoss"] = "Nigga",
        ["AutoKey"] = false,
        ["FarmDungeon"] = false,
        ["KillAura"] = false,
        ["FarmBoss"] = false,
        ["QuestBoss"] = true,
        ["SmokeAdmiral"] = false,
        ["Lucius"] = false,
    },
    Teleport = {
        ["SelectMap"] = "Windmill Village",
        ["AutoChest"] = false,
        ["TP"] = false,
        ["SelectStt1"] = "Strength",
        ["SelectStt2"] = "Defense",
        ["AutoStat"] = false,
        ["ModeChest"] = "Slow",
    },
    Shop = {
        ["SelectItem"] = "",
        ["TPFruit"] = false,
        ["StoreFruit"] = false,
        ["BuyIt"] = false,
        ["ShopFr"] = false,
        ["Ramdom"] = false,
    },
    Misc = {
        ["BlackScreen"] = false,
    },
    Config = {
        ["IdS"] = "rbxassetid://16190782181",
        ["BusoHaki"] = true,
        ["KenHaki"] = false,
        ["Z"] = true,
        ["X"] = true,
        ["C"] = true,
        ["V"] = true,
        ["SelectWeapon"] = "Melee",
        ["SelectMethod"] = "Upper",
        ["DistanceMon"] = 9,
        ["HealthMon"] = 35,
        ["Volume"] = 5,
        ["Hold"] = 1,
    },
    Web = {
    	["JobId"] = "",
         ["Api"] = "",
         ["Webhook"] = false,
    },
}

local NG = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("ELGATO HUB") then
            makefolder("ELGATO HUB")
        end
        if not isfolder("ELGATO HUB/".. NG.. "/") then
            makefolder("ELGATO HUB/".. NG.. "/")
        end
        if not isfile("ELGATO HUB/".. NG.. "/".. game.Players.LocalPlayer.Name.. ".json") then
            writefile("ELGATO HUB/".. NG.. "/".. game.Players.LocalPlayer.Name.. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("ELGATO HUB/".. NG.. "/".. game.Players.LocalPlayer.Name.. ".json"))
            for i,v in pairs(Decode) do
                _G.Settings[i] = v
            end
        end
    else
        return warn("Status : Undetected Executor")
    end
end

function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("ELGATO HUB/".. NG.. "/".. game.Players.LocalPlayer.Name.. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("ELGATO HUB/".. NG.. "/".. game.Players.LocalPlayer.Name.. ".json"))
            local Array = {}
            for i,v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("ELGATO HUB/".. NG.. "/".. game.Players.LocalPlayer.Name.. ".json", game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return warn("Status : Undetected Executor")
    end
end

LoadSettings()

--checklv
function CheckLv()
    MyLevel = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Level.Value
    if MyLevel == 1 or MyLevel <= 14 then
        Mon = "Bandit"
        Quest = "Woppa"
        NameQuest = "Bandits"
       
    elseif MyLevel == 15 or MyLevel <= 34 then
        Mon = "Reiner's Subordinate"
        Quest = "Boss"
        NameQuest = "Reiner's Subordinates"
       
    elseif MyLevel == 35 or MyLevel <= 59 then
        Mon = "Orange Pirate"
        Quest = "Unrio"
        NameQuest = "Orange Pirates"
        
    elseif MyLevel == 60 or MyLevel <= 99 then
        Mon = "Monkey"
        Quest = "Zet"
        NameQuest = "Monkeys"
        
    elseif MyLevel == 100 or MyLevel <= 124 then
        Mon = "Angry Chef"
        Quest = "Dyna"
        NameQuest = "Chefs"
      
    elseif MyLevel == 125 or MyLevel <= 149 then
        Mon = "Krieg Pirate"
        Quest = "Viz"
        NameQuest = "Krieg Pirates"
        
    elseif MyLevel == 150 or MyLevel <= 199 then
        Mon = "Sand Pirate"
        Quest = "Cellierin"
        NameQuest = "Sand Pirates"
      
    elseif MyLevel == 200 or MyLevel <= 239 then
        Mon = "Desert Brigand"
        Quest = "Wise"
        NameQuest = "Desert Brigands"
       
    elseif MyLevel == 240 or MyLevel <= 264 then
        Mon = "Fishman"
        Quest = "Bope"
        NameQuest = "Fishmen"
      
    elseif MyLevel == 265 or MyLevel <= 314 then
        Mon = "Graverobber"
        Quest = "Zeno"
        NameQuest = "Graverobbers"
       
    elseif MyLevel == 315 or MyLevel <= 389 then
        Mon = "Sky Soldier"
        Quest = "Ima"
        NameQuest = "Sky Soldiers"
       
    elseif MyLevel == 390 or MyLevel <= 414 then
        Mon = "Divine Guardian"
        Quest = "Sofen"
        NameQuest = "Divine Guardians"
     
    elseif MyLevel == 415 or MyLevel <= 439 then
        Mon = "Gladiator"
        Quest = "Zeke"
        NameQuest = "Gladiators"
        
    elseif MyLevel == 440 or MyLevel <= 464 then
        Mon = "Wanderer"
        Quest = "Bee"
        NameQuest = "Wanderers"
        
    elseif MyLevel == 465 or MyLevel <= 514 then
        Mon = "Lackey"
        Quest = "Emmie"
        NameQuest = "Lackeys"
       
    elseif MyLevel == 515 or MyLevel <= 669 then
        Mon = "Escaped Prisoner"
        Quest = "Prison Guard"
        NameQuest = "Escaped Prisoners"

    elseif MyLevel == 670 or MyLevel <= 719 then
        Mon = "Ice Subordinate"
        Quest = "ixjah"
        NameQuest = "Ice Subordinate"
        
        elseif MyLevel == 720 or MyLevel <= 1150 then
        Mon = "White Titan Pirate"
        Quest = "Karplas"
        NameQuest = "Pirate"
    end
end

--checkboss
function CheckBoss()
    if _G.Settings.Boss["SelectBoss"] == "Bandit Leader" then
        Mon = "Bandit Leader"
        Mon1 = "Bandits"
        Quest = "Abu"
        NameQuest = "Leader of the Bandits"
       
    elseif _G.Settings.Boss["SelectBoss"] == "Devious Reiner" then
        Mon = "Reiner"
        Mon1 = "Reiner"
        Quest = "Zak"
        NameQuest = "Devious Reiner"
        
    elseif _G.Settings.Boss["SelectBoss"] == "Buggy Nigger" then
        Mon = "Buggy"
        Mon1 = "Buggy"
        Quest = "King"
        NameQuest = "Buggy"
       
    elseif _G.Settings.Boss["SelectBoss"] == "King Gorilla" then
        Mon = "King Abu"
        Mon1 = "Gorillas"
        Quest = "Monkey Hunter"
        NameQuest = "King Abu"
        
    elseif _G.Settings.Boss["SelectBoss"] == "Sand Dragon" then
        Mon = "Sand Dragon"
        Mon1 = "Dragon"
        Quest = "Shady Man"
        NameQuest = "Sand Dragon"
      
    elseif _G.Settings.Boss["SelectBoss"] == "Desert King" then
        Mon = "Desert King"
        Mon1 = "Croc"
        Quest = "Vivi"
        NameQuest = "Desert King"
        
    elseif _G.Settings.Boss["SelectBoss"] == "Arlong BigDick" then
        Mon = "Arlong"
        Mon1 = "Fishmen"
        Quest = "Little Boy"
        NameQuest = "Arlong"
       
    elseif _G.Settings.Boss["SelectBoss"] == "Guard Captain" then
        Mon = "Guard Captain"
        Mon1 = "SkyNpcs"
        Quest = "Damu"
        NameQuest = "Guard Captain"
        CFrameMon = CFrame.new(Vector3.new(5937,1714,-8783))

    elseif _G.Settings.Boss["SelectBoss"] == "The Bomber" then
        Mon = "The Bomber"
        Mon1 = "Cactus Island"
        Quest = "Syn"
        NameQuest = "The Bomber"
       
    elseif _G.Settings.Boss["SelectBoss"] == "Thunder God" then
        Mon = "Thunder God"
        Mon1 = "Enel"
        Quest = "Jovahn"
        NameQuest = "Enel"
        CFrameMon = CFrame.new(Vector3.new(3494,2064,-11338))

    elseif _G.Settings.Boss["SelectBoss"] == "Chief Warden" then
        Mon = "Chief Warden"
        Mon1 = "Indomitable Fortress"
        Quest = "Hitman"
        NameQuest = "Chief Warden"
      
    elseif _G.Settings.Boss["SelectBoss"] == "Ice King" then
        Mon = "Ice King"
        Mon1 = "Ice  Prisioners"
        Quest = "Moon"
        NameQuest = "Ice King"
        
        elseif _G.Settings.Boss["SelectBoss"] == "White Titan" then
        Mon = "White Titan"
        Mon1 = "MarineFord"
        Quest = "Ark"
        NameQuest = "White Titan"
    end
end


--checkmon
function CheckDungeon()
     if _G.Settings.Boss["SelectDungeon"] == "Starvation Prison" then
        CFrameMon = CFrame.new(Vector3.new(-29776, 2598, 3202))
        CFrameBoss = CFrame.new(Vector3.new(-27896,2525,2863))
        Mon = "Sand Dragon2"
        Mon1 = "Starvation Prison"
        
    elseif _G.Settings.Boss["SelectDungeon"] == "Blazing Prison" then
        Mon = "Lava Demon"
        Mon1 = "Blazing Prison"
        CFrameMon = CFrame.new(Vector3.new(-36781,6295,-16993))
        CFrameBoss = CFrame.new(Vector3.new(-36000,6175,-16622))
        
    elseif _G.Settings.Boss["SelectDungeon"] == "Freezing Prison" then
        Mon = "Yeti2"
        Mon1 = "Freezing Prison"
        CFrameMon = CFrame.new(Vector3.new(24497,12319,-4532))
        CFrameBoss = CFrame.new(Vector3.new(23298,12274,-4127))
        
        elseif _G.Settings.Boss["SelectDungeon"] == "Eternal Prison" then
        Mon = "Flamingo Fiend"
        Mon1 = "Eternal Prison"
        CFrameMon = CFrame.new(Vector3.new(25920,7484,-4170))
        CFrameBoss = CFrame.new(Vector3.new(25357,7485,-4417))
    end
end

function CheckIsland()
    local SLM = _G.Settings.Teleport["SelectMap"]
    if SLM == "Windmill Village" then
        Quest = "Woppa"

    elseif SLM == "Shells Town" then
        Quest = "Knoxity"

    elseif SLM == "Logue Town" then
        Quest = "Attach"

    elseif SLM == "Orange Town" then
        Quest = "Unrio"

    elseif SLM == "Jungle" then
        Quest = "Zet"

    elseif SLM == "Baratie" then
        Quest = "Viz"

    elseif SLM == "Sandora" then
        Quest = "Cellierin"

    elseif SLM == "Arlong Park" then
        Quest = "Bope"

    elseif SLM == "Skypiea Island" then
        Quest = "Ima"

    elseif SLM == "Colosseum Island" then
        Quest = "Zeke"

    elseif SLM == "Cactus Island" then
        Quest = "Bee"

    elseif SLM == "Indomitable Fortress" then
        Quest = "Prison Guard"

     elseif SLM == "Ice Prisioners" then
        Quest = "ixjah"
        
        elseif SLM == "MarineFord" then
        Quest = "Ark"
    end
end

--hop
function hop()
    local Player = game.Players.LocalPlayer
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"

    local _place,_id = game.PlaceId, game.JobId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
    function ListServers(cursor)
        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
        return Http:JSONDecode(Raw)
    end

    time_to_wait = 0.1
    while wait(time_to_wait) do
        Player.Character.HumanoidRootPart.Anchored = true
        local Servers = ListServers()
        local Server = Servers.data[math.random(1,#Servers.data)]
        TPS:TeleportToPlaceInstance(_place, Server.id, Player)
    end
end

--eqwp
function UnEquipWeapon(Weapon)
    local char = game.Players.LocalPlayer.Character
    if char:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(0.5)
        char[Weapon].Parent = game.Players.LocalPlayer.Backpack
        wait(0.1)
        _G.NotAutoEquip = false
    end
end
function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        local backpack = game.Players.LocalPlayer.Backpack
        if backpack:FindFirstChild(ToolSe) then
            local tool = backpack:FindFirstChild(ToolSe)
            wait(0.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    end
end

--tp
local Speed = 500
local Rootx = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

function TP(Pos)
   if Rootx then
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    elseif Distance < 50 then
        Speed = 300
    elseif Distance < 250 then
        Speed = 350
    elseif Distance < 500 then
        Speed = 450
    elseif Distance < 1000 then
        Speed = 500
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end
end

--tpcheck
function TPv(Pos)
  if Rootx then
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance > 1333 then
         TP(Pos)
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end
end

function FTP(Pos)
    if Rootx then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
end

local Dataz = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId]

--body
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Settings.Main["AutoFarm"] or _G.Settings.Boss["FarmBoss"] or _G.Settings.Main["AutoQuest"] or _G.Settings.Boss["SmokeAdmiral"] or _G.Settings.Boss["SeaDragon"] or _G.Settings.Main["FarmMon"] or _G.Settings.Teleport["AutoChest"] or _G.Settings.Main["FruitMas"] or _G.Settings.Main["GunMas"] or _G.Settings.Main["SwordMas"] or _G.Settings.Teleport["TP"] or _G.Settings.Shop["BuyIt"] or _G.Settings.Shop["ShopFr"] or _G.Settings.Boss["FarmDungeon"] or _G.Settings.Boss["AutoKey"] then
                if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                _G.FastAttack = false
                _G.UseSkill = false
            end
        end)
    end)
end)

function StopTween(target)
    if not target then
        TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
    end
end

--taopart
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Settings.Main["AutoFarm"] or _G.Settings.Boss["FarmBoss"] or _G.Settings.Main["AutoQuest"] or _G.Settings.Boss["SmokeAdmiral"] or _G.Settings.Boss["SeaDragon"] or _G.Settings.Main["FarmMon"] or _G.Settings.Teleport["AutoChest"] or _G.Settings.Main["FruitMas"] or _G.Settings.Main["GunMas"] or _G.Settings.Main["SwordMas"] or _G.Settings.Teleport["TP"] or _G.Settings.Shop["BuyIt"] or _G.Settings.Shop["ShopFr"] or _G.Settings.Boss["FarmDungeon"] or _G.Settings.Boss["AutoKey"] then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

--method farm
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.Config["SelectMethod"] == "Behind" then
                MethodFarm = CFrame.new(0,0,_G.Settings.Config["DistanceMon"])
            elseif _G.Settings.Config["SelectMethod"] == "Below" then
                MethodFarm = CFrame.new(0,-_G.Settings.Config["DistanceMon"],0)  * CFrame.Angles(math.rad(90),0,0)
            elseif _G.Settings.Config["SelectMethod"] == "Upper" then
                MethodFarm = CFrame.new(0,_G.Settings.Config["DistanceMon"],0)  * CFrame.Angles(math.rad(-90),0,0)
            else
                MethodFarm = CFrame.new(0,0,0)
            end
        end)
    end
end)

--check value weapon
spawn(function()
    while wait() do
        pcall(function()
            local playerData = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Items
            local CacLo1 = _G.Settings.Config["SelectWeapon"]
            if CacLo1 == "Melee" then
                WeaponFarm = playerData:FindFirstChild("Fighting Style").Value
            elseif CacLo1 == "Sword" then
                WeaponFarm = playerData:FindFirstChild("Swords").Value
            elseif CacLo1 == "Fruit" then
                WeaponFarm = playerData:FindFirstChild("Fruit").Value
            end
        end)
    end
end)

--fastatk
spawn(function()
    while wait() do
        if _G.FastAttack then
            pcall(function()
                local playerData = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Items
                local CacLo1 = _G.Settings.Config["SelectWeapon"]
                if CacLo1 == "Melee" then
                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("Combat", 0, "right", 0, WeaponFarm)
                elseif CacLo1 == "Sword" then
                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("SwordCombat", 0, "one", 0, game:GetService("Players").LocalPlayer.Character[WeaponFarm .. "M"])
                elseif CacLo1 == "Fruit" then
                    if Datav.Fruit.Value == "Light" or Datav.Fruit.Value == "String" then
                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("DemonFruitCombat", 0, "one", 0, game:GetService("Players").LocalPlayer.Character[WeaponFarm .. "M"])
                    else
                        _G.AutoSkill = true
                    end
                end
            end)
        end
    end
end)

--nocd
spawn(function()
    while wait() do
        pcall(function()
            for _, v in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v.Name == "m1Cooldown" or v.Name == "Aggro" or v.Name == "CriticalAttack" or v.Name == "Highlight" then
                    v:Destroy()
                end
            end
        end)
    end
end)


--autofarm
spawn(function()
    while wait() do
        if _G.Settings.Main["AutoFarm"] then
            pcall(function()
                CheckLv()
                TPv(game.Workspace.NPC.Talk[Quest].WorldPivot)
                _G.FastAttack = false
                local StartMagnet = false
                for _, v in ipairs(game:GetService("Workspace").NPC.Fight:GetDescendants()) do
                    if v.Name == Mon and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        StartMagnet = true
                        if string.find(game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text, NameQuest) then
                            repeat task.wait()
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 10 then
                                    _G.FastAttack = true
                                    EquipWeapon(WeaponFarm)
                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                else
                                    _G.FastAttack = false
                                end
                            until not _G.Settings.Main["AutoFarm"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0 or v.Name ~= Mon
                        else
                            _G.FastAttack = false
                            CheckLv()
                                TP(game.Workspace.NPC.Talk[Quest].WorldPivot)
                                game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.NPC.Talk[Quest].WorldPivot.Position).Magnitude <= 10 then
                                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk:FindFirstChild(Quest).Info)
                                end
                        end
                    end
                end
                if not StartMagnet then
                    TPv(game.Workspace.NPC.Talk[Quest].WorldPivot * CFrame.new(0,1,-5))
                    _G.FastAttack = false
                end
            end)
        end
    end
end)



spawn(function()
    while wait() do
        if _G.Settings.Boss["FarmDungeon"] then
            pcall(function()
            CheckDungeon()
                TPv(CFrameMon)
                _G.FastAttack = false
             for _, v in ipairs(game.Workspace.NPC.Fight[Mon1]:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 10 then
                                _G.FastAttack = true
                                EquipWeapon(WeaponFarm)
                                v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                            else
                                _G.FastAttack = false
                            end
                        until not _G.Settings.Boss["FarmDungeon"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Boss["SeaDragon"] then
            pcall(function()
                _G.FastAttack = false
                for _, v in ipairs(game.Workspace.NPC.Fight.SeaDragon:GetChildren()) do
                    if v:FindFirstChild("Sea Dragon") and not v:FindFirstChild("HumanoidRootPart") then
                        TP(v.WorldPivot)
                    end
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat 
                            task.wait()
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 33 then
                                _G.FastAttack = true
                                EquipWeapon(WeaponFarm)
                                v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                            else
                                _G.FastAttack = false
                            end
                        until not _G.Settings.Boss["SeaDragon"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Boss["AutoKey"] then
            pcall(function()
            CheckDungeon()
                TPv(CFrameBoss)
                _G.FastAttack = false
                for _, v in ipairs(game:GetService("Workspace").NPC.Fight:GetDescendants()) do
                    if v.Name == Mon and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 10 then
                                _G.FastAttack = true
                                EquipWeapon(WeaponFarm)
                                v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                            else
                                _G.FastAttack = false
                            end
                        until not _G.Settings.Boss["AutoKey"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0 or v.Name ~= Mon
                    end
                end
            end)
        end
    end
end)

--autoboss
spawn(function()
    while wait() do
        if _G.Settings.Boss["FarmBoss"] and _G.Settings.Boss["QuestBoss"] == true then
            pcall(function()
                CheckBoss()
                if _G.Settings.Boss["SelectBoss"] == "Thunder God" or _G.Settings.Boss["SelectBoss"] == "Guard Captain" then
                    TPv(CFrameMon)
                else
                    TPv(game.Workspace.NPC.Talk[Quest].WorldPivot)
                end
                _G.FastAttack = false
                local StartMagnet = false
                for _, v in ipairs(game.Workspace.NPC.Fight[Mon1]:GetChildren()) do
                    if v.Name == Mon and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        StartMagnet = true
                        if string.find(game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text, NameQuest) then
                            repeat task.wait()
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 10 then
                                    _G.FastAttack = true
                                    EquipWeapon(WeaponFarm)
                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                else
                                    _G.FastAttack = false
                                end
                            until not _G.Settings.Boss["FarmBoss"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0 or v.Name ~= Mon
                        else
                            _G.FastAttack = false
                            CheckBoss()
                            TP(game.Workspace.NPC.Talk[Quest].WorldPivot)
                            game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.NPC.Talk[Quest].WorldPivot.Position).Magnitude <= 10 then
                                game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk:FindFirstChild(Quest).Info)
                            end
                        end
                    end
                end
                if not StartMagnet then
                    TPv(game.Workspace.NPC.Talk[Quest].WorldPivot * CFrame.new(0,1,-5))
                    _G.FastAttack = false
                end
            end)
        end
    end
end)


spawn(function()
    while wait() do
        if _G.Settings.Boss["FarmBoss"] and _G.Settings.Boss["QuestBoss"] == false then
            pcall(function()
                CheckBoss()
                if _G.Settings.Boss["SelectBoss"] == "Thunder God" or _G.Settings.Boss["SelectBoss"] == "Guard Captain" then
                    TPv(CFrameMon)
                else
                    TPv(game.Workspace.NPC.Talk[Quest].WorldPivot)
                end
                _G.FastAttack = false
                local StartMagnet = false
                for _, v in ipairs(game.Workspace.NPC.Fight[Mon1]:GetChildren()) do
                    if v.Name == Mon and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        StartMagnet = true
                        repeat task.wait()
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 10 then
                                _G.FastAttack = true
                                EquipWeapon(WeaponFarm)
                                v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                v.HumanoidRootPart.Transparency = 1
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                            else
                                _G.FastAttack = false
                            end
                        until not _G.Settings.Boss["FarmBoss"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0 or v.Name ~= Mon
                    end
                end
                if not StartMagnet then
                    TPv(game.Workspace.NPC.Talk[Quest].WorldPivot * CFrame.new(0,1,-5))
                    _G.FastAttack = false
                end
            end)
        end
    end
end)


--ken haki quest
spawn(function()
    while wait() do
        if _G.Settings.Main["SelectQuest"] == "Ken Haki [LV 240+]" and _G.Settings.Main["AutoQuest"] then
            pcall(function()
                TPv(CFrame.new(Vector3.new(-7627, 239, -4041)))
                for _, v in ipairs(game.Workspace.NPC.Fight.Croc:GetChildren()) do
                    if v.Name == "Desert King" and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        if string.find(game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text, "Desert King") then
                            repeat task.wait()
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 10 then
                                    _G.FastAttack = true
                                    EquipWeapon(WeaponFarm)
                                    v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                else
                                    _G.FastAttack = false
                                end
                            until not _G.Settings.Main["SelectQuest"] == "Ken Haki [LV 240+]" and _G.Settings.Main["AutoQuest"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0 or v.Name ~= "Desert King"
                        else
                                TP(game.Workspace.NPC.Talk.Fresh.WorldPivot)
                                game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.NPC.Talk.Fresh.WorldPivot.Position).Magnitude <= 5 then
                                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Fresh.Info)
                                end
                        end
                    end
                end
            end)
        end
    end
end)


--buso haki quest
spawn(function()
    while wait() do
        if _G.Settings.Main["SelectQuest"] == "Buso Haki [LV 50+]" and _G.Settings.Main["AutoQuest"] then
            pcall(function()
                if string.find(game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text, "Lost Scroll") then
                    local Stuff = "ArmamentScroll" .. game.Players.LocalPlayer.Name
                    for i, v in pairs(game:GetService("Workspace").QuestStuff.ArmamentScroll:GetDescendants()) do
                        if v:IsA("Model") and v.Name == Stuff then
                            repeat task.wait()
                                TP(v:GetModelCFrame())
                            until v:FindFirstChild("Pages")
                            UnEquipWeapon(WeaponFarm)
                            fireclickdetector(game.Workspace.QuestStuff.ArmamentScroll:FindFirstChild("ArmamentScroll" .. game.Players.LocalPlayer.Name).ClickDetector)
                        end
                    end
                else
                        TP(game.Workspace.NPC.Talk.Alphirex.WorldPivot)
                        game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                            game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Alphirex.Info)
                end
            end)
        end
    end
end)


--gun
spawn(function()
    while wait() do
        if _G.Settings.Main["GunMas"] then
            pcall(function()
                CheckLv()
                TPv(CFrameMon)
                _G.FastAttack = false
                local StartMagnet = false
                for _, v in ipairs(game:GetService("Workspace").NPC.Fight:GetDescendants()) do
                    if v.Name == Mon and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        StartMagnet = true
                        if string.find(game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text, NameQuest) then
                            repeat task.wait()
                                HealthMin = v.Humanoid.MaxHealth * _G.Settings.Config["HealthMon"]/100
                                if v.Humanoid.Health <= HealthMin then
                                    GunHihi = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Items:FindFirstChild("GunItem").Value
                                    EquipWeapon(GunHihi)
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,44,0))
                                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("GunCombat", 0, 0, game:GetService("Players").LocalPlayer.Character[GunHihi.. "M"], v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                else
                                    EquipWeapon(WeaponFarm)
                                    _G.FastAttack = true
                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                end
                                v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                            until not _G.Settings.Main["GunMas"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0 or v.Name ~= Mon
                        else
                            CheckLv()
                                TP(game.Workspace.NPC.Talk[Quest].WorldPivot)
                                game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.NPC.Talk[Quest].WorldPivot.Position).Magnitude <= 10 then
                                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk:FindFirstChild(Quest).Info)
                                end
                        end
                    end
                end
                if not StartMagnet then
                    TPv(game.Workspace.NPC.Talk[Quest].WorldPivot * CFrame.new(0,1,-5))
                    _G.FastAttack = false
                end
            end)
        end
    end
end)

--#spawnskill
spawn(function()
    while wait() do
        if _G.UseSkill then 
            pcall(function()
                _G.FastAttack = false
                if _G.Settings.Config["Z"] then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                    wait(_G.Settings.Config["Hold"])
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                end
                if _G.Settings.Config["X"] then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                    wait(_G.Settings.Config["Hold"])
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                end
                if _G.Settings.Config["C"] then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                    wait(_G.Settings.Config["Hold"])
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                end
                if _G.Settings.Config["V"] then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                    wait(_G.Settings.Config["Hold"])
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                end
            end)
        end
    end
end)

--gunmas
spawn(function()
    while wait() do
        if _G.Settings.Main["FruitMas"] then
            pcall(function()
                CheckLv()
                TPv(CFrameMon)
                _G.FastAttack = false
                local StartMagnet = false
                for _, v in ipairs(game:GetService("Workspace").NPC.Fight:GetDescendants()) do
                    if v.Name == Mon and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        StartMagnet = true
                        if string.find(game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text, NameQuest) then
                            repeat task.wait()
                                HealthMin = v.Humanoid.MaxHealth * _G.Settings.Config["HealthMon"]/100
                                if v.Humanoid.Health <= HealthMin then
                                    Swhihu = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Items.Fruit.Value
                                    EquipWeapon(Swhihu)
                                    _G.UseSkill = true
                                    _G.FastAttack = false
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
                                else
                                    _G.UseSkill = false
                                    EquipWeapon(WeaponFarm)
                                    TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                    _G.FastAttack = true
                                end
                                v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                            until not _G.Settings.Main["FruitMas"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0 or v.Name ~= Mon
                        else
                            CheckLv()
                                TP(game.Workspace.NPC.Talk[Quest].WorldPivot)
                                game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.NPC.Talk[Quest].WorldPivot.Position).Magnitude <= 10 then
                                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk:FindFirstChild(Quest).Info)
                                end
                        end
                    end
                end
                if not StartMagnet then
                    TPv(game.Workspace.NPC.Talk[Quest].WorldPivot * CFrame.new(0,1,-5))
                    _G.FastAttack = false
                end
            end)
        end
    end
end)

--ảuo smoke
spawn(function()
    while wait() do
        if _G.Settings.Boss["SmokeAdmiral"] then
            pcall(function()
                TPv(CFrame.new(Vector3.new(2623, 153, -3303)))
                for _, v in ipairs(game.Workspace.NPC.Fight.WhiteHunter:GetChildren()) do
                    if v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            EquipWeapon(WeaponFarm)
                            _G.FastAttack = true
                            TP(v.HumanoidRootPart.CFrame * MethodFarm)
                            v.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                        until not _G.Settings.Boss["SmokeAdmiral"] or not v.Parent or not humanoidRootPart or humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)


--stat
spawn(function()
    while wait(1) do
        if _G.Settings.Teleport["AutoStat"] then
            pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(2, _G.Settings.Teleport["SelectStt1"])
                    game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(2, _G.Settings.Teleport["SelectStt2"])
            end)
        end
    end
end)

--auto ken
spawn(function()
    while wait() do
        if _G.Settings.Config["KenHaki"] and Dataz.KenHaki.Value == true then
            pcall(function()
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game)
                wait(5)
            end)
        end
    end
end)

--auto buso
spawn(function()
    while wait() do
        if _G.Settings.Config["BusoHaki"] then
            pcall(function()
                if not game.Players.LocalPlayer.Character:FindFirstChild("Armament") and Dataz.Armament.Value == true then
                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("Armament", 0, true)
                end
            end)
        end
    end
end)

--chéy
spawn(function()
    while wait() do
        if _G.Settings.Teleport["AutoChest"] then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").ChestSpawns:GetDescendants()) do
                    if _G.Settings.Teleport["AutoChest"] and v:IsA("Model") and v.Name == "Chest"  then
                        repeat task.wait()
                            if _G.Settings.Teleport["ModeChest"] == "Fast" then
                            FTP(v:GetModelCFrame() * CFrame.new(0,5,0))
                            wait(.1)
                            elseif _G.Settings.Teleport["ModeChest"] == "Slow" then
                                TP(v:GetModelCFrame())
                                wait(.5)
                            end
                        until v:FindFirstChild("PressPart")
                        UnEquipWeapon(WeaponFarm)
                        fireclickdetector(v.PressPart.ClickDetector)
                    end
                end
            end)
        end
    end
end)

--fruit
spawn(function()
    while wait() do
        if _G.Settings.Shop["TPFruit"] then
            pcall(function()
                for i, v in pairs(game.Workspace:GetChildren()) do
                    if v:FindFirstChild("Handle") then
                        FTP(v.Handle.CFrame)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Boss["Lucius"] then
            if game.Workspace.NPC.Talk:FindFirstChild("Lucius") then
                game:GetService("ReplicatedStorage").Remotes.GlobalEventsRemotes:FireServer("Lucius")
            end
        end
    end
end)


--shopfr
spawn(function()
    while wait() do
        if _G.Settings.Shop["ShopFr"] then
            pcall(function()
                TP(game.Workspace.NPC.Talk["Demon Fruit Shop"].WorldPivot)
            end)
        end
    end
end)

--aitoramdom
spawn(function()
    while wait() do
        if _G.Settings.Shop["Ramdom"] then
            pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.ToServer.GachaR:FireServer()
                    wait(120)
            end)
        end
    end
end)

--atuo store
spawn(function()
    while wait(1) do
        if _G.Settings.Shop["StoreFruit"] then
            pcall(function()
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:FindFirstChild("Handle") then
                        EquipWeapon(v.Name)
                        game:GetService("ReplicatedStorage").Remotes.ToServer.StoreR:InvokeServer(game:GetService("Players").LocalPlayer.Character[v.Name], true)
                        wait(1)
                    end
                end
            end)
        end
    end
end)

--tp
spawn(function()
    while wait() do
        if _G.Settings.Teleport["TP"] then
            pcall(function()
            CheckIsland()
                TP(game.Workspace.NPC.Talk[Quest].WorldPivot)
            end)
        end
    end
end)

--buyit
spawn(function()
    while wait() do
        if _G.Settings.Shop["BuyIt"] then
            pcall(function()
                local STB = _G.Settings.Shop["SelectItem"]
                if STB == "Black Leg [150K+]" then
                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Sanji.Info)
                elseif STB == "Electro Claw [ 200K+]" then
                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Carrot.Info)
                elseif STB == "Observation Haki [ 200K+]" then
                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Fresh.Info)
                elseif STB == "Shop Sword" then
                    TP(game.Workspace.NPC.Talk["Sword Collector"].WorldPivot)
                elseif STB == "Shop Gun" then
                    TP(game.Workspace.NPC.Talk["Gun Merchant"].WorldPivot)
                elseif STB == "Sky Jump [ 20K+]" then
                    game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Ted.Info)
                elseif STB == "Blast Cannon [ 250K+]" then
                    TP(game.Workspace.NPC.Talk.Wyper.WorldPivot)
                end
            end)
        end
    end
end)



local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/Fluent.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ELGATO HUB | ".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    SubTitle = "| VERSION 2.1",
    TabWidth = 90,
    Size = UDim2.fromOffset(380, 280),
    Acrylic = false,
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.F15
})
--   Dark   Light  Aqua Amethyst
local Tabs = {
    MainTab = Window:AddTab({ Title = "Farm/Main", Icon = "rbxassetid://17515562390" }),
    BossTab = Window:AddTab({ Title = "Dung/Raid", Icon = "rbxassetid://17865318408" }),
    TeleTab = Window:AddTab({ Title = "Teleport/St", Icon = "rbxassetid://17515564541" }),
    ShopTab = Window:AddTab({ Title = "Shop/Fruits", Icon = "rbxassetid://17515567851" }),
    SetTab = Window:AddTab({ Title = "Set/Config", Icon = "rbxassetid://17515573706" }),
    WebTab = Window:AddTab({ Title = "Web/JobId", Icon = "rbxassetid://17542645732" }),
}

function Notify(v)
    Fluent:Notify({
        Title = "Elgato Hub",
        Content = v,
        Duration = 8
    })
end
Notify("The Script Has Been Loaded")

--maintab
  Tabs.MainTab:AddParagraph({
    Title = "Auto Farm",
    Content = "Auto Farm Max Level"
})

Tabs.MainTab:AddToggle("", {Title = "Auto Farm Level", Default = _G.Settings.Main["AutoFarm"] }):OnChanged(function(va)
    _G.Settings.Main["AutoFarm"] = va
    StopTween(va)
    SaveSettings()
end)

local stt = Tabs.MainTab:AddParagraph({
    Title = "Status:",
    Content = ""
})

spawn(function()
    while wait(0.1) do
        CheckLv()
        stt:SetTitle("Quest: " ..NameQuest)
    end
end)

  Tabs.MainTab:AddParagraph({
    Title = "Auto Farm Mastery",
    Content = "Auto Farm Max Mastery"
})

Tabs.MainTab:AddToggle("", {Title = "Auto Gun Mastery", Default = _G.Settings.Main["GunMas"] }):OnChanged(function(va)
    _G.Settings.Main["GunMas"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.MainTab:AddToggle("", {Title = "Auto Fruit Mastery", Default = _G.Settings.Main["FruitMas"] }):OnChanged(function(va)
    _G.Settings.Main["FruitMas"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.MainTab:AddParagraph({
    Title = "Quest",
    Content = "Auto Quest Ken,Buso Haki"
})

local QuestNames = {
    "Buso Haki [LV 50+]",
    "Ken Haki [LV 240+]",
}

local SelectQuestv = Tabs.MainTab:AddDropdown("Dropdown", {
    Title = "Quest",
    Values = QuestNames,
    Default = _G.Settings.Main["SelectQuest"],
})

SelectQuestv:OnChanged(function(va)
    _G.Settings.Main["SelectQuest"] = va
    SaveSettings()
end)


Tabs.MainTab:AddToggle("", {Title = "Auto Quest", Default = _G.Settings.Main["AutoQuest"] }):OnChanged(function(va)
    _G.Settings.Main["AutoQuest"] = va
    StopTween(va)
    SaveSettings()
end)

--boss tab

Tabs.BossTab:AddParagraph({
    Title = "Auto Boss",
    Content = "Only Farm Boss is Selected"
})

local BossNames = {
    "Bandit Leader",
    "Devious Reiner",
    "Buggy Nigger",
    "King Gorilla",
    "Sand Dragon",
    "Desert King",
    "Arlong BigDick",
    "Guard Captain",
    "Thunder God",
    "The Bomber",
    "Chief Warden",
    "Ice King",
    "White Titan"
}

local SelectBossv = Tabs.BossTab:AddDropdown("Dropdown", {
    Title = "Boss",
    Values = BossNames,
    Default = _G.Settings.Boss["SelectBoss"],
})

SelectBossv:OnChanged(function(va)
    _G.Settings.Boss["SelectBoss"] = va
    SaveSettings()
end)


Tabs.BossTab:AddToggle("", {Title = "Auto Farm Boss", Default = _G.Settings.Boss["FarmBoss"] }):OnChanged(function(va)
    _G.Settings.Boss["FarmBoss"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.BossTab:AddToggle("", {Title = "Auto Quest (Boss)", Default = _G.Settings.Boss["QuestBoss"] }):OnChanged(function(va)
    _G.Settings.Boss["QuestBoss"] = va
    SaveSettings()
end)

Tabs.BossTab:AddParagraph({
    Title = "Kill Aura Boss",
    Content = ""
})

Tabs.BossTab:AddInput("Input", {
    Title = "Name",
    Default = _G.Settings.Boss["NameBoss"],
    Placeholder = "PUT NAME BOSS",
    Numeric = false,
    Finished = false,
    Callback = function(va)
        _G.Settings.Boss["NameBoss"] = va
    end
})

spawn(function()
    while wait() do
        if _G.Settings.Boss["NameBoss"] then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").NPC.Fight:GetDescendants()) do
                    if v.Name == _G.Settings.Boss["NameBoss"] and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health < v.Humanoid.MaxHealth then
                        v.Humanoid.Health = 0
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end)
        end
    end
end)

Tabs.BossTab:AddToggle("", {Title = "Kill Aura Boss", Default = _G.Settings.Boss["KillAura"] }):OnChanged(function(va)
    _G.Settings.Boss["KillAura"] = va
    SaveSettings()
end)


Tabs.BossTab:AddParagraph({
    Title = "Auto Dungeon",
    Content = "Auto Farm All Mon"
})

local Namex = {
    "Starvation Prison",
    "Blazing Prison",
    "Freezing Prison",
    "Eternal Prison"
}

local SelectMonv = Tabs.BossTab:AddDropdown("Dropdown", {
    Title = "Level",
    Values = Namex,
    Default = _G.Settings.Boss["SelectDungeon"],
})

SelectMonv:OnChanged(function(va)
    _G.Settings.Boss["SelectDungeon"] = va
    SaveSettings()
end)


Tabs.BossTab:AddToggle("", {Title = "Farm All Mon Dungeon", Default = _G.Settings.Boss["FarmDungeon"] }):OnChanged(function(va)
    _G.Settings.Boss["FarmDungeon"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.BossTab:AddToggle("", {Title = " Farm Boss Dungeon", Default = _G.Settings.Boss["AutoKey"] }):OnChanged(function(va)
    _G.Settings.Boss["AutoKey"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.BossTab:AddButton({
    Title = "TP To Dungeon Select",
    Description = "",
    Callback = function()
       local xcv = _G.Settings.Boss["SelectDungeon"]
       if xcv == "Blazing Prison" then
        FTP(CFrame.new(Vector3.new(23735, 12274, -5095)))

        elseif xcv == "Freezing Prison" then
        FTP(CFrame.new(Vector3.new(-35963,6169,-16913)))

        elseif xcv == "Starvation Prison" then
        FTP(CFrame.new(Vector3.new(-3732,6169,-17111)))
        
        elseif xcv == "Eternal Prison" then
        FTP(CFrame.new(Vector3.new(22930,12274,-4038)))
       end
    end
})

Tabs.BossTab:AddParagraph({
    Title = "Raid Boss",
    Content = "Auto Farm Boss Raid"
})

Tabs.BossTab:AddToggle("", {Title = "Farm Smoke Admiral", Default = _G.Settings.Boss["SmokeAdmiral"] }):OnChanged(function(va)
    _G.Settings.Boss["SmokeAdmiral"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.BossTab:AddToggle("", {Title = "Farm Sea Dragon (IDK)", Default = _G.Settings.Boss["SeaDragon"] }):OnChanged(function(va)
    _G.Settings.Boss["SeaDragon"] = va
    StopTween(va)
    SaveSettings()
end)


Tabs.BossTab:AddParagraph({
    Title = "Auto Lucius",
    Content = "Auto Talk Lucius"
})

Tabs.BossTab:AddToggle("", {Title = "Auto Talk Lucius", Default = _G.Settings.Boss["Lucius"] }):OnChanged(function(va)
    _G.Settings.Boss["Lucius"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.BossTab:AddButton({
    Title = "Check Lucius (In Map)",
    Description = "",
    Callback = function()
        if game.Workspace.NPC.Talk:FindFirstChild("Lucius") then
                Notify("Found ✅")
                else
                Notify("Found ❎")
            end
    end
})

--teletab

Tabs.TeleTab:AddParagraph({
    Title = "Teleport",
    Content = "Teleport To The Location You Choose"
})


local MapNames = {
    "Windmill Village",
    "Shells Town",
    "Orange Town",
    "Logue Town",
    "Jungle",
    "Baratie",
    "Sandora",
    "Arlong Park",
    "Skypiea Island",
    "Colosseum Island",
    "Cactus Island",
    "Indomitable Fortress",
    "Ice Prisioners",
    "MarineFord"
}

local SelectMapv = Tabs.TeleTab:AddDropdown("Dropdown", {
    Title = "TP Map",
    Values = MapNames,
    Default = _G.Settings.Teleport["SelectMap"],
})

SelectMapv:OnChanged(function(va)
    _G.Settings.Teleport["SelectMap"] = va
    SaveSettings()
end)

Tabs.TeleTab:AddToggle("", {Title = "Teleport", Default = _G.Settings.Teleport["TP"] }):OnChanged(function(va)
    _G.Settings.Teleport["TP"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.TeleTab:AddParagraph({
    Title = "Auto Chest",
    Content = "Auto TP All Chest In Game"
})

local xcxv = {
    "Fast",
    "Slow"
}

local SelectMapv = Tabs.TeleTab:AddDropdown("Dropdown", {
    Title = "Mode TP",
    Values = xcxv,
    Default = _G.Settings.Teleport["ModeChest"],
})

SelectMapv:OnChanged(function(va)
    _G.Settings.Teleport["ModeChest"] = va
    SaveSettings()
end)

Tabs.TeleTab:AddToggle("hihi", {Title = "TP Chest", Default = _G.Settings.Teleport["AutoChest"] }):OnChanged(function(va)
    _G.Settings.Teleport["AutoChest"] = va
    StopTween(va)
    SaveSettings()
end)

--TeleTab
Tabs.TeleTab:AddParagraph({
    Title = "Auto Stat",
    Content = ""
})

local StatNames = {
    "Strength",
    "Defense",
    "Demon Fruit",
    "Sword",
    "Gun",
}

local SelectStt1v = Tabs.TeleTab:AddDropdown("Dropdown", {
    Title = "Stat 1",
    Values = StatNames,
    Default = _G.Settings.Teleport["SelectStt1"],
})

SelectStt1v:OnChanged(function(va)
    _G.Settings.Teleport["SelectStt1"] = va
    SaveSettings()
end)

local SelectStt2v = Tabs.TeleTab:AddDropdown("Dropdown", {
    Title = "Stat 2",
    Values = StatNames,
    Default = _G.Settings.Teleport["SelectStt2"],
})

SelectStt2v:OnChanged(function(va)
    _G.Settings.Teleport["SelectStt2"] = va
    SaveSettings()
end)

Tabs.TeleTab:AddToggle("", {Title = "Auto Stat", Default = _G.Settings.Teleport["AutoStat"] }):OnChanged(function(va)
    _G.Settings.Teleport["AutoStat"] = va
    SaveSettings()
end)

--shoptab
Tabs.ShopTab:AddParagraph({
    Title = "Shop Items",
    Content = "Auto Buy Selected Items"
})

local ItemName = {
    "Shop Gun",
    "Shop Sword",
    "Sky Jump [ 20K+]" ,
    "Black Leg [150K+]",
    "Electro Claw [ 200K+]",
    "Observation Haki [ 200K+]",
    "Blast Cannon [ 250K+]",
}

local SelectMapv = Tabs.ShopTab:AddDropdown("Dropdown", {
    Title = "Items",
    Values = ItemName,
    Default = _G.Settings.Shop["SelectItem"],
})

SelectMapv:OnChanged(function(va)
    _G.Settings.Shop["SelectItem"] = va
    SaveSettings()
end)

Tabs.ShopTab:AddToggle("", {Title = "Buy Item", Default = _G.Settings.Shop["BuyIt"] }):OnChanged(function(va)
    _G.Settings.Shop["BuyIt"] = va
    StopTween(va)
    SaveSettings()
end)


Tabs.ShopTab:AddParagraph({
    Title = "Fruit Tab",
    Content = "Only For Fruit"
})

Tabs.ShopTab:AddToggle("", {Title = "TP Fruit Near", Default = _G.Settings.Shop["TPFruit"] }):OnChanged(function(va)
    _G.Settings.Shop["TPFruit"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.ShopTab:AddToggle("", {Title = "Store All Fruit", Default = _G.Settings.Shop["StoreFruit"] }):OnChanged(function(va)
    _G.Settings.Shop["StoreFruit"] = va
    SaveSettings()
end)

Tabs.ShopTab:AddToggle("", {Title = "TP Shop Fruit", Default = _G.Settings.Shop["ShopFr"] }):OnChanged(function(va)
    _G.Settings.Shop["ShopFr"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.ShopTab:AddToggle("", {Title = "Auto Ramdom Fruit", Default = _G.Settings.Shop["Ramdom"] }):OnChanged(function(va)
    _G.Settings.Shop["Ramdom"] = va
    SaveSettings()
end)

Tabs.ShopTab:AddButton({
    Title = "Ramdom Fruit",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.ToServer.GachaR:FireServer()
    end
})

Tabs.ShopTab:AddParagraph({
    Title = "Misc Tab",
    Content = "Some Functions"
})

Tabs.ShopTab:AddButton({
    Title = "Rejoin Server",
    Description = "",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end
})

Tabs.ShopTab:AddButton({
    Title = "Hop Server",
    Description = "",
    Callback = function()
        hop()
    end
})

Tabs.ShopTab:AddButton({
    Title = "Boost FPS",
    Description = "",
    Callback = function()
        loadstring(Game:HttpGet("https://raw.githubusercontent.com/EnverstNgau/NewFreeScript/main/Misc/SuperFpsBoost.lua"))()
    end
})

--settings

Tabs.SetTab:AddParagraph({
    Title = "Setting Auto Farm",
    Content = ""
})

local SelectWeaponv = Tabs.SetTab:AddDropdown("Dropdown", {
    Title = "Weapon",
    Values = {"Melee", "Sword", "Fruit"},
    Default = _G.Settings.Config["SelectWeapon"],
})

SelectWeaponv:OnChanged(function(va)
    _G.Settings.Config["SelectWeapon"] = va
    SaveSettings()
end)

local SelectMethodv = Tabs.SetTab:AddDropdown("Dropdown", {
    Title = "Method",
    Values = {"Behind", "Below", "Upper"},
    Default = _G.Settings.Config["SelectMethod"],
})

SelectMethodv:OnChanged(function(va)
    _G.Settings.Config["SelectMethod"] = va
    SaveSettings()
end)

Tabs.SetTab:AddSlider("", {
    Title = "Distance",
    Description = "",
    Default = _G.Settings.Config["DistanceMon"],
    Min = 0,
    Max = 15,
    Rounding = 1,
    Callback = function(va)
        _G.Settings.Config["DistanceMon"] = va
        SaveSettings()
    end
})

Tabs.SetTab:AddSlider("", {
    Title = "Health",
    Description = "",
    Default = _G.Settings.Config["HealthMon"],
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(va)
        _G.Settings.Config["HealthMon"] = va
        SaveSettings()
    end
})

Tabs.SetTab:AddToggle("", {Title = "Buso Haki", Default = _G.Settings.Config["BusoHaki"] }):OnChanged(function(va)
    _G.Settings.Config["BusoHaki"] = va
    SaveSettings()
end)

Tabs.SetTab:AddToggle("", {Title = "Ken Haki", Default = _G.Settings.Config["KenHaki"] }):OnChanged(function(va)
    _G.Settings.Config["KenHaki"] = va
    SaveSettings()
end)

Tabs.SetTab:AddParagraph({
    Title = "Auto Skill",
    Content = ""
})

Tabs.SetTab:AddSlider("", {
    Title = "Hold",
    Description = "",
    Default = _G.Settings.Config["Hold"],
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(va)
        _G.Settings.Config["Hold"] = va
        SaveSettings()
    end
})

Tabs.SetTab:AddToggle("", {Title = "Skill Z", Default = _G.Settings.Config["Z"] }):OnChanged(function(va)
    _G.Settings.Config["Z"] = va
    SaveSettings()
end)

Tabs.SetTab:AddToggle("", {Title = "Skill X", Default = _G.Settings.Config["X"] }):OnChanged(function(va)
    _G.Settings.Config["X"] = va
    SaveSettings()
end)

Tabs.SetTab:AddToggle("", {Title = "Skill C", Default = _G.Settings.Config["C"] }):OnChanged(function(va)
    _G.Settings.Config["C"] = va
    SaveSettings()
end)

Tabs.SetTab:AddToggle("", {Title = "Skill V", Default = _G.Settings.Config["V"] }):OnChanged(function(va)
    _G.Settings.Config["V"] = va
    SaveSettings()
end)

Tabs.SetTab:AddParagraph({
    Title = "Sound Map",
    Content = ""
})

Tabs.SetTab:AddInput("Input", {
    Title = "Sound Id",
    Default = _G.Settings.Config["IdS"],
    Placeholder = "PUT YOUR SOUND ID",
    Numeric = false,
    Finished = false,
    Callback = function(va)
        _G.Settings.Config["IdS"] = va
        SaveSettings()
    end
})

Tabs.SetTab:AddSlider("", {
    Title = "Volume",
    Description = "",
    Default = _G.Settings.Config["Volume"],
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(va)
        _G.Settings.Config["Volume"] = va
        SaveSettings()
    end
})

Tabs.SetTab:AddButton({
    Title = "Change Sound",
    Description = "",
    Callback = function()
        for _, music in ipairs(game.Workspace.Music:GetChildren()) do
                music.SoundId = _G.Settings.Config["IdS"]
                music.Volume = _G.Settings.Config["Volume"]
        end
    end
})

Tabs.SetTab:AddParagraph({
    Title = "Dangerous Zone",
    Content = ""
})
 
 Tabs.SetTab:AddButton({
    Title = "Delete Config (Player)",
    Description = "",
    Callback = function()
        delfile("ElgatoHub/".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.. "/".. game.Players.LocalPlayer.Name.. ".json")
    end
})

Tabs.SetTab:AddButton({
    Title = "Delete Config (All)",
    Description = "",
    Callback = function()
        delfile("ElgatoHub/".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.. ".json")
    end
})
 
 --webhooks
 
 Tabs.WebTab:AddParagraph({
    Title = "Webhook Tab",
    Content = ""
})

Tabs.WebTab:AddInput("Input", {
    Title = "API BOT",
    Default = _G.Settings.Web["Api"],
    Placeholder = "PUT YOUR API BOT",
    Numeric = false,
    Finished = false,
    Callback = function(va)
        _G.Settings.Web["Api"] = va
        SaveSettings()
    end
})

local HttpService = game:GetService("HttpService")
local Dataz = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId]
local Datav = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Items


local function SendWebhook()
    local url = _G.Settings.Web["Api"]
    local data = {
        ["embeds"] = {
            {
                ["avatar_url"] = "",
                ["color"] = tonumber(0xe8b58a),
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "NAME: ||" .. game.Players.LocalPlayer.Name .. "||",
                        ["value"] = "",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "LEVELS: " .. tostring(Dataz.Level.Value),
                        ["value"] = "",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "BELIS: " .. tostring(Dataz.Beli.Value),
                        ["value"] = "",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "MELEE: " .. tostring(Datav["Fighting Style"].Value),
                        ["value"] = "",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "SWORD: " .. tostring(Datav.Swords.Value),
                        ["value"] = "",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "GUN: " .. tostring(Datav.GunItem.Value),
                        ["value"] = "",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "FRUIT: " .. tostring(Datav.Fruit.Value),
                        ["value"] = "",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Melee: " .. tostring(Dataz.Strength.Value) .. " | Health: " .. tostring(Dataz.Sword.Value) .. " | Sword: " .. tostring(Dataz.Sword.Value),
                        ["value"] = "",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Fruit: " .. tostring(Dataz["Demon Fruit"].Value) .. " | Gun: " .. tostring(Dataz.Gun.Value) .. " | Point: " .. tostring(Dataz.StatPoints.Value),
                        ["value"] = "",
                        ["inline"] = false
                    },
                }
            }
        }
    }

    if Dataz.Armament.Value == true then
        table.insert(data["embeds"][1]["fields"], {
            ["name"] = "BUSO HAKI: ✅",
            ["value"] = "",
            ["inline"] = false
        })
    else
        table.insert(data["embeds"][1]["fields"], {
            ["name"] = "BUSO HAKI: ❎",
            ["value"] = "",
            ["inline"] = false
        })
    end

    if Dataz.KenHaki.Value == true then
        table.insert(data["embeds"][1]["fields"], {
            ["name"] = "KEN HAKI: ✅",
            ["value"] = "",
            ["inline"] = false
        })
    else
        table.insert(data["embeds"][1]["fields"], {
            ["name"] = "KEN HAKI: ❎",
            ["value"] = "",
            ["inline"] = false
        })
    end

    if Dataz.Geppo.Value == true then
        table.insert(data["embeds"][1]["fields"], {
            ["name"] = "GEPPO: ✅",
            ["value"] = "",
            ["inline"] = false
        })
    else
        table.insert(data["embeds"][1]["fields"], {
            ["name"] = "GEPPO: ❎",
            ["value"] = "",
            ["inline"] = false
        })
    end
    
    if Dataz.Soru.Value == true then
        table.insert(data["embeds"][1]["fields"], {
            ["name"] = "SORU: ✅",
            ["value"] = "",
            ["inline"] = false
        })
    else
        table.insert(data["embeds"][1]["fields"], {
            ["name"] = "SORU: ❎",
            ["value"] = "",
            ["inline"] = false
        })
    end

    data["embeds"][1]["footer"] = {
        ["text"] = "webhooks made by .tranvanbaodeptrai"
    }

    local newdata = HttpService:JSONEncode(data)
    local headers = {["content-type"]= "application/json"}
    local requestFunction = http_request or request or HttpPost or syn.request
    if requestFunction then
        local abcdef = {Url = url,Body = newdata, Method = "POST", Headers = headers}
        requestFunction(abcdef)
        Notify("Send Webhook Completed")
    else
Notify("Send Webhook Not Completed")
    end
end

spawn(function()
    while wait() do
        if _G.Settings.Web["Webhook"] then
            pcall(function()
           SendWebhook()
             wait(60)
            end)
        end
    end
end)

Tabs.WebTab:AddToggle("", {Title = "Send Webhook", Default = _G.Settings.Web["Webhook"] }):OnChanged(function(va)
    _G.Settings.Web["Webhook"] = va
    SaveSettings()
end)

--misctab

Tabs.WebTab:AddParagraph({
    Title = "JobId Tab",
    Content = "JobId Game"
})

Tabs.WebTab:AddInput("Input", {
    Title = "JOBID",
    Default = "",
    Placeholder = "PUT YOUR JOBID",
    Numeric = false,
    Finished = false,
    Callback = function(va)
        _G.Settings.Web["JobId"] = va
    end
})

Tabs.WebTab:AddButton({
    Title = "Join JobId",
    Description = "",
    Callback = function()
        print(game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _G.Settings.Web["JobId"]))
    end
})

Tabs.WebTab:AddButton({
    Title = "Coppy JobId",
    Description = "",
    Callback = function()
        setclipboard(game.JobId)
    end
})

else
print("❎ " ..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
wait(1)
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/Scare.lua"))()
   end
   end
   
   local GuiHi = game.Players.LocalPlayer.PlayerGui
if GuiHi:FindFirstChild("TeamPick") then
    game:GetService("ReplicatedStorage").Remotes.Start:FireServer(game:GetService("Teams").Pirates)
    GuiHi.TeamPick:Destroy()
end

--anti afk
local VirtualUser = game:GetService("VirtualUser")
local character = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/TurtleUI.lua"))()
local Links = 'ElgatoHub'
local SavedKeyPath = "ELGATO HUB/SavedKey.txt"
local KeyLibrary = KeyLibrary or loadstring(game:HttpGet('https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/setup_obf.lua'))()
local KeySystem = KeyLibrary.new(Links)
AuthType = "ip"
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/Fluent.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ELGATO HUB | KEY SYSTEM",
    SubTitle = "by tvbcutodz",
    TabWidth = 65,
    Size = UDim2.fromOffset(299, 250),
    Acrylic = false,
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.F15
})
local Tabs = {
    Main = Window:AddTab({ Title = "Home", Icon = "rbxassetid://17542643869" }),
}

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