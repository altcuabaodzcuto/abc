_G.Settings = {
    Main = {
        ["AutoFarm"] = false,
        ["AutoLava"] = false,
    },
    Boss = {
        ["RaidFarm"] = false,
        ["AutoLordSus"] = false,
    },
    Teleport = {
        ["SelectMap"] = "",
        ["SelectStat"] = "",
        ["AutoStat"] = false,
    },
    Config = {
        ["AutoSkill"] = true,
        ["BringMob"] = true,
        ["SelectSkill"] = "Z",
    	["SelectWeapon"] = "Melee",
        ["SelectMethod"] = "Upper",
        ["DistanceMon"] = 9,
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

function CheckLv()
    MyLevel = game.Players.LocalPlayer.PlayerData.Level.Value
    if MyLevel == 1 or MyLevel <= 49 then
        Mon = "Floppa"
        Quest = "Floppa Quest 1"
        
        elseif MyLevel == 50 or MyLevel <= 99 then
        Mon = "Golden Floppa"
        Quest = "Floppa Quest 2"
        
        elseif MyLevel == 100 or MyLevel <= 149 then
        Mon = "Big Floppa"
        Quest = "Floppa Quest 3"
        
        elseif MyLevel == 150 or MyLevel <= 199 then
        Mon = "Doge"
        Quest = "Floppa Quest 4"
        
        elseif MyLevel == 200 or MyLevel <= 249 then
        Mon = "Cheems"
        Quest = "Floppa Quest 5"
        
        elseif MyLevel == 250 or MyLevel <= 299 then
        Mon = "Walter Dog"
        Quest = "Floppa Quest 6"
        
        elseif MyLevel == 300 or MyLevel <= 349 then
        Mon = "Staring Fish"
        Quest = "Floppa Quest 7"
        
        elseif MyLevel == 350 or MyLevel <= 399 then
        Mon = "Hamster"
        Quest = "Floppa Quest 8"
        
        elseif MyLevel == 400 or MyLevel <= 449 then
        Mon = "Snow Tree"
        Quest = "Floppa Quest 9"
        
        elseif MyLevel == 450 or MyLevel <= 499 then
        Mon = "The Rock"
        Quest = "Floppa Quest 10"
        
        elseif MyLevel == 500 or MyLevel <= 549 then
        Mon = "Banana Cat"
        Quest = "Floppa Quest 11"
        
        elseif MyLevel == 550 or MyLevel <= 599 then
        Mon = "Sus Face"
        Quest = "Floppa Quest 12"
        
        elseif MyLevel == 600 or MyLevel <= 649 then
        Mon = "Egg Dog"
        Quest = "Floppa Quest 13"
        
        elseif MyLevel == 650 or MyLevel <= 699 then
        Mon = "Popcat"
        Quest = "Floppa Quest 14"
        
        elseif MyLevel == 700 or MyLevel <= 749 then
        Mon = "Gorilla King"
        Quest = "Floppa Quest 15"
        
        elseif MyLevel == 750 or MyLevel <= 799 then
        Mon = "Smiling Cat"
        Quest = "Floppa Quest 16"
        
        elseif MyLevel == 800 or MyLevel <= 849 then
        Mon = "Killerfish"
        Quest = "Floppa Quest 17"
        
        elseif MyLevel == 850 or MyLevel <= 899 then
        Mon = "Bingus"
        Quest = "Floppa Quest 18"
        
        elseif MyLevel == 900 or MyLevel <= 949 then
        Mon = "Obamid"
        Quest = "Floppa Quest 19"
        
        elseif MyLevel == 950 or MyLevel <= 999 then
        Mon = "Floppy"
        Quest = "Floppa Quest 20"
        
        elseif MyLevel == 1000 or MyLevel <= 1049 then
        Mon = "Creepy Head"
        Quest = "Floppa Quest 21"
        
        elseif MyLevel == 1050 or MyLevel <= 1149 then
        Mon = "Scary Skull"
        Quest = "Floppa Quest 22"
        
        elseif MyLevel == 1150 or MyLevel <= 1199 then
        Mon = "Pink Absorber"
        Quest = "Floppa Quest 24"
        
        elseif MyLevel == 1200 or MyLevel <= 1249 then
        Mon = "Troll Face"
        Quest = "Floppa Quest 25"
                
        elseif MyLevel == 1250 or MyLevel <= 1299 then
        Mon = "Uncanny Cat"
        Quest = "Floppa Quest 26"
        
        elseif MyLevel == 1300 or MyLevel <= 1349 then
        Mon = "Quandale Dingle"
        Quest = "Floppa Quest 27"
        
        elseif MyLevel == 1350 or MyLevel <= 1449 then
        Mon = "Moai"
        Quest = "Floppa Quest 28"
        
        elseif MyLevel == 1450 or MyLevel <= 1499 then
        Mon = "Red Sus"
        Quest = "Floppa Quest 30"
        
        elseif MyLevel == 1500 or MyLevel <= 1699 then
        Mon = "Sus Duck"
        Quest = "Floppa Quest 31"
        
        elseif MyLevel == 1700 or MyLevel <= 1749 then
        Mon = "Sigma Man"
        Quest = "Floppa Quest 33"
        
        elseif MyLevel == 1750 or MyLevel <= 1799 then
        Mon = "Dancing Cat"
        Quest = "Floppa Quest 34"
        
        elseif MyLevel == 1800 or MyLevel <= 1849 then
        Mon = "Toothless Dragon"
        Quest = "Floppa Quest 35"
        
        elseif MyLevel == 1850 or MyLevel <= 1899 then
        Mon = "Manly Nugget"
        Quest = "Floppa Quest 36"
        
        elseif MyLevel == 1900 or MyLevel <= 1949 then
        Mon = "Huh Cat"
        Quest = "Floppa Quest 37"
        
        elseif MyLevel == 1950 or MyLevel <= 1999 then
        Mon = "Mystical Tree"
        Quest = "Floppa Quest 38"
        
        elseif MyLevel == 2000 or MyLevel <= 2049 then
        Mon = "Old Man"
        Quest = "Floppa Quest 39"
        
        elseif MyLevel == 2050 or MyLevel <= 2099 then
        Mon = "Nyan Cat"
        Quest = "Floppa Quest 40"
        
        elseif MyLevel == 2100 or MyLevel <= 2149 then
        Mon = "Baller"
        Quest = "Floppa Quest 41"
        
        elseif MyLevel == 2150 or MyLevel <= 2199 then
        Mon = "Slicer"
        Quest = "Floppa Quest 42"
        
        elseif MyLevel == 2200 or MyLevel <= 2249 then
        Mon = "Rick Roller"
        Quest = "Floppa Quest 43"
        
        elseif MyLevel == 2250 or MyLevel <= 2299 then
        Mon = "Gigachad"
        Quest = "Floppa Quest 44"
        
        elseif MyLevel == 2300 or MyLevel <= 2349 then
        Mon = "MrBeast"
        Quest = "Floppa Quest 45"
        
        elseif MyLevel >= 2350 then
        Mon = "Handsome Man"
        Quest = "Floppa Quest 46"
    end
end


--stoptween
function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        local character = game:GetService("Players").LocalPlayer.Character
        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Settings.Main["AutoFarm"] or _G.Settings.Boss["AutoLordSus"] or _G.Settings.Main["AutoLava"] then
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local humanoidRootPart = character.HumanoidRootPart
                    if not humanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = humanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                end
            else
                _G.AutoSkill = false
            end
        end)
    end)
end)

--taopart
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Settings.Main["AutoFarm"] or _G.Settings.Boss["AutoLordSus"] or _G.Settings.Main["AutoLava"] or _G.Settings.Boss["RaidKillAura"] or _G.Settings.Boss["RaidFarm"] then
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
            local playerData = game.Players.LocalPlayer.PlayerData
            local CacLo1 = _G.Settings.Config["SelectWeapon"]
            if CacLo1 == "Melee" then
                WeaponFarm = playerData.CombatEquip.Value
            elseif CacLo1 == "Sword" then
                WeaponFarm = playerData.SwordEquip.Value
            elseif CacLo1 == "Power" then
                WeaponFarm = playerData.PowerEquip.Value
            end
        end)
    end
end)


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

function TP(Pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end

function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
    if _G.Settings.Config["AutoSkill"] then
    _G.AutoSkill = true
    else
    _G.AutoSkill = false
    end
end

function SkillDown(va)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, va, false, game)
end


function SkillUp(va)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, va, false, game)
end

local function useSkill(key)
    SkillDown(key)
    wait(.3)
    SkillUp(key)
end


spawn(function()
    while wait() do
        if _G.AutoSkill then
                if _G.Settings.Config["SelectSkill"] == "Z" then
                    useSkill("Z")
                elseif _G.Settings.Config["SelectSkill"] == "Z,X" then
                    useSkill("Z")
                    useSkill("X")
                elseif _G.Settings.Config["SelectSkill"] == "Z,X,C" then
                    useSkill("Z")
                    useSkill("X")
                    useSkill("C")
                elseif _G.Settings.Config["SelectSkill"] == "Z,X,C,V" then
                    useSkill("Z")
                    useSkill("X")
                    useSkill("C")
                    useSkill("V")
                elseif _G.Settings.Config["SelectSkill"] == "Z,X,C,V,E" then
                    useSkill("Z")
                    useSkill("X")
                    useSkill("C")
                    useSkill("V")
                    useSkill("E")
                end
            end
    end
end)


function TPCheck(Pos)
    local character = game.Players.LocalPlayer.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local Distance = (Pos.Position - humanoidRootPart.Position).Magnitude
            if Distance > 500 then
                humanoidRootPart.CFrame = Pos
            end
        end
    end
end

function XoaQuest()
local ohTable2 = {
	["QuestSlot"] = "QuestSlot1"
}

game:GetService("ReplicatedStorage").OtherEvent.QuestEvents.Quest:FireServer("Abandon_Quest", ohTable2)
end

spawn(function()
    while wait() do
        pcall(function()
            game.Players.LocalPlayer.PlayerGui.MainGui.PlayerName.Text = "Lv • " ..game.Players.LocalPlayer.PlayerData.Level.Value.. " / https://discord.gg/UrkE64Mfb7"
        end)
    end
end)

function NutE()
SkillDown("E")
SkillUp("E")
         end

spawn(function()
    while wait() do
        if _G.Settings.Main["AutoFarm"] then
            CheckLv()
            TPCheck(game.Workspace.Location.QuestLocaion[Quest].CFrame)
            pcall(function()
                for _, v in ipairs(game.Workspace.Monster:GetChildren()) do
                    if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        if game.Players.LocalPlayer.QuestFolder.QuestSlot1.Target.Value == Mon then
                            repeat task.wait()
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                Click()
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                PosMon = v.HumanoidRootPart.CFrame
                                EquipWeapon(WeaponFarm)
                            until not _G.Settings.Main["AutoFarm"] or not v.Parent or v.Humanoid.Health <= 0
                        else
                               TP(game.Workspace.Location.QuestLocaion[Quest].CFrame)
                            if game.Players.LocalPlayer.QuestFolder.QuestSlot1.Target.Value == "None" then
                                NutE()
                                else
                                XoaQuest()
                            end
                        end
                    end
                end
            end)
        end
    end
end)



--autofarm
spawn(function()
    while wait() do
        if _G.Settings.Boss["AutoLordSus"] then
            pcall(function()
                TPCheck(CFrame.new(Vector3.new(6642,-95,4811)))
                local FMon = false
                for _, v in ipairs(game.Workspace.Monster:GetDescendants()) do
                    if v.Name == "Lord Sus" and v.HumanoidRootPart and v.Humanoid.Health > 0 then
                        FMon = true
                        if game.Players.LocalPlayer.QuestFolder.QuestSlot1.Target.Value == "Lord Sus" then
                            repeat task.wait()
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                    v.HumanoidRootPart.CanCollide = false
				            		v.Head.CanCollide = false
                                    EquipWeapon(WeaponFarm)
                                    Click()
                            until not _G.Settings.Boss["AutoLordSus"] or not v.Parent or not v.HumanoidRootPart or v.Humanoid.Health <= 0
                        else
                            TP(CFrame.new(Vector3.new(6564,-95,4794)))
                                NutE()
                        end
                    end
                end
                if not FMon then
                    TP(CFrame.new(Vector3.new(6642,-95,4811)))
                    NutE()
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Boss["RaidFarm"] then
            pcall(function()
                local found = false
                for _, v in pairs(game.Workspace.Raids:GetDescendants()) do
                    if v:FindFirstChild(game.Players.LocalPlayer.Name) then
                        found = true
                            _G.AutoFarm = true
                    end
                end
                if not found then
                        _G.AutoFarm = false
                    TP(CFrame.new(Vector3.new(2748, -58, -4523)))
                end
            end)
        end
    end
end)


spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                for _, v in pairs(game.Workspace.Monster:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name == "Super Popcat" or v.Name == "Tanky Moai"
                            or v.Name == "Speedy Cheems" or v.Name == "Epic Doge"
                            or v.Name == "Floppa Man" or v.Name == "Maxwell The Cat"
                            or v.Name == "The Stone" or v.Name == "Capybara"
                            or v.Name == "Killer Nugget" or v.Name == "Reverse Master" then
                            repeat task.wait()
                            CFrameMon = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                Click()
                                EquipWeapon(WeaponFarm)
                            until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Config["BringMob"] and _G.Settings.Boss["RaidFarm"] then
            pcall(function()
                for _, v in pairs(game.Workspace.Monster:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        if v.Name == "Super Popcat" or v.Name == "Tanky Moai"
                            or v.Name == "Speedy Cheems" or v.Name == "Epic Doge"
                            or v.Name == "Floppa Man" or v.Name == "Maxwell The Cat"
                            or v.Name == "The Stone" or v.Name == "Capybara"
                            or v.Name == "Killer Nugget" or v.Name == "Reverse Master" then
                            v.HumanoidRootPart.CFrame = CFrameMon
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                        end
                    end
                end
            end)
        end
    end
end)

task.spawn(function()
    while true do wait()
    if _G.Settings.Boss["BringRaid"] or _G.Settings.Config["BringMob"] then
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
      end
    end
end)

spawn(function()
    while wait() do
        if _G.Settings.Config["BringMob"] and _G.Settings.Main["AutoFarm"] then
            CheckLv()
            pcall(function()
                for _, v in pairs(game.Workspace.Monster:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
                        if v.Name == Mon then
                         v.Humanoid.WalkSpeed = 0
						v.Humanoid.JumpPower = 0
						v.HumanoidRootPart.CFrame = PosMon
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						if v.Humanoid:FindFirstChild('Animator') then
							v.Humanoid.Animator:Destroy()
						end
						v.Humanoid:ChangeState(11)
						v.Humanoid:ChangeState(14)
                        end
                    end
                end
            end)
        end
    end
end)


spawn(function()
    while wait() do
        if _G.Settings.Main["AutoLava"] then
            TPCheck(CFrame.new(Vector3.new(793, -31, -442)))
            pcall(function()
                if game.Players.LocalPlayer.QuestFolder.QuestSlot1.Target.Value == "Lava Floppa" then
                    repeat task.wait()
                        TP(CFrame.new(Vector3.new(793, -31, -442)))
                        SkillDown("E")
                        SkillUp("E")
                        UnEquipWeapon(WeaponFarm)
                    until not _G.Settings.Main["AutoLava"]
                else
                    TP(CFrame.new(Vector3.new(756,-31,-424)))
                    SkillDown("E")
                    SkillUp("E")
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            for _, v in ipairs(game.Workspace.Skills:GetChildren()) do
                v:Destroy()
            end
        end)
    end
end)


local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/Fluent.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ELGATO HUB | ".. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.. " (First Sea)",
    SubTitle = "| VERSION 1.0",
    TabWidth = 90,
    Size = UDim2.fromOffset(380, 280),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.F15
})
--   Dark   Light  Aqua Amethyst
local Tabs = {
    MainTab = Window:AddTab({ Title = "Farm/Quest", Icon = "rbxassetid://17515562390" }),
    BossTab = Window:AddTab({ Title = "Raid/Boss", Icon = "rbxassetid://17865318408" }),
    TeleTab = Window:AddTab({ Title = "Stat/Fruit", Icon = "rbxassetid://17515564541" }),
    SetTab = Window:AddTab({ Title = " Settings", Icon = "rbxassetid://17515573706" }),
}

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


--maintab
  Tabs.MainTab:AddParagraph({
    Title = "Auto Quest",
    Content = "Auto Other Misc Quest..."
})

Tabs.MainTab:AddToggle("", {Title = "Auto Click Lava", Default = _G.Settings.Main["AutoLava"] }):OnChanged(function(va)
    _G.Settings.Main["AutoLava"] = va
    StopTween(va)
    SaveSettings()
end)

Tabs.BossTab:AddParagraph({
    Title = "Auto Raid",
    Content = "Use It On A Private Server"
})


Tabs.BossTab:AddToggle("", {Title = "Auto Raid - Auto Farm Mon", Default = _G.Settings.Boss["RaidFarm"] }):OnChanged(function(va)
    _G.Settings.Boss["RaidFarm"] = va
    StopTween(va)
    SaveSettings()
end)


Tabs.BossTab:AddParagraph({
    Title = "Auto Boss",
    Content = "Farm All Boss"
})

Tabs.BossTab:AddToggle("", {Title = "Auto Lord Sus (Level)", Default = _G.Settings.Boss["AutoLordSus"] }):OnChanged(function(va)
    _G.Settings.Boss["AutoLordSus"] = va
    StopTween(va)
    SaveSettings()
end)


local ValueS = game.Players.LocalPlayer.PlayerData

local Sat = Tabs.TeleTab:AddParagraph({
    Title = "",
    Content = ""
})

function Stat(va)
    local ohTable1 = {
        ["Target"] = va,
        ["Action"] = "UpgradeStats",
        ["Amount"] = 1
    }
    game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer(ohTable1)
end

spawn(function()
    while wait() do
        if _G.Settings.Teleport["AutoStat"] and ValueS.SkillPoint.Value > 1 then
            if _G.Settings.Teleport["SelectStat"] == "Melee, Defense" then
                Stat("MeleeLevel") Stat("DefenseLevel")
            elseif _G.Settings.Teleport["SelectStat"] == "Sword, Defense" then
                Stat("SwordLevel") Stat("DefenseLevel")
            elseif _G.Settings.Teleport["SelectStat"] == "Power, Defense" then
                Stat("MemePowerLevel") Stat("DefenseLevel")
            elseif _G.Settings.Teleport["SelectStat"] == "Melee" then
                Stat("MeleeLevel")
            elseif _G.Settings.Teleport["SelectStat"] == "Defense" then
                Stat("DefenseLevel")
            elseif _G.Settings.Teleport["SelectStat"] == "Sword" then
                Stat("SwordLevel")
            elseif _G.Settings.Teleport["SelectStat"] == "Power" then
                Stat("MemePowerLevel")
            end
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            Sat:SetTitle("Melee: " .. ValueS.MeleeLevel.Value .. " / Defense: " .. ValueS.DefenseLevel.Value .. " / Sword: " .. ValueS.SwordLevel.Value)
            Sat:SetDesc("Power: " .. ValueS.MemePowerLevel.Value .. " / Points :" .. ValueS.SkillPoint.Value)
            wait(1)
        end)
    end
end)

Tabs.TeleTab:AddDropdown("Dropdown", {
    Title = "Stat",
    Values = {"Melee, Defense", "Sword, Defense", "Power, Defense", "Gun, Defense", "Power", "Melee", "Defense", "Sword"},
    Default = _G.Settings.Teleport["SelectStat"],
    Callback = function(va)
        _G.Settings.Teleport["SelectStat"] = va
        SaveSettings()
    end
})

Tabs.TeleTab:AddToggle("", {Title = "Auto Stat", Default = _G.Settings.Teleport["AutoStat"] }):OnChanged(function(va)
    _G.Settings.Teleport["AutoStat"] = va
end)

Tabs.TeleTab:AddParagraph({
    Title = "Teleport Island",
    Content = "Teleport To The Location You Choose"
})

local MapNames = {}

for _, v in pairs(game.Workspace.Location.Teleport:GetChildren()) do
    if v.Name ~= "Heaven" and v.Name ~= "Spawn" then
        table.insert(MapNames, v.Name)
    end
end


local vava = Tabs.TeleTab:AddDropdown("Dropdown", {
    Title = "Island",
    Values = MapNames,
    Default = _G.Settings.Teleport["SelectIsland"],
    Callback = function(va)
        _G.Settings.Teleport["SelectIsland"] = va
        SaveSettings()
    end
})

Tabs.TeleTab:AddButton({
    Title = "Telport",
    Description = "",
    Callback = function()
        TP(game.Workspace.Location.Teleport[_G.Settings.Teleport["SelectIsland"]].CFrame)
    end
})


Tabs.SetTab:AddParagraph({
    Title = "Setting Auto Farm",
    Content = ""
})

 Tabs.SetTab:AddDropdown("Dropdown", {
    Title = "Weapon",
    Values = {"Melee", "Sword", "Power"},
    Default = _G.Settings.Config["SelectWeapon"],
    Callback = function(va)
        _G.Settings.Config["SelectWeapon"] = va
        SaveSettings()
    end
})


Tabs.SetTab:AddDropdown("Dropdown", {
    Title = "Method",
    Values = {"Behind", "Below", "Upper"},
    Default = _G.Settings.Config["SelectMethod"],
    Callback = function(va)
        _G.Settings.Config["SelectMethod"] = va
        SaveSettings()
    end
})


Tabs.SetTab:AddSlider("", {
    Title = "Distance",
    Description = "",
    Default = _G.Settings.Config["DistanceMon"],
    Min = 0,
    Max = 50,
    Rounding = 1,
    Callback = function(va)
        _G.Settings.Config["DistanceMon"] = va
        SaveSettings()
    end
})

Tabs.SetTab:AddToggle("", {Title = "Bring Mob", Default = _G.Settings.Config["BringMob"] }):OnChanged(function(va)
    _G.Settings.Config["BringMob"] = va
    SaveSettings()
end)


Tabs.SetTab:AddParagraph({
    Title = "Auto Skill",
    Content = ""
})

Tabs.SetTab:AddDropdown("Dropdown", {
    Title = "Skill",
    Values = {"Z", "Z,X", "Z,X,C", "Z,X,C,V"},
    Default = _G.Settings.Config["SelectSkill"],
    Callback = function(va)
        _G.Settings.Config["SelectSkill"] = va
        SaveSettings()
    end
})

Tabs.SetTab:AddToggle("", {Title = "Auto Skill", Default = _G.Settings.Config["AutoSkill"] }):OnChanged(function(va)
    _G.Settings.Config["AutoSkill"] = va
    SaveSettings()
end)
