local P = game:GetService("Players")--ccc
local LP = P.LocalPlayer
local PG = LP.PlayerGui
local RS = game:GetService("ReplicatedStorage")
local Remotes = RS:WaitForChild("Remotes")
local Remote = Remotes:WaitForChild("CommF_")
local RunS = game:GetService("RunService")
local Loop = RunS.RenderStepped
local Data = LP.Data
local WS = game:GetService("Workspace")
local WO = WS["_WorldOrigin"]
local VU = game:GetService("VirtualUser")
local EnemySpawns = WO.EnemySpawns
local Enemies = WS.Enemies
local CameraShaker = require(RS.Util.CameraShaker)
local GuideModule = require(RS.GuideModule)
local Quests = require(RS.Quests)
local VIM = game:service("VirtualInputManager")
local LunarLoader = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = LunarLoader:CreateWindow({Title = "MTriet Hub V2", SubTitle = "by Destroyx, T...", TabWidth = 160, Size = UDim2.fromOffset(500, 360), Acrylic = true, Theme = "Dark", MinimizeKey = Enum.KeyCode.LeftControl})
local Z = Window:AddTab({ Title = "About", Icon = "rbxassetid://15782111043" })
local A = Window:AddTab({ Title = "Main Farm", Icon = "rbxassetid://4483345998" })
local B = Window:AddTab({ Title = "Setting", Icon = "settings" })
local C = Window:AddTab({ Title = "Item", Icon = "rbxassetid://9606626859" })
local D = Window:AddTab({ Title = "Raid & DF", Icon = "rbxassetid://11155986081" })
local E = Window:AddTab({ Title = "Shop", Icon = "rbxassetid://6031265976" })
local F = Window:AddTab({ Title = "Sea Event", Icon = "rbxassetid://7040410130" })
local G = Window:AddTab({ Title = "Upgrade Race", Icon = "rbxassetid://11162889532" })
local H = Window:AddTab({ Title = "Miscellaneous", Icon = "rbxassetid://7044233235" })
if game.PlaceId == 2753915549 then
    Main = true
elseif game.PlaceId == 4442272183 then
    Dressora = true
elseif game.PlaceId == 7449423635 then
    Zou = true
    do
        local count = 0;
        for i,v in pairs(game:GetService("Workspace").Map.Turtle:GetChildren()) do
            if v.Name == "Model" and #v:GetChildren() >= 40 and v:FindFirstChild("Meshes/Plank7") and i > 20 then
                v:Destroy()
                count = count + 1
                if count > 2 then
                    break
                end
            end
        end
    end
else
    game.Players.LocalPlayer:Kick("Not Supported Game This")
end
function GetDistance(q)
    if typeof(q) == "CFrame" then
        return LP:DistanceFromCharacter(q.Position)
    elseif typeof(q) == "Vector3" then
        return LP:DistanceFromCharacter(q)
    end
end
function TeleportSeaIfWrongSea(world)
    if world == 1 then
        if not game.PlaceId == 2753915549 then
            RS.Remotes.CommF_:InvokeServer("TravelMain")
            wait()
        end
    elseif world == 2 then
        if not game.PlaceId == 4442272183 then
            RS.Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    elseif world == 3 then
        if not game.PlaceId == 7449423635 then
            RS.Remotes.CommF_:InvokeServer("TravelZou")
        end
    end
end
function Notify(G, H, I)
    if G == nil or G == "" then
        G = "Not Titled"
    end
    if H == nil or H == "" then
        H = "No Any Descriptions"
    end
    if type(I) ~= "number" then
        I = 10
    end
    HirimiHub:MakeNotification({Name = G, Content = H, Image = "rbxassetid://15214658898", Time = I})
end
function CheckNearestTeleporter(P)
    local min = math.huge
    local min2 = math.huge
    local choose 
    if Zou then
        TableLocations = {
            ["1"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            ["2"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            ["3"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            ["4"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            ["5"] = Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            ["6"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
        }
    elseif Dressora then
        TableLocations = {
            ["1"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            ["2"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            ["3"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            ["4"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif Main then
        TableLocations = {
            ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
            ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    end
    TableLocations2 = {}
    for r, v in pairs(TableLocations) do
        TableLocations2[r] = (v - P.Position).Magnitude
    end
    for r, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end    
    for r, v in pairs(TableLocations2) do
        if v <= min then
            choose = TableLocations[r]
        end
    end
    if min2 <= GetDistance(P) then
        return choose
    end
end
function ToTween(Positions)
    if LP.Character and LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health > 0 then
        if not Speed or typeof(Speed) ~= "number" then
            Speed = 325
        end
        Dis = GetDistance(Positions)       
        if Dis <= 300 then
            LP.Character.PrimaryPart.CFrame = Positions
        end
        tween = game:GetService("TweenService"):Create(LP.Character.PrimaryPart,TweenInfo.new(Dis/Speed, Enum.EasingStyle.Linear),{CFrame = Positions})
        local ac = CheckNearestTeleporter(Positions)
        if ac then
            pcall(function()
                tween:Cancel()
            end)
            TpEntrance(ac)
        end
        tween:Play()
    end
end
function RemoveLvTitle(mob)
    mob = mob:gsub(" %pLv. %d+%p", "")
    return mob
end
function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel == 90 or MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel == 250 or MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel == 275 or MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)            
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif World3 then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
        elseif MyLevel == 1600 or MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
        elseif MyLevel == 1650 or MyLevel <= 1699 then 
            Mon = "Giant Islander"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel == 2275 or MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel == 2300 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel == 2375 or MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel == 2400 or MyLevel <= 2449 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel == 2425 or MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
        elseif MyLevel == 2450 or MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.548828125, 55.656333923339844, -174.2382354736328)
            CFrameMon = CFrame.new(-16295.669921875, 55.003150939941406, -189.2418670654297)
        elseif MyLevel == 2475 or MyLevel <= 2499 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.548828125, 55.656333923339844, -174.2382354736328)
            CFrameMon = CFrame.new(-16739.1015625, 51.29476547241211, -119.83389282226562)
        elseif MyLevel == 2500 or MyLevel <= 2524 then
            Mon = "Sun-kissed Warrior"
            LevelQuest = 1
            NameQuest = "TikiQuest2"
            NameMon = "Sun-kissed Warrior"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
        elseif MyLevel >= 2525 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.17578125, 55.65631103515625, 1050.8162841796875)
            CFrameMon = CFrame.new(-16795.318359375, 58.0726203918457, 1008.0386352539062)
        end
    end
end
function HopServer(bO)
    if not bO then
        bO = 10
    end
    ticklon = tick()
    repeat
        task.wait()
    until tick() - ticklon >= 1
    local function Hop()
        for r = 1, math.huge do
            if ChooseRegion == nil or ChooseRegion == "" then
                ChooseRegion = "Singapore"
            else
                game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                    ChooseRegion
            end
            local bP = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(r)
            for k, v in pairs(bP) do
                if k ~= game.JobId and v["Count"] < bO then
                   game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                end
            end
        end
        return false
    end
    if not getgenv().Loaded then
        local function bQ(v)
            if v.Name == "ErrorPrompt" then
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        HopServer()
                        v.Visible = false
                    end
                end
                v:GetPropertyChangedSignal("Visible"):Connect(
                    function()
                        if v.Visible then
                            if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                HopServer()
                                v.Visible = false
                            end
                        end
                    end
                )
            end
        end
        for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
            bQ(v)
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
        getgenv().Loaded = true
    end
    while not Hop() do
        wait()
    end
end
local x2Code = {
    "KITTGAMING",
    "ENYU_IS_PRO",
    "FUDD10",
    "BIGNEWS",
    "THEGREATACE",
    "SUB2GAMERROBOT_EXP1",
    "STRAWHATMAIME",
    "SUB2OFFICIALNOOBIE",
    "SUB2NOOBMASTER123",
    "SUB2DAIGROCK",
    "AXIORE",
    "TANTAIGAMIMG",
    "STRAWHATMAINE",
    "JCWK",
    "FUDD10_V2",
    "SUB2FER999",
    "MAGICBIS",
    "TY_FOR_WATCHING",
    "STARCODEHEO",
    "STAFFBATTLE",
    "ADMIN_STRENGTH",
    "DRAGONABUSE",
}
function EClick()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
function EWeapon(tool)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(tool) then
        wait(.5)
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(tool)
        wait(.5)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end
function EBuso()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
function CheckVerRace()
    local v0011 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local v0022 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V4"
    end
    if v0011 == -2 then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V3"
    end
    if v0022 == -2 then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V2"
    end
    return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V1"
end
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if NoClip then
            if not game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
                local ag = Instance.new("BodyVelocity")
                ag.Velocity = Vector3.new(0, 0, 0)
                ag.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                ag.P = 9000
                ag.Parent = game.Players.LocalPlayer.Character.Head
                for r, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
            end
        elseif not NoClip and game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity") then
            game.Players.LocalPlayer.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
        end
    end)
end)
function GetPlayerLevelList(cb)
    namel = {}
    for i,v in pairs(game.Players:GetChildren()) do
        pcall(function()
            if v.Name ~= game.Players.LocalPlayer.Name and v:FindFirstChild("Data") and v.Data.Level and (cb and not cb[v.Name]) and v.Character and (LP.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <= 15000 then
                namel[v.Name] = v.Data.Level.Value
            end
        end)
    end
    return namel
end
cc2 = {}
function getLowestLevelPlayer()
    if TargetedPlayer then
        return TargetedPlayer
    end
    cc = GetPlayerLevelList(cc2)
    min = 2450
    for r, v in pairs(cc) do
        if v < min then
            min = v
        end
    end
    for r, v in pairs(cc) do
        if v <= min then
            return r
        end
    end
end
function ChestNearF()
    if not WS:FindFirstChild("Chest1") and not WS:FindFirstChild("Chest2") and not WS:FindFirstChild("Chest3") then
        return nil
    end
    min = math.huge
    chests = {}
    for r, v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, "Chest") then
            table.insert(chests, v.CFrame)
        end
    end
    for r, v in pairs(chests) do
        if (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude < min then
            min = (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude
        end
    end
    for r, v in pairs(chests) do
        if (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude <= min then
            return v
        end
    end
end
function TempleTime()
    RS.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
end
local bonemobs = {
    "Reborn Skeleton",
    "Living Zombie",
    "Demonic Soul",
    "Posessed Mummy"
}
function CheckBoneMob()
    for i,v in next, Enemies:GetChildren() do
        if v:IsA("Model") and table.find(bonemobs, v.Name) and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
end
local cakemobs = {
    "Cookie Crafter",
    "Cake Guard",
    "Baking Staff",
    "Head Baker"
}
function CheckCakeMob()
    for i,v in next, Enemies:GetChildren() do
        if v:IsA("Model") and table.find(cakemobs, v.Name) and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
end
local Bosscake = {
    "Dough King",
    "Cake Prince"
}
function CheckBossCake()
    for i,v in pairs(Enemies:GetChildren()) do
        if table.find(Bosscake, v.Name) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
    for i,v in pairs(RS:GetChildren()) do
        if table.find(Bosscake, v.Name) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
end
local elitemob = {
    "Deandre",
    "Urban",
    "Diablo"
}
function CheckElite()
    for i,v in next, Enemies:GetChildren() do
        if table.find(elitemob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
end
function BDistanceElite()
    if RS:FindFirstChild("Deandre") or RS:FindFirstChild("Urban") or RS:FindFirstChild("Diablo") then
        local v = RS:FindFirstChild("Deandre") or RS:FindFirstChild("Urban") or RS:FindFirstChild("Diablo")
        if GetDistance(v.HumanoidRootPart.Position) > 2000 then
            BypassTele(v.HumanoidRootPart.CFrame)
        elseif GetDistance(v.HumanoidRootPart.Position) < 2000 then
            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
        end
    end
end
function DisableTween(v0)
    if not v0 then
        NoClip = false
        ToTween(LP.Character.HumanoidRootPart.CFrame)
    end
end
function StopTween()
    NoClip = false
    ToTween(LP.Character.HumanoidRootPart.CFrame)
end
function CheckSeaBeastTrial()
    if not WS.Map:FindFirstChild("FishmanTrial") then
        chodienspamhirimixienchetcuchungmay = nil
        return nil
    end
    if WO.Locations:FindFirstChild("Trial of Water") then
        FishmanTrial = WO.Locations:FindFirstChild("Trial of Water")
    end
    if FishmanTrial then
        for r, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
            if string.find(v.Name, "SeaBeast") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500 then
                if v.Health.Value > 0 then
                    return v
                end
            end
        end
    end
end
function CheckMasSkill()
    if not SelectTypeMas then
        return
    end
    if SelectTypeMas == "Devil Fruits" then
        SMasWeapon = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
    elseif SelectTypeMas == "Gun" then
        SMasWeapon = ""
        BPCH = {game.Players.LocalPlayer.Backpack, game.Players.LocalPlayer.Character}
        for hi,ri in pairs(BPCH) do
            for r, v in pairs(ri:GetChildren()) do
                if v:IsA("Tool") and v.ToolTip == "Gun" then
                    SMasWeapon = v.Name
                end
            end
        end
    end
    if SMasWeapon and SMasWeapon ~= "" then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(SMasWeapon) or game.Players.LocalPlayer.Character:FindFirstChild(SMasWeapon) then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(SMasWeapon) then
                for r, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[SMasWeapon]:GetChildren() do
                    if v:IsA("Frame") then
                        if table.find(RealSkillSelected, v.Name) and v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                            return SMasWeapon, v.Name
                        end
                    end
                end
            else
                EWeapon(SMasWeapon)
            end
        end
    end
    if SelectTypeMas == "Gun" then
        return SMasWeapon, nil
    end
end
function CheckSwan()
    for r, v in pairs(Enemies:GetChildren()) do
        if v.Name == "Swan Pirate" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            return true
        end
    end
end
function CheckBoss(vl)
    if RS:FindFirstChild(vl) then
        for r, v in pairs(RS:GetChildren()) do
            if v.Name == vl and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    if Enemies:FindFirstChild(vl) then
        for r, v in pairs(Enemies:GetChildren()) do
            if v.Name == vl and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
end
function ReturnB(vl)
    if RS:FindFirstChild(vl) then
        for r, v in pairs(RS:GetChildren()) do
            if v.Name == vl and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    if Enemies:FindFirstChild(vl) then
        for r, v in pairs(Enemies:GetChildren()) do
            if v.Name == vl and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return false
end
function UpV3NoTween()
    Arowe = CFrame.new(-1988.55322,124.841248,-70.4718018,0.173624337,0,0.984811902,0,1,0,-0.984811902,0,0.173624337) * CFrame.new(0, 3, 0)
    local args = {[1] = "Wenlocktoad", [2] = "3"}
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
function SendKeyEvents(c9, ca)
    if c9 then
        if not ca then
            game:service("VirtualInputManager"):SendKeyEvent(true, c9, false, game)
            task.wait()
            game:service("VirtualInputManager"):SendKeyEvent(false, c9, false, game)
        elseif ca then
            game:service("VirtualInputManager"):SendKeyEvent(true, c9, false, game)
            task.wait(ca)
            game:service("VirtualInputManager"):SendKeyEvent(false, c9, false, game)
        end
    end
end
function CheckIslandRaid(v6)
    if WO.Locations:FindFirstChild("Island " .. v6) then
        Min = 4500
        for r,v in pairs(WO.Locations:GetChildren()) do
            if v.Name == "Island " .. v6 and (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude < Min then
                Min = (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude
            end
        end
        for r,v in pairs(WO.Locations:GetChildren()) do
            if v.Name == "Island " .. v6 and (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude <= Min then
                return v
            end
        end
    end
end
function NextIsland()
    TableIslandsRaid = {5, 4, 3, 2, 1}
    for r,v in pairs(TableIslandsRaid) do
        if CheckIslandRaid(v) and (CheckIslandRaid(v).Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
            return CheckIslandRaid(v)
        end
    end
end
function CheckIsRaiding()
    Timer = PG.Main.Timer.Visible == true
    Island = NextIsland()
    if Timer then
        return Timer
    end
    return Island
end
loadstring(
    [[
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall =
        newcclosure(
        function(...)
            local method = getnamecallmethod()
            local args = {...}
            if tostring(method) == "FireServer" then
                if tostring(args[1]) == "RemoteEvent" then
                    if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                        if (SkillAim and AimbotPos) or (SeaEvent and getgenv().psskill) then
                            args[2] = AimbotPos
                        end
                        return old(unpack(args))
                    end
                end
            end
            return old(...)
        end
    )
]]
)()
loadstring(
    [[
    local gt = getrawmetatable(game)
	local old = gt.__namecall
	setreadonly(gt,false)
	gt.__namecall = newcclosure(function(...)
		local args = {...}
		if getnamecallmethod() == "InvokeServer" then 
            if tostring(args[2]) == "TAP" then
                if SkillAim and AimbotPos then
                    args[3] = AimbotPos
                end
            end
		end
		return old(unpack(args))
	end)
]]
)()
function KillAtMas()
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        repeat task.wait()
            local va,ve = CheckMasSkill()
            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
            v.HumanoidRootPart.CanCollide = false
            AimbotPos = v.HumanoidRootPart.Position
            SkillAim = true
            if va and ve then
                EWeapon(va)
                SendKeyEvents(ve)
                NoClip = true
                task.wait(.2)
            end
        until v.Humanoid.Health > Healthb or not MasteryOption or v.Humanoid.Health <= 0 or not v:FindFirstChild("HumanoidRootPart")
        SkillAim = false
        AimbotPos = nil
    end
end
function TTemplateT()
    TempleTime()
    local args = {[1] = "RaceV4Progress", [2] = "Check"}
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {[1] = "RaceV4Progress", [2] = "Teleport"}
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
function FindAdvancedDealer()
    repeat wait()
    until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        AllNPCS = getnilinstances()
        for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
            table.insert(AllNPCS, v)
        end
        for r, v in pairs(AllNPCS) do
            if v.Name == "Advanced Fruit Dealer" then
                topos(v.HumanoidRootPart.CFrame)
            end
        end
    end
end
function fireremotechoosegear(bH)
    v = bH
    if v == "Gear1" then
        print("Gear3")
        local args = {[1] = "TempleClock", [2] = "SpendPoint"}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
            unpack(args)
        )
    elseif v == "Gear2" then
        print("Gear2")
        local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear2", [4] = "Omega"}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
            unpack(args)
        )
    elseif v == "Gear4" then
        print("Gear4")
        if condimemeaymeci.B == 2 then
            print("Gear 4 Omega")
            local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear4", [4] = "Omega"}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
                unpack(args)
            )
        elseif condimemeaymeci.A == 2 then
            print("Gear 4 Alpha")
            local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear4", [4] = "Alpha"}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
                unpack(args)
            )
        elseif condimemeaymeci.A < 2 then
            v14 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
            condimemeaymeci = v14.RaceDetails
            print("Gear 4 Alpha")
            local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear4", [4] = "Alpha"}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
                unpack(args)
            )
        end
    elseif v == "Gear3" then
        print("Gear3")
        local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear3", [4] = "Alpha"}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
            unpack(args)
        )
    elseif v == "Gear5" then
        print("Gear5")
        local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear5", [4] = "Default"}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
            unpack(args)
        )
    end
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Select Gear", Text = v, Duration = 30})
end
function InstantChooseGear()
    v14 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
    if v14 and v14.HadPoint then
        condimemeaymeci = v14.RaceDetails
        CheckAndTweenTemple()
        Tweento(WS.Map["Temple of Time"].Prompt.CFrame)
        if (WS.Map["Temple of Time"].Prompt.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3 then
            wait(1)
            fireproximityprompt(WS.Map["Temple of Time"].Prompt.ProximityPrompt)
            wait(5)
            for r, v in pairs(WS.Map["Temple of Time"].InnerClock:GetChildren()) do
                if v:FindFirstChild("Highlight") and v.Highlight.Enabled then
                    print(v.Name)
                    spawn(function()
                        fireremotechoosegear(v.Name)
                    end)
                end
            end
        end
        task.wait(300)
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Hirimi Hub", Text = "You Hadn't Gear", Duration = 30})
        task.wait(30)
    end
end
spawn(function()
    while wait() do
        for i,v in pairs(Enemies:GetChildren()) do
            CheckQuest()
            if ((StartFarms and SelectFarm == "Level" and StartBring and v.Name == NameMon) or (FarmSkip and StartBring and v.Name == "Shanda") or (StartFarms and SelectFarm == "Bone" and StartBring and CheckBoneMob()) or (StartFarms and SelectFarm == "Cake Prince" and StartBring and CheckCakeMob())) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and GetDistance(v.HumanoidRootPart.Position) <= 300 then
                v.HumanoidRootPart.CFrame = PosMon
                v.HumanoidRootPart.Size = Vector3.new(1,1,1)                                               
                v.HumanoidRootPart.CanCollide = false
                v.Head.CanCollide = false
                v.Humanoid.JumpPower = 0
                v.Humanoid.WalkSpeed = 0
                if v.Humanoid:FindFirstChild("Animator") then
                    v.Humanoid.Animator:Destroy()
                end
                v.Humanoid:ChangeState(14)
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
            end
        end
    end
end)
function StoreFruit()
    for i,v in pairs(LP.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            RS.Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
end
function DFinBP()
    for r, v in pairs(LP.Backpack:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return true
        end
    end
    for r, v in pairs(LP.Character:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return true
        end
    end
end
function LoadFruit(vvvv)
    RS.Remotes.CommF_:InvokeServer("LoadFruit", vvvv)
end
FruitAbout1M = {}
for r,v in next, RS.Remotes.CommF_:InvokeServer("GetFruits", PG.Main.FruitShop:GetAttribute("Shop2")) do
    if v.Price >= 1000000 then
        FruitAbout1M[v.Price] = v.Name
    end
end
function GetFruitBelow1M()
    local ab
    local cf = {}
    for r,v in pairs(FruitAbout1M) do
        table.insert(cf, v)
    end
    for i,v in next, RS.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Type == "Blox Fruit" then
            if not table.find(cf, v.Name) then
                ab = v.Name
            end
        end
    end
    return ab
end
function NameMelee()
    for r, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            return v.Name
        end
    end
    for r, v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            return v.Name
        end
    end
end
function NameSword()
    for r, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Sword" then
            return v.Name
        end
    end
    for r, v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Sword" then
            return v.Name
        end
    end
end
function checkskillDF()
    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
        equipweapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
        return false
    end
    for r, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value]:GetChildren() do
        if v:IsA("Frame") then
            if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1)then
                return v.Name
            end
        end
    end
end
function checkskillSword()
    if not NameSword() then
        return
    end
    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(NameSword()) then
        equipweapon(NameSword())
        return false
    end
    for r, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[NameSword()]:GetChildren() do
        if v:IsA("Frame") then
            if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                return v.Name
            end
        end
    end
end
function NameGun()
    dick = game.Players.LocalPlayer.Backpack or game.Players.LocalPlayer.Character
    for r, v in pairs(dick:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == "Gun" then
            return v.Name
        end
    end
end
function checkskillGun()
    if not NameGun() then
        return nil
    end
    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(NameGun()) then
        equipweapon(NameGun())
        return false
    end
    for r, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[NameGun()]:GetChildren() do
        if v:IsA("Frame") then
            if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                return v.Name
            end
        end
    end
end
function equipweapon(aq)
    local c6 = tostring(aq)
    local c7 = game.Players.LocalPlayer.Backpack:FindFirstChild(c6)
    local c8 = LP.Character:FindFirstChild("Humanoid") or LP.Character:WaitForChild("Humanoid")
    if c7 then
        c8:EquipTool(c7)
    end
end
function checkskillMelee()
    if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(NameMelee()) then
        equipweapon(NameMelee())
        return false
    end
    for r, v in next, game:GetService("Players").LocalPlayer.PlayerGui.Main.Skills[NameMelee()]:GetChildren() do
        if v:IsA("Frame") then
            if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                return v.Name
            end
        end
    end
end
function EquipWeaponName(m)
    if not m then
        return
    end
    NoClip = true
    ToolSe = m
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local bi = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(bi)
    end
end
function CheckPirateBoat()
    local boat = {"PirateBrigade", "PirateGrandBrigade"}
    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if table.find(boat, v.Name) then
            return v
        end
    end
end
function CheckSeaBeast()
    for r, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
        if v.Name == "SeaBeast1" then
            local s = v.HealthBBG.Frame.TextLabel.Text
            local c5 = s:gsub("/%d+,%d+", "")
            local a = v.HealthBBG.Frame.TextLabel.Text
            local ab
            if string.find(c5, ",") then
                ab = a:gsub("%d+,%d+/", "")
            else
                ab = a:gsub("%d+/", "")
            end
            local c = ab:gsub(",", "")
            if tonumber(c) >= 34500 then
                return v
            end
        end
    end
    return false
end
function checkboat()
    for r, v in next, game:GetService("Workspace").Boats:GetChildren() do
        if v:IsA("Model") then
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game:GetService("Players").LocalPlayer.Name and v.Humanoid.Value > 0 then
                return v
            end
        end
    end
    return false
end
function TeleportSeabeast(c5)
    NoClip = true
    local a = Vector3.new(0, c5:FindFirstChild("HumanoidRootPart").Position.Y, 0)
    local ab = Vector3.new(0, game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y, 0)
    if (a - ab).Magnitude <= 175 then
        ToTween(c5.HumanoidRootPart.CFrame * CFrame.new(0, 400, 50))
    else
        ToTween(CFrame.new(c5.HumanoidRootPart.Position.X, game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y + 200, c5.HumanoidRootPart.Position.Z))
    end
    if not CheckSeaBeast() then
        NoClip = false
    end
end
function GetWeapon(bh)
    s = ""
    for r, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == bh then
            s = v.Name
        end
    end
    for r, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == bh then
            s = v.Name
        end
    end
    return s
end
function IsWpSKillLoaded(bW)
    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills:FindFirstChild(bW) then
        return true
    end
end
function EquipAllWeapon()
    u3 = {"Melee", "Blox Fruit", "Sword", "Gun"}
    u3_2 = {}
    for r, v in pairs(u3) do
        u3_3 = GetWeapon(v)
        table.insert(u3_2, u3_3)
    end
    for r, v in pairs(u3_2) do
        if not IsWpSKillLoaded(v) then
            print(v)
            EquipWeaponName(v)
        end
    end
end
function IsWpSKillLoaded(bW)
    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills:FindFirstChild(bW) then
        return true
    end
end
spawn(function()
    while wait() do
        if KillStart then
            if TargetedPlayer or getLowestLevelPlayer() then
                getlow = game.Players[getLowestLevelPlayer()]
                SeWFake = SeWReal
                EBuso()
                SeWReal = "Melee"
                EWeapon(Selecttool)
                if not getlow then
                    repeat wait()
                        getlow = game.Players:FindFirstChild(getLowestLelvelPlayer())
                    until getlow
                end
                repeat
                    TpCFrame = game.Players:FindFirstChild(getLowestLevelPlayer()).Character.HumanoidRootPart.CFrame
                    TPS = true
                    wait()
                    NoClip = true
                    if TpCFrame and (TpCFrame.Position - LP.Character.HumanoidRootPart.Position).Magnitude < 300 and not PG.Main.PvpDisabled.Visible then
                        EClick()
                        chodienspamhirimixienchetcuchungmay = true
                        AimbotPos = TpCFrame
                        SkillAim = true
                    else
                        chodienspamhirimixienchetcuchungmay = nil
                        SkillAim = true
                        AimbotPos = nil
                    end
                until not KillStart or not getLowestLevelPlayer() or not getlow or not WS.Characters:FindFirstChild(getLowestLevelPlayer()) or not getlow.Character or getlow.Character.Humanoid.Health <= 0 or CheckCantAttackPlayer(getlow) or cc2[getLowestLevelPlayer()]
                cc2[getLowestLevelPlayer()] = true
                chodienspamhirimixienchetcuchungmay = false
                SkillAim = false
                AimbotPos = nil
                SeWReal = SeWFake
                TPS = false
                NoClip = false
            elseif not getLowestLevelPlayer() then
                cc2 = {}
            end
        end
    end
end)
spawn(function()
    while wait() do
        if TPS and TpCFrame then
            pcall(function()
                if (TpCFrame.Position - LP.HumanoidRootPart.Position).Magnitude > 300 then
                    ToTween(TpCFrame * CFrame.new(0, math.random(1, 15), 0))
                else
                    if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TpCFrame * CFrame.new(0, 100, 0)
                        wait(1)
                    else
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TpCFrame * CFrame.new(0, math.random(1, 30), 0)
                    end
                end
            end)
        end
    end
end)
function function7()
    GameTime = "Error"
    local c = game.Lighting
    local ao = c.ClockTime
    if ao >= 18 or ao < 5 then
        GameTime = "Night"
    else
        GameTime = "Day"
    end
    return GameTime
end
function function6()
    return math.floor(game.Lighting.ClockTime)
end
function CheckAcientOneStatus()
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return "You have yet to achieve greatness"
    end
    local v227 = nil
    local v228 = nil
    local v229 = nil
    v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
    if v229 == 1 then
        return "Required Train More"
    elseif v229 == 2 or v229 == 4 or v229 == 7 then
        return "Can Buy Gear With " .. v227 .. " Fragments"
    elseif v229 == 3 then
        return "Required Train More"
    elseif v229 == 5 then
        return "You Are Done Your Race."
    elseif v229 == 6 then
        return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
    end
    if v229 ~= 8 then
        if v229 == 0 then
            return "Ready For Trial"
        else
            return "You have yet to achieve greatness"
        end
    end
    return "Remaining " .. 10 - v228 .. " training sessions."
end
function PlayersCount()
    return #game.Players:GetChildren()
end
function FunctionFoldermob()
    print("FunctionFoldermob")
    repeat
        wait()
        if game.Workspace:FindFirstChild("MobSpawns") then
            game.Workspace.MobSpawns:Destroy()
        end
    until not game.Workspace:FindFirstChild("MobSpawns")
    local K = Instance.new("Folder")
    K.Parent = game.Workspace
    K.Name = "MobSpawns"
    wait()
    repeat
        wait()
    until game.Workspace:FindFirstChild("MobSpawns")
    for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        local a = v:Clone()
        a.Parent = game.Workspace.MobSpawns
    end
    local L = {}
    for r, v in next, require(game:GetService("ReplicatedStorage").Quests) do
        for M, N in next, v do
            for O, P in next, N.Task do
                if P > 1 then
                    table.insert(L, O)
                end
            end
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for r, v in pairs(getnilinstances()) do
            if table.find(L, tostring(v.Name:gsub(" %pLv. %d+%p", ""))) then
                local a = v:Clone()
                a.Parent = game.Workspace.MobSpawns
            end
        end
    else
        for r, v in pairs(getnilinstances()) do
            if table.find(L, v.Name) then
                local a = v:Clone()
                if a.Parent then
                    a.Parent = game.Workspace.MobSpawns
                end
            end
        end
    end
end
FunctionFoldermob()
function GetMobSpawn(a)
    for r, v in next, game.Workspace.MobSpawns:GetChildren() do
        if v.Name == a then
            return v
        end
    end
end
function GetMobSpawnList(a)
    k = {}
    for r, v in next, game.Workspace.MobSpawns:GetChildren() do
        if v.Name == a then
            table.insert(k, v)
        end
    end
    return k
end
spawn(function()
    while wait() do
        if KillStart then
            if PG.Main.PvpDisabled.Visible then
                RS.Remotes.CommF_:InvokeServer("EnablePvp")
                wait(5)
            end
        end
    end
end)
spawn(function()
    while task.wait() do
        if chodienspamhirimixienchetcuchungmay then
            EBuso()
            sword = checkskillSword()
            meele = checkskillMelee()
            df = checkskillDF()
            gun = checkskillGun()
            if df and SpamDFs and not string.find(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value, "Portal") and df ~= "F" then
                print("Spam Status: Devil Fruit")
                EquipWeaponName(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                local condimebeo = checkskillDF()
                if condimebeo then
                    SendKeyEvents(condimebeo)
                end
            elseif checkskillMelee() and SpamMelees then
                print("Spam Status: Melee")
                EquipWeaponName(NameMelee())
                local condimebeo = checkskillMelee()
                if condimebeo then
                    SendKeyEvents(condimebeo)
                end
            elseif checkskillSword() and SpamSwords then
                print("Spam Status: Sword")
                EquipWeaponName(NameSword())
                local condimebeo = checkskillSword()
                if condimebeo then
                    SendKeyEvents(condimebeo)
                end
            elseif checkskillGun() and SpamGuns then
                print("Spam Status: Gun")
                local condimebeo = checkskillGun()
                EquipWeaponName(NameGun())
                if condimebeo then
                    SendKeyEvents(condimebeo)
                end
            else
                EquipAllWeapon()
            end
        end
    end
end)
function CheckMasSelect(weapon)
    local v00121 = LP.Backpack
    for i,v in pairs(v00121:GetChildren()) do
        if v.ToolTip == weapon then
            return v.Level.Value
        end
    end
end
function GetQuestV3()
    local v33000 = RS.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    if v33000 == 0 then
        RS.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
        wait(.1)
        Notify("Hirimi Hub", "Claimed Quest V3", 10)
    elseif v33000 == -1 then
        Notify("Hirimi Hub", "You Not Have V2")
    end
end
function BypassTele(PosSelect)
    if GetDistance(PosSelect.Position) >= 2000 and LP.Character.Humanoid.Health > 0 then
        game.Players.LocalPlayer.Character.Head:Destroy()
        for i = 1,9 do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = PosSelect
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    end
end
A:AddButton({
    Title = "Redeem All Code X2",
    Description = "Click Redeem Code",
    Callback = function()
        function RedeemCode(vcc)
            RS.Remotes.Redeem:InvokeServer(vcc)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
    end
})
A:AddButton({
    Title = "Hop Server",
    Description = "",
    Callback = function()
        HopServer()
    end
})
local selectttolll = A:AddDropdown("SelectTool",{Title = "Select Tool", Values = {"Melee","Sword"}, Multi = false, Callback = function(vSelecttool)
    Selecttool = vSelecttool
    end
})
game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
        if v:IsA("Tool") and v.ToolTip == Selecttool then
            Selecttool = v.Name
        end
    end
end)
local v1f = {"0", "0.15", "0.175", "0.2"}
_G.FastAttackDelay = 0.175
local Fastattackd = A:AddDropdown("Fast Attack Delay",{Title = "Fast Attack Delay", Values = v1f, Multi = false, Callback = function(FastDelays)
    _G.FastAttackDelay = FastDelays
    end
})
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.FastAttackDelay == "0" then
            _G.FastAttackDelay = 0
        elseif _G.FastAttackDelay == "0.15" then
            _G.FastAttackDelay = 0.15
        elseif _G.FastAttackDelay == "0.175" then
            _G.FastAttackDelay = 0.175
        elseif _G.FastAttackDelay == "0.2" then
            _G.FastAttackDelay = 0.2
        end
    end)
end)
local Client = game.Players.LocalPlayer
local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
spawn(function()
    while task.wait() do
        pcall(function()
            if not shared.orl then shared.orl = STOPRL.wrapAttackAnimationAsync end
            if not shared.cpc then shared.cpc = STOP.play end
                STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                local Hits = STOPRL.getBladeHits(b,c,d)
                if Hits then
                    if _G.FastAttack then
                        STOP.play = function() end
                        a:Play(0.01,0.01,0.01)
                        func(Hits)
                        STOP.play = shared.cpc
                        wait(a.length * 0.5)
                        a:Stop()
                    else
                        a:Play()
                    end
                end
            end
        end)
    end
end)
function GetBladeHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local p13 = CmrFwLib.activeController
    local weapon = p13.blades[1]
    if not weapon then 
        return weapon
    end
    while weapon.Parent ~= game.Players.LocalPlayer.Character do
        weapon = weapon.Parent 
    end
    return weapon
end
function AttackHit()
    local CombatFrameworkLib = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
    local CmrFwLib = CombatFrameworkLib[2]
    local plr = game.Players.LocalPlayer
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,{plr.Character.HumanoidRootPart},60)
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            pcall(function()
                CmrFwLib.activeController.timeToNextAttack = 1
                CmrFwLib.activeController.attacking = false
                CmrFwLib.activeController.blocking = false
                CmrFwLib.activeController.timeToNextBlock = 0
                CmrFwLib.activeController.increment = 3
                CmrFwLib.activeController.hitboxMagnitude = 60
                CmrFwLib.activeController.focusStart = 0
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end)
        end
    end
end
spawn(function()
    while wait(.1) do
        if _G.FastAttack then
            pcall(function()
                repeat task.wait(_G.FastAttackDelay)
                    AttackHit()
                until not _G.FastAttack
            end)
        end
    end
end)
local fast = A:AddToggle("Enable Fast Attack", {Title = "Enable Fast Attack", Callback = function(vFastAttack)
    _G.FastAttack = vFastAttack
    end 
})
fast:SetValue(true)
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
		if _G.FastAttack then
			if typeof(y) == "table" then
				pcall(function()
					CameraShaker:Stop()
					y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
					y.activeController.timeToNextAttack = 0
					y.activeController.hitboxMagnitude = 60
					y.activeController.active = false
					y.activeController.timeToNextBlock = 0
					y.activeController.focusStart = 1655503339.0980349
					y.activeController.increment = 1
					y.activeController.blocking = false
					y.activeController.attacking = false
					y.activeController.humanoid.AutoRotate = true
				end)
			end
		end
        if _G.FastAttack == true then
			game.Players.LocalPlayer.Character.Stun.Value = 0
			game.Players.LocalPlayer.Character.Busy.Value = false        
		end
	end)
end)
local bypasstp = A:AddToggle("Enable Bypass Teleport", {Title = "Enable Bypass Teleport", Callback = function(vBTP)
    BypassTP = vBTP
    end 
})
bypasstp:SetValue(true)
local Selectmodef = A:AddDropdown("Select Mode Farm",{Title = "Select Mode Farm", Values = {"Level", "Bone", "Cake Prince"}, Multi = false, Callback = function(vSFarm)
    SelectFarm = vSFarm
    end
})
local FarmStart = A:AddToggle("Start Farm", {Title = "Start Farm", Callback = function(StartFarmsv)
    StartFarms = StartFarmsv
    DisableTween(StartFarms)
    end 
})
spawn(function()
    while wait() do
        pcall(function()
            if StartFarms and SelectFarm == "Level" then         
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    CheckQuest()
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                            BypassTele(CFrameQuest)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
                            ToTween(CFrameQuest)
                        end
                    else
                        ToTween(CFrameQuest)
                    end
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            EWeapon(Selecttool)                                                                                                        
                                            EBuso()                                         
                                            PosMon = v.HumanoidRootPart.CFrame
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            EClick()
                                            NoClip = true
                                            StartBring = true
                                        until not StartFarms or not SelectFarm == "Level" or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        NoClip = false
                                        StartBring = false
                                    else
                                        NoClip = true
                                        StartBring = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        ToTween(CFrameMon)
                        StartBring = false
                        NoClip = true
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            ToTween(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                        end
                    end
                end
            elseif StartFarms and SelectFarm == "Bone" then
                if CheckBoneMob() then
                    v = CheckBoneMob()
                    if v then
                        repeat task.wait()
                            EWeapon(Selecttool)                                                                                                        
                            EBuso()
                            if ClaimQuest then
                                questte = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                if not string.find(questte, "Demonic Soul") then
                                    StartBring = false
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                end
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    ToTween(CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0))
                                    if (LP.Character.HumanoidRootPart.Position - CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0).Position).Magnitude <= 5 then
                                        local args = {[1] = "StartQuest", [2] = "HauntedQuest2", [3] = 1}
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                elseif ClaimQuest and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                end
                            else
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            end
                            if MasteryOption and HealthStop and v.Humanoid.MaxHealth < 200000 then
                                HealthM = v.Humanoid.Health <= v.Humanoid.MaxHealth * HealthStop / 100
                                if HealthM then
                                    repeat task.wait()
                                        local va,ve = CheckMasSkill()
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        if SelectTypeMas == "Gun" and CheckMasSkill() then
                                            EWeapon(va)
                                            local args = {[1] = v.HumanoidRootPart.Position, [2] = v.HumanoidRootPart}
                                            game:GetService("Players").LocalPlayer.Character[va].RemoteFunctionShoot:InvokeServer(unpack(args))
                                        end
                                        if va and ve then
                                            EWeapon(va)
                                            SendKeyEvents(ve)
                                            NoClip = true
                                            task.wait(.2)
                                        end
                                        SkillAim = true
                                        AimbotPos = v.HumanoidRootPart.Position
                                    until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                                    SkillAim = false
                                    AimbotPos = nil
                                else
                                    EClick()
                                end
                            else
                                EClick()
                            end
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)  
                            v.HumanoidRootPart.CanCollide = false
                            PosMon = v.HumanoidRootPart.CFrame
                            StartBring = true
                        until not StartFarms or not SelectFarm == "Bone" or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                        StartBring = false
                    end
                else
                    local CFrameHun = CFrame.new(-9368.34765625, 222.10060119628906, 6239.904296875)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameHun.Position).Magnitude > 2000 then
                            BypassTele(CFrameHun)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameHun.Position).Magnitude < 2000 then
                            ToTween(CFrameHun)
                            NoClip = true
                        end
                    else
                        ToTween(CFrameHun)
                        NoClip = true
                    end
                end
            elseif StartFarms and SelectFarm == "Cake Prince" then
                if CheckCakeMob() then
                    v = CheckCakeMob()
                    if v then
                        repeat task.wait()
                            EWeapon(Selecttool)                                                                                                                    
                            EBuso()
                            if not ClaimQuest then
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            else
                                questt = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                                if not string.find(questt, "Cookie Crafter") then
                                    StartBring = false
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                end
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                                    ToTween(CFrame.new(-2020.6177978515625, 37.793975830078125, -12029.17578125))
                                    if (LP.Character.HumanoidRootPart.Position - CFrame.new(-2020.6177978515625, 37.793975830078125, -12029.17578125).Position).Magnitude <= 5 then
                                        local args = {[1] = "StartQuest", [2] = "CakeQuest1", [3] = 1}
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                                    ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                end
                            end
                            if MasteryOption and HealthStop and v.Humanoid.MaxHealth < 200000 then
                                fast:Set(false)
                                HealthM = v.Humanoid.Health <= v.Humanoid.MaxHealth * HealthStop / 100
                                if HealthM then
                                    repeat task.wait()
                                        local va,ve = CheckMasSkill()
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        if va and ve then
                                            EWeapon(va)
                                            SendKeyEvents(ve)
                                            NoClip = true
                                            task.wait(.2)
                                        end
                                        SkillAim = true
                                        AimbotPos = v.HumanoidRootPart.Position
                                    until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                                    SkillAim = false
                                    AimbotPos = nil
                                else
                                    EClick()
                                end
                            else
                                EClick()
                            end
                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)  
                            v.HumanoidRootPart.CanCollide = false
                            PosMon = v.HumanoidRootPart.CFrame
                            StartBring = true
                        until not StartFarms or not SelectFarm == "Cake Prince" or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                        StartBring = false
                    end
                elseif CheckBossCake() then
                    v = CheckBossCake()
                    repeat task.wait()
                        EWeapon(Selecttool)                                                                                                                    
                        EBuso()
                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)  
                        v.HumanoidRootPart.CanCollide = false
                        PosMon = v.HumanoidRootPart.CFrame
                        EClick()
                        NoClip = true
                    until not StartFarms or not SelectFarm == "Cake Prince" or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                    NoClip = false
                else
                    local CFrameCI = (CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameCI.Position).Magnitude > 2000 then
                            BypassTele(CFrameCI)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameCI.Position).Magnitude < 2000 then
                            ToTween(CFrameCI)
                        end
                    else
                        ToTween(CFrameCI)
                    end
                end
            end
        end)
    end
end)
-- A:AddToggle({Name = "Farm Skips [Lv.1 -> Lv.300]", Default = false, Callback = function(vFarmSkip)
--     FarmSkip = vFarmSkip
--     DisableTween(FarmSkip)
-- end    
-- })
-- spawn(function()
--     while wait() do
--         if FarmSkip then
--             LvCount = Data.Level.Value
--             if LvCount >= 1 and LvCount < 60 then
--                 local cframefarm = CFrame.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
--                 if GetDistance(cframefarm.Position) > 1500 then
--                     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
--                 end
--                 if Enemies:FindFirstChild("Shanda") then     
--                     for i,v in pairs(Enemies:GetChildren()) do
--                         if v.Name == "Shanda" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
--                             repeat task.wait()
--                                 EWeapon(Selecttool)                                                                                                                    
--                                 EBuso()
--                                 ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))               
--                                 PosMon = v.HumanoidRootPart.CFrame                                                                       
--                                 v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
--                                 v.HumanoidRootPart.CanCollide = false
--                                 v.Humanoid.WalkSpeed = 0
--                                 sethiddenproperty(LP, "SimulationRadius",  math.huge)
--                                 EClick()
--                                 StartBring = true
--                                 NoClip = true                                                            
--                             until not FarmSkip or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
--                             StartBring = false
--                             NoClip = false
--                         end 
--                     end
--                 end 
--             elseif LvCount >= 60 and LvCount < 300 then
--                 CheckPlayer = 0
--                 local Players = game:GetService("Players"):GetPlayers()
--                 local Quest = PG.Main.Quest
--                 local mylevel = Data.Level.Value
--                 local QuestTitle = Quest.Container.QuestTitle.Title.Text
--                 if Quest.Visible == true then
--                     if string.find(QuestTitle, "Defeat") then
--                         getgenv().Ply = string.split(QuestTitle," ")[2]
--                         for i,v in pairs(Players) do
--                             if v.Name == getgenv().Ply and v.Character.Humanoid.Health > 0 then
--                                 repeat task.wait()
--                                     if v.Data.Level.Value < 20 or v.Data.Level.Value > mylevel * 5 then
--                                         Remote:InvokeServer("PlayerHunter")
--                                     end
--                                     if PG.Main.PvpDisabled.Visible == true then
--                                         Remote:InvokeServer("EnablePvp")                   
--                                     end
--                                     EWeapon(Selecttool)
--                                     EBuso()	   
--                                     NoClip = true         
--                                     ToTween(v.Character.HumanoidRootPart.CFrame * CFrame.new(5, 10, 5))
--                                     EClick()
--                                 until not FarmSkip or not v:FindFirstChild("HumanoidRootPart") or v.Character.Humanoid.Health <= 0
--                                 NoClip = false
--                             end
--                         end
--                     else
--                         Remote:InvokeServer("PlayerHunter")
--                     end
--                 else                
--                     if Remote:InvokeServer("PlayerHunter") == "I don't have anything for you right now. Come back later." then
--                         CheckPlayer = CheckPlayer + 1
--                     end
--                 end
--                 if CheckPlayer >= 12 and Quest.Visible == false and not string.find(QuestTitle, "Defeat") then
--                     HopServer()
--                 end 
--             else
--                 Selectmodef:Set("Level")
--                 Farmop:Set(true)
--             end
--             if game.Players.localPlayer.Data.Points.Value >= 1 then
--                 local args = {[1] = "AddPoint", [2] = "Melee", [3] = 1}
--                 RS.Remotes.CommF_:InvokeServer(unpack(args))
--             end
--         end
--     end
-- end)
-- A:AddSection({Name = "Farm Weapon"})
-- A:AddDropdown({Name = "Select Type Farm", Default = "", Options = {"Cake Prince", "Bone"}, Callback = function(vSelectTypeFarm)
--     SelectTypeFarm = vSelectTypeFarm
-- end    
-- })
-- A:AddToggle({Name = "Farm All Sword 600 Mastery", Default = false, Callback = function(vsword600mas)
--     sword600mas = vsword600mas
-- end    
-- })
-- spawn(function()
--     while task.wait() do
--         if sword600mas then
--             NoClip = true
--             if CheckMasSelect("Sword") == 600 then
--                 for i,v in pairs(RS.Remotes.CommF_:InvokeServer("getInventory")) do
--                     if type(v) == "table" then
--                         if v.Type == "Sword" and v.Mastery >= 600 then
--                             if not (LP.Backpack:FindFirstChild(v.Name) or LP.Character:FindFirstChild(v.Name)) then
--                                 RS.Remotes.CommF_:InvokeServer("LoadItem",v.Name)
--                             end
--                         end
--                     end
--                 end
--             else
--                 if SelectTypeFarm == "Cake Prince" then
--                     Selectmodef:Set("Cake Prince")
--                 elseif SelectTypeFarm == "Bone" or SelectTypeFarm == nil then
--                     Selectmodef:Set("Bone")
--                 end
--                 Farmop:Set(true)
--                 selectttolll:Set("Sword")
--             end
--         else
--             NoClip = false
--         end
--     end
-- end)
-- A:AddSection({Name = "Bone"})
-- A:AddToggle({Name = "Random Suprise", Default = false, Callback = function(vRSuprise)
--     RSuprise = vRSuprise
--     if RSuprise then
--         repeat RS.Remotes.CommF_:InvokeServer("Bones","Buy",1,1) task.wait() until not RSuprise
--     end
-- end    
-- })
-- A:AddSection({Name = "Quest Claim"})
-- A:AddToggle({Name = "Claim Quest Bone & Cake", Default = false, Callback = function(vClaim)
--     ClaimQuest = vClaim
-- end    
-- }) 
-- A:AddSection({Name = "Mastery Option"})
-- A:AddDropdown({Name = "Select Type Mastery Farm", Default = "", Options = {"Devil Fruits", "Gun"}, Callback = function(vSelectTypeMas)
--     SelectTypeMas = vSelectTypeMas
-- end    
-- })
-- A:AddToggle({Name = "Enable Mastery Option", Default = false, Callback = function(vMasteryOption)
--     MasteryOption = vMasteryOption
-- end    
-- })
-- local skill = {"Z", "X", "C", "V", "F"}
-- SkillSelected = {}
-- RealSkillSelected = {}
-- for r, v in pairs(SkillSelected) do
--     if v then
--         table.insert(RealSkillSelected, r)
--     end
-- end
-- A:AddDropdown({Name = "Select Skill [Click Skill Enable]", Default = "", Options = skill, Callback = function(vSelectSkills)
--     SkillSelected[vSelectSkills] = not SkillSelected[vSelectSkills]
--     RealSkillSelected = {}
--     for r, v in pairs(SkillSelected) do
--         if v then
--             table.insert(RealSkillSelected, r)
--         end
--     end
--     Notify("Hirimi Hub", "Skill " .. tostring(vSelectSkills) .. ": " .. tostring(SkillSelected[vSelectSkills]) .. "")
-- end    
-- })
-- B:AddSlider({Name = "Stop Health Mastery", Min = 0, Max = 100, Default = 40, Color = Color3.fromRGB(255,255,255), Increment = 1, ValueName = "%", Callback = function(vHealthm)
--     HealthStop = vHealthm
-- end    
-- })
-- ListChip = {}
-- RaidsModule = require(RS.Raids)
-- for r, v in pairs(RaidsModule.raids) do
--     if v.Name ~= " " then
--         table.insert(ListChip, v)
--     end
-- end
-- for r, v in pairs(RaidsModule.advancedRaids) do
--     if v.Name ~= " " then
--         table.insert(ListChip, v)
--     end
-- end
-- C:AddDropdown({Name = "Select Microchip Raid", Default = "", Options = ListChip, Callback = function(vSelectRaid)
--     SelectRaid = vSelectRaid
-- end    
-- })
-- C:AddToggle({Name = "Full Raid", Default = false, Callback = function(vRaidF)
--     FullRaid = vRaidF
--     DisableTween(FullRaid)
-- end    
-- })
-- spawn(function()
--     while task.wait() do
--         if (Dressora or Zou) and FullRaid and CheckIsRaiding() then
--             pcall(function()
--                 if NextIsland() then
--                     ToTween(NextIsland().CFrame * CFrame.new(0, 60, 0))
--                     NoClip = true
--                 end
--                 for i,v in pairs(Enemies:GetDescendants()) do
--                     if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
--                         repeat wait(.1)
--                             v.Humanoid.Health = 0
--                             v.HumanoidRootPart.CanCollide = false
--                             sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
--                         until not v or not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0
--                     end
--                 end
--             end)
--         elseif (Dressora or Zou) and FullRaid then
--             local buy = RS.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", SelectRaid) == 1
--             if Dressora then
--                 fireclickdetector(WS.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
--             elseif Zou then
--                 fireclickdetector(WS.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
--             end
--         end
--     end
-- end)
-- D:AddSection({Name = "Elite Hunter"})
-- D:AddToggle({Name = "Get Quest And Kill Elite", Default = false, Callback = function(vElite)
--     Elite = vElite
--     DisableTween(Elite)
-- end    
-- })
-- spawn(function()
--     while wait() do
--         if Elite then
--             if PG.Main.Quest.Visible == true then
--                 if CheckElite() then
--                     v = CheckElite()
--                     repeat task.wait()
--                         EWeapon(Selecttool)
--                         EBuso()
--                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                         if MasteryOption and HealthStop and v.Humanoid.MaxHealth < 200000 then
--                             HealthM = v.Humanoid.Health <= v.Humanoid.MaxHealth * HealthStop / 100
--                             if HealthM then
--                                 repeat task.wait()
--                                     local va,ve = CheckMasSkill()
--                                     ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
--                                     if va and ve then
--                                         EWeapon(va)
--                                         SendKeyEvents(ve)

--                                         task.wait(.2)
--                                     end
--                                     SkillAim = true
--                                     AimbotPos = v.HumanoidRootPart.Position
--                                 until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
--                                 SkillAim = false
--                                 AimbotPos = nil
--                             else
--                                 EClick()
--                             end
--                         else
--                             EClick()
--                         end
--                     until not Elite or not v or not v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= 0
--                 else
--                     BDistanceElite()
--                 end
--             else
--                 if RS.Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
--                 else
--                     RS.Remotes.CommF_:InvokeServer("EliteHunter")
--                 end
--             end
--         end
--     end
-- end)
-- D:AddSection({Name = "Saber"})
-- D:AddToggle({Name = "Quest & Claim Saber", Default = false, Callback = function(vSaberQ)
--     SaberQ = vSaberQ
--     DisableTween(SaberQ)
-- end    
-- })
-- spawn(function()
--     while wait() do
--         if SaberQ then
--             NoClip = true
--         else
--             NoCLip = false
--         end
--         TeleportSeaIfWrongSea(1)
--         if SaberQ and Data.Level.Value >= 200 then
--             if WS.Map.Jungle.Final.Part.Transparency == 0 then
--                 if WS.Map.Jungle.QuestPlates.Door.Transparency == 0 then
--                     SabCF = CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279)
--                     if (SabCF.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
--                         ToTween(LP.Character.HumanoidRootPart.CFrame)
--                         wait(1)
--                         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate1.Button.CFrame
--                         wait(1)
--                         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate2.Button.CFrame
--                         wait(1)
--                         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate3.Button.CFrame
--                         wait(1)
--                         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate4.Button.CFrame
--                         wait(1)
--                         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate5.Button.CFrame
--                     else
--                         ToTween(SabCF)
--                     end
--                 else
--                     if WS.Map.Desert.Burn.Part.Transparency == 0 then
--                         if LP.Backpack:FindFirstChild("Torch") or LP.Character:FindFirstChild("Torch") then
--                             EWeapon("Torch")
--                             ToTween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
--                           else
--                             ToTween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
--                         end
--                     else
--                         if RS.Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
--                             RS.Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
--                             wait(0.5)
--                             EquipWeapon("Cup")
--                             wait(0.5)
--                             RS.Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
--                             wait(0)
--                             RS.Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
--                         else
--                             if RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
--                                 RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
--                             elseif RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
--                                 if Enemies:FindFirstChild("Mob Leader") or RS:FindFirstChild("Mob Leader") then
--                                     ToTween(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
--                                     for i,v in pairs(Enemies:GetChildren()) do
--                                         if v.Name == "Mob Leader" and v.Humanoid.Health > 0 then
--                                             if Enemies:FindFirstChild("Mob Leader") then
--                                                 repeat task.wait()
--                                                 EBuso()
--                                                 EWeapon(Selecttool)
--                                                 v.HumanoidRootPart.CanCollide = false
--                                                 v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
--                                                 ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                                 EClick()
--                                                 sethiddenproperty(LP,"SimulationRadius",math.huge)
--                                                 until not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not SaberQ
--                                             end
--                                         end
--                                         if RS:FindFirstChild("Mob Leader") then
--                                             ToTween(RS:FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                         end
--                                     end
--                                 end
--                             elseif RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
--                                 RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
--                                 EWeapon("Relic")
--                                 ToTween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
--                             end
--                         end
--                     end
--                 end
--             else
--                 if Enemies:FindFirstChild("Saber Expert") or RS:FindFirstChild("Saber Expert") then
--                     for i,v in pairs(Enemies:GetChildren()) do
--                         if v.Name == "Saber Expert" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
--                             repeat task.wait()
--                                 EWeapon(Selecttool)
--                                 ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                 v.HumanoidRootPart.Size = Vector3.new(60,60,60)
--                                 v.Humanoid.JumpPower = 0
--                                 v.Humanoid.WalkSpeed = 0
--                                 EClick()
--                             until v.Humanoid.Health <= 0 or not SaberQ or v.Humanoid.Health <= 0
--                             if v.Humanoid.Health <= 0 then
--                                 RS.Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
--                             end
--                         end
--                     end
--                 end
--             end
--         end
--     end
-- end)
-- E:AddSection({Name = "Status Zou"})
-- local bonec = E:AddLabel("Bone: N/A")
-- local killcake = E:AddLabel("Cake Remaining Kills: N/A")
-- local elitec = E:AddLabel("Elite Status: N/A")
-- spawn(function()
--     while wait() do
--         if Zou then
--             bonec:Set("Bone: "..(RS.Remotes.CommF_:InvokeServer("Bones","Check")))
--             if string.len(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
--                 killcake:Set("Cake Remaining Kills: "..string.sub(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
--             elseif string.len(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
--                 killcake:Set("Cake Remaining Kills: "..string.sub(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
--             elseif string.len(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
--                 killcake:Set("Cake Remaining Kills: "..string.sub(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
--             else
--                 if Enemies:FindFirstChild("Cake Prince") then
--                     killcake:Set("Cake Prince Has Spawned!")
--                 elseif Enemies:FindFirstChild("Dough King") then
--                     killcake:Set("Dough King Has Spawned!")
--                 end
--             end
--             if RS:FindFirstChild("Deandre") or RS:FindFirstChild("Urban") or RS:FindFirstChild("Diablo") then
--                 elitec:Set("Elite Status: Spawned!")
--             else
--                 elitec:Set("Elite Status: Not Found Elite")
--             end
--         end
--     end
-- end)
-- E:AddSection({Name = "Status Server"})
-- local bI = E:AddLabel("Player Count: " .. PlayersCount() .. "/" .. game.Players.MaxPlayers)
-- local bJ = E:AddLabel("Server Time: " .. function6() .. " | " .. function7())
-- local bL = E:AddLabel("Acient One Status: " .. tostring(CheckAcientOneStatus()))
-- task.spawn(function()
--     while task.wait() do
--         pcall(function()
--             bI:Set("Player Count: " .. PlayersCount() .. "/" .. game.Players.MaxPlayers)
--             bJ:Set("Server Time: " .. function6() .. " | " .. function7())
--             bK:Set("Player Aura Status: " .. tostring(PlayerAura_Status))
--             bL:Set("Acient One Status: " .. tostring(CheckAcientOneStatus()))
--         end)
--     task.wait(2)
--     end
-- end)
-- F:AddSection({Name = "Race V2-V3"})
-- CountChest = 0
-- local UpgradeRaceToggle = F:AddToggle({Name = "Upgrade Race V2-V3", Default = false, Callback = function(vUpgraderace23)
--     Upgraderace23 = vUpgraderace23
--     DisableTween(Upgraderace23)
-- end    
-- })
-- spawn(function()
--     while wait() do
--         if Upgraderace23 then
--             UpV3NoTween()
--         end
--         if Upgraderace23 then
--             CheckR = CheckVerRace()
--             if string.find(CheckR, "V1") then
--                 if RS.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
--                     if string.find(PG.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(PG.Main.Quest.Container.QuestTitle.Title.Text, "50") and PG.Main.Quest.Visible == true then
--                         if CheckSwan() then
--                             for i,v in pairs(Enemies:GetChildren()) do
--                                 if v.Name == "Swan Pirate" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
--                                     repeat task.wait()
--                                         EWeapon(Selecttool)
--                                         EBuso()
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                         EClick()
--                                         v.HumanoidRootPart.CanCollide = false
--                                         NoClip = true
--                                     until not Upgraderace23 or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
--                                     NoClip = false
--                                 end
--                             end
--                         else
--                             Questtween = ToTween(CFrame.new(1057.92761, 137.614319, 1242.08069))
--                         end
--                     else
--                         Bartilotween = ToTween(CFrame.new(-456.28952, 73.0200958, 299.895966))
--                         local args = {[1] = "StartQuest", [2] = "BartiloQuest", [3] = 1}
--                         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
--                     end
--                 elseif RS.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
--                     Jeremy = CheckBoss("Jeremy")
--                     if Jeremy then
--                         Target = ReturnB("Jeremy")
--                         if Enemies:FindFirstChild("Jeremy") and Target:FindFirstChild("Humanoid") and Target.Humanoid.Health > 0 then
--                             repeat task.wait()
--                                 EWeapon(Selecttool)
--                                 EBuso()
--                                 ToTween(Target.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                 EClick()
--                                 Target.HumanoidRootPart.CanCollide = false
--                                 NoClip = true
--                             until not Upgraderace23 or not Target:FindFirstChild("Humanoid") or not Target:FindFirstChild("HumanoidRootPart") or Target.Humanoid.Health <= 0
--                             NoClip = false
--                         else
--                             EBuso()
--                             EWeapon(Selecttool)
--                             ToTween(Target.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                         end
--                     else
--                         Notify("Hirimi Hub", "Not Found Boss, Start Hop", 10)
--                         HopServer()
--                     end
--                 elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
--                     StartCFrame = CFrame.new(-1837.46155,44.2921753,1656.19873,0.999881566,-1.03885048e-22,-0.0153914848,1.07805858e-22,1,2.53909284e-22,0.0153914848,-2.55538502e-22,0.999881566)
--                     if (StartCFrame.Position - LP.Character.HumanoidRootPart.Position).Magnitude > 500 then
--                         ToTween(StartCFrame)
--                     else
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
--                         wait(.5)
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
--                         wait(1)
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
--                         wait(1)
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
--                         wait(1)
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
--                         wait(1)
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
--                         wait(1)
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
--                         wait(1)
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
--                         wait(1)
--                         LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
--                     end
--                 elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
--                     if LP.Backpack:FindFirstChild("Flower 1") and LP.Backpack:FindFirstChild("Flower 2") and LP.Backpack:FindFirstChild("Flower 3") then
--                         if (CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position - LP.Character.HumanoidRootPart.Position).magnitude > 3 then
--                             Farmtween = ToTween(CFrame.new(-2777.6001, 72.9661407, -3571.42285))
--                         elseif (CFrame.new(-2777.6001, 72.9661407, -3571.42285).Position - LP.Character.HumanoidRootPart.Position).magnitude <= 3 then
--                             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3")
--                         end
--                     else
--                         RS.Remotes.CommF_:InvokeServer("Alchemist", "1")
--                         RS.Remotes.CommF_:InvokeServer("Alchemist", "2")
--                         if not LP.Backpack:FindFirstChild("Flower 1") and not LP.Character:FindFirstChild("Flower 1")then
--                             if WS.Flower1.Transparency ~= 1 then
--                                 Notify("Hirimi Hub", "Collecting Flower 1", 10)
--                                 if (WS.Flower1.Position - LP.Character.HumanoidRootPart.Position).magnitude > 300 then
--                                     Farmtween = ToTween(WS.Flower1.CFrame)
--                                 elseif (WS.Flower1.Position - LP.Character.HumanoidRootPart.Position).magnitude <= 300 then
--                                     if Farmtween then
--                                         StopTween()
--                                     end
--                                     LP.Character.HumanoidRootPart.CFrame = WS.Flower1.CFrame * CFrame.new(20, 0, 20)
--                                     LP.Character.HumanoidRootPart.CFrame = WS.Flower1.CFrame
--                                     wait(1)
--                                 end
--                             else
--                                 if game.Lighting.ClockTime > 3 and game.Lighting.ClockTime < 16 then
--                                     Notify("Hirimi Hub", "Hop Night", 10)
--                                     HopServer()
--                                 end
--                             end
--                         elseif not LP.Backpack:FindFirstChild("Flower 2") and not LP.Character:FindFirstChild("Flower 2") then
--                             if WS.Flower2.Transparency ~= 1 then
--                                 Notify("Hirimi Hub", "Collecting Flower 2", 10)
--                                 if (WS.Flower2.Position - LP.Character.HumanoidRootPart.Position).magnitude > 300 then
--                                     Farmtween = ToTween(WS.Flower2.CFrame)
--                                 elseif (WS.Flower2.Position - LP.Character.HumanoidRootPart.Position).magnitude <= 300 then
--                                     if Farmtween then
--                                         StopTween()
--                                     end
--                                     LP.Character.HumanoidRootPart.CFrame = WS.Flower2.CFrame * CFrame.new(20, 0, 20)
--                                     LP.Character.HumanoidRootPart.CFrame = WS.Flower2.CFrame
--                                     wait(1)
--                                 end
--                             end
--                         elseif not LP.Backpack:FindFirstChild("Flower 3") and not LP.Character:FindFirstChild("Flower 3") then
--                             Notify("Hirimi Hub", "Collecting Flower 3", 10)
--                             if CheckSwan() then
--                                 for i,v in pairs(Enemies:GetChildren()) do
--                                     if v.Name == "Swan Pirate" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
--                                         repeat task.wait()
--                                             EWeapon(Selecttool)
--                                             EBuso()
--                                             ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                             EClick()
--                                             v.HumanoidRootPart.CanCollide = false
--                                             NoClip = true
--                                         until not Upgraderace23 or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or LP.Backpack:FindFirstChild("Flower 3") or LP.Character:FindFirstChild("Flower 3")
--                                         NoClip = false
--                                     end
--                                 end
--                             else
--                                 if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - LP.Character.HumanoidRootPart.Position).magnitude > 300 then
--                                     Farmtween = Tweento(CFrame.new(1057.92761, 137.614319, 1242.08069))
--                                 elseif (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - LP.Character.HumanoidRootPart.Position).magnitude <= 300 then
--                                     if Farmtween then
--                                         StopTween()
--                                     end
--                                     LP.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
--                                 end
--                             end
--                         end
--                     end
--                 end
--             else
--                 if CheckR == "Human V2" then
--                     GetQuestV3()
--                     BossQuest = {
--                         ["Diamond"] = CheckBoss("Diamond"),
--                         ["Fajita"] = CheckBoss("Fajita"),
--                         ["Jeremy"] = CheckBoss("Jeremy")
--                     }
--                     sk = {}
--                     for r,v in pairs(BossQuest) do
--                         if v then
--                             table.insert(sk, r)
--                         end
--                     end
--                     sk2 = "Server Have Boss: "
--                     for r, v in pairs(sk) do
--                         sk2 = sk2 .. v .. ","
--                     end
--                     Notify("Hirimi Hub", sk2, 15)
--                     if #sk < 3 and CheckVerRace() == "Human V2" then
--                         Notify("Hirimi Hub", "Hop Server Have 3 Boss", 15)
--                         task.wait(1)
--                         HopServer()
--                     end
--                     if #sk >= 3 then
--                         for aq, cg in pairs(BossQuest) do
--                             Notify("Race: ", CheckVerRace())
--                             if cg and CheckVerRace() == "Human V2" then
--                                 Notify("Hirimi Hub", "Start Killing " .. aq .. " Boss To Up Human V3")
--                                 Target = ReturnBosses(aq)
--                                 repeat wait()
--                                     if Target and Enemies:FindFirstChild(Target.Name) and Target:FindFirstChild("Humanoid") and Target:FindFirstChild("HumanoidRootPart") and Target.Humanoid.Health > 0 then
--                                         EWeapon(Selecttool)
--                                         EBuso()
--                                         ToTween(Target.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                         EClick()
--                                         Target.HumanoidRootPart.CanCollide = false
--                                         NoClip = true
--                                     elseif Target then
--                                         EWeapon(Selecttool)
--                                         EBuso()
--                                         ToTween(Target.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
--                                     end
--                                 until not Upgraderace23 or not Target or not Target:FindFirstChild("Humanoid") or not Target:FindFirstChild("HumanoidRootPart") or Target.Humanoid.Health <= 0
--                                 NoClip = false
--                             end
--                         end
--                     end
--                 elseif CheckR == "Skypiea V2" then
--                     GetQuestV3()
--                     SkypieaPlayers = {}
--                     for r, v in pairs(game.Players:GetChildren()) do
--                         if v.Name ~= LP.Name and WS.Characters:FindFirstChild(v.Name) and v:FindFirstChild("Data") and v.Data:FindFirstChild("Race") and v.Data.Race.Value == "Skypiea" and v.Character:FindFirstChild("Humanoid") then
--                             table.insert(SkypieaPlayers, v)
--                         end
--                     end
--                     if #SkypieaPlayers > 0 then
--                         for r, v in pairs(SkypieaPlayers) do
--                             repeat wait()
--                                 TargetedPlayer = v.Name
--                                 KillStart = true
--                             until not v or not Upgraderace23 or Data.Race.Value ~= "Skypiea" or string.find(CheckVerRace(), "V3")
--                             KillStart = false
--                             TargetedPlayer = nil
--                         end
--                     else
--                         Notify("Hirimi Hub", "Not Found Player, Start Hop", 15)
--                         HopServer()
--                     end
--                 elseif CheckR == "Fishman V2" then
--                     GetQuestV3()
--                     repeat wait()
--                         BoatToggle:Set("PirateGrandBrigade")
--                         SeaEvenToggle:Set(true)
--                         wait(1)
--                     until not Upgraderace23 or not CheckVerRace() == "Fishman V2" or not string.find(CheckVerRace(), "Fish")
--                     SeaEvenToggle:Set(false)
--                     BoatToggle:Set("")
--                 elseif CheckR == "Ghoul V2" then
--                     GetQuestV3()
--                     repeat wait()
--                         KillStart = true
--                         wait(1)
--                     until not Upgraderace23 or game.Players.LocalPlayer.Data.Race.Value ~= "Ghoul" or string.find(CheckVerRace(), "V3")
--                     KillStart = false
--                 elseif CheckR == "Cyborg V2" then
--                     GetQuestV3()
--                     if not DFinBP() then
--                         repeat wait()
--                             frr = GetFruitBelow1M()
--                             if frr then
--                                 LoadFruit(frr)
--                             end
--                         until DFinBP()
--                         UpV3NoTween()
--                     end
--                 elseif CheckR == "Mink V2" then
--                     GetQuestV3()
--                     local ch = ChestNearF()
--                     if ch and CheckR ~= "Mink V3" then
--                         ToTween(ch)
--                         CountChest = CountChest + 1
--                         Notify("Hirimi Hub", "Remaning " .. 30 - CountChest .. " Chest", 7.5)
--                         if CountChest >= 30 then
--                             UpV3NoTween()
--                             Notify("Hirimi Hub", "Race Status: " .. tostring(RS.Remotes.CommF_:InvokeServer("Wenlocktoad", "info")))
--                         end
--                     elseif ch == nil then
--                         repeat wait()
--                             local ch = ChestNearF()
--                         until ch ~= nil
--                     end
--                 end
--                 if string.find(CheckR, "V3") or string.find(CheckR, "V4") then
--                     UpgradeRaceToggle:Set(false)
--                 end
--             end
--         end
--     end         
-- end)
-- F:AddSection({Name = "Race V4"})
-- F:AddToggle({Name = "Finish Trial Race", Default = false, Callback = function(vRaceTrial)
--     RaceTrial = vRaceTrial
--     DisableTween(RaceTrial)
-- end    
-- })
-- task.spawn(function()
--     while task.wait() do
--         if RaceTrial then
--             if WS.Map:FindFirstChild("FishmanTrial") then
--                 if CheckSeaBeastTrial() and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CheckSeaBeastTrial().HumanoidRootPart.Position).Magnitude <= 2000 then
--                     spawn(TeleportSeabeast(CheckSeaBeastTrial()), 1)
--                     getgenv().psskill = CheckSeaBeastTrial().HumanoidRootPart.CFrame
--                     chodienspamhirimixienchetcuchungmay = true
--                 else
--                     getgenv().psskill = nil
--                     chodienspamhirimixienchetcuchungmay = false
--                 end
--             elseif WO.Map:FindFirstChild("HumanTrial") and WO.Locations:FindFirstChild("Trial of Strength") then
--                 for i,v in pairs(Enemies:GetChildren()) do
--                     if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
--                         repeat task.wait()
--                             EWeapon(Selecttool)
--                             EBuso()
--                             ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                             EClick()
--                             v.HumanoidRootPart.CanCollide = false
--                             NoClip = true
--                         until not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not RaceTrial or not WO.Map:FindFirstChild("HumanTrial") or not WO.Locations:FindFirstChild("Trial of Strength")
--                     end
--                 end
--             elseif WS.Map:FindFirstChild("GhoulTrial") and WO.Locations:FindFirstChild("Trial of Carnage") then
--                 for i,v in pairs(Enemies:GetChildren()) do
--                     if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
--                         repeat task.wait()
--                             EWeapon(Selecttool)
--                             EBuso()
--                             ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                             EClick()
--                             v.HumanoidRootPart.CanCollide = false
--                             NoClip = true
--                         until not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not RaceTrial or not WS.Map:FindFirstChild("GhoulTrial") or not WO.Locations:FindFirstChild("Trial of Carnage")
--                     end
--                 end
--             elseif Data.Race.Value == "Skypiea" then
--                 local v = WS.Map.SkyTrial.Model.FinishPart
--                 if (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
--                     wait(2)
--                     ToTween(v.CFrame)
--                     NoClip = true
--                     wait(3)
--                 end
--             elseif Data.Race.Value == "Mink" then
--                 local c0 = game:GetService("Workspace").StartPoint
--                 if (c0.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
--                     ToTween(c0.CFrame)
--                     NoClip = false
--                     for r, v in pairs(game:GetDescendants()) do
--                         if v:IsA("TouchInterest") or v.Name == "TouchInterest" then
--                             if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
--                                 firetouchinterest(v)
--                             end
--                         end
--                     end
--                 end
--             elseif Data.Race.Value == "Cyborg" then
--                 CyborgBypassCFrame =CFrame.new(-20021.8691,10090.4893,-16.37994,-0.976144373,6.71342875e-08,-0.217122361,8.46145412e-08,1,-7.1212007e-08,0.217122361,-8.78849065e-08,-0.976144373)
--                 if (CyborgBypassCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
--                     ToTween(CyborgBypassCFrame)
--                     wait(3)
--                 end
--             end
--         end
--     end
-- end)
-- F:AddToggle({Name = "Kill Player After Trial", Default = false, Callback = function(vKillTrials)
--     KillTrials = vKillTrials
--     DisableTween(KillTrials)
-- end    
-- })
-- task.spawn(function()
--     while task.wait() do
--         if KillTrials then
--             for i,v in pairs(WS.Characters:GetChildren()) do
--                 magnitude = (LP.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
--                 if magnitude <= 300 and v ~= game.Players.LocalPlayer.Character then
--                     repeat task.wait()
--                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,8,0))
--                         EWeapon(Selecttool)
--                         EBuso()
--                         EClick()
--                         NoClip = true
--                         SpamEnable = true
--                     until not KillPlayer or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid")
--                     NoClip = false
--                     SpamEnable = false
--                 end
--             end
--         end
--         if SpamEnable then
--             local SW = checkskillSword()
--             local ML = checkskillMelee()
--             if SW then
--                 local CheckSW = checkskillSword()
--                 SendKeyEvents(CheckSW)
--             elseif ML then
--                 local CheckML = checkskillMelee()
--                 SendKeyEvents(CheckML)
--             end
--         end
--     end
-- end)
-- F:AddToggle({Name = "Choose Gear", Default = false, Callback = function(vChooseGear)
--     ChooseGear = vChooseGear
--     DisableTween(ChooseGear)
-- end    
-- })
-- spawn(function()
--     while wait() do
--         if ChooseGear then
--             InstantChooseGear()
--         end
--     end
-- end)
-- F:AddSection({Name = "Temple Of Time & Mirage Island"})
-- F:AddButton({Name = "Teleport Temple Of Time", Callback = function()
--     TTemplateT()
-- end    
-- })
-- F:AddButton({Name = "Teleport Lever", Callback = function()
--     TTemplateT()
--     ToTween(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
-- end    
-- })
-- F:AddButton({Name = "Teleport Acient One", Callback = function()
--     TTemplateT()
--     ToTween(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
-- end    
-- })
-- F:AddButton({Name = "Teleport Trial Door", Callback = function()
--     TTemplateT()
--     local raceval = game:GetService("Players").LocalPlayer.Data.Race.Value
--     if raceval == "Fishman" then
--         ToTween(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
--     elseif raceval == "Human" then
--         ToTween(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
--     elseif raceval == "Cyborg" then
--         ToTween(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
--     elseif raceval == "Skypiea" then
--         ToTween(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
--     elseif raceval == "Ghoul" then
--         ToTween(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
--     elseif raceval == "Mink" then
--         ToTween(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
--     end
-- end    
-- })
-- F:AddButton({Name = "Find Blue Gear", Callback = function()
--     TimBlueGearDitmemay()
-- end    
-- })
-- F:AddButton({Name = "Find Advanced Fruit Dealer", Callback = function()
--     FindAdvancedDealer()
-- end    
-- })
-- F:AddToggle({Name = "Lock Cam Moon", Default = false, Callback = function(vLockMoon)
--     LockMoon = vLockMoon
-- end    
-- })
-- F:AddToggle({Name = "Tween To Mystic Island", Default = false, Callback = function(vMIsland)
--     MIsland = vMIsland
-- end    
-- })
-- Loop:Connect(function()
--     if LockMoon then
--         WS.CurrentCamera.CFrame = CFrame.new(WS.CurrentCamera.CFrame.Position,game:GetService("Lighting"):GetMoonDirection() + WS.CurrentCamera.CFrame.Position)
--     end
--     if MIsland then
--         if WS.Map:FindFirstChild("MysticIsland") then
--             ToTween(CFrame.new(WS.Map.MysticIsland.Center.Position.X,500,WS.Map.MysticIsland.Center.Position.Z))
--             NoClip = true
--         else
--             NoClip = false
--         end
--     else
--         NoClip = false
--     end
-- end)
-- D:AddSection({Name = "Kitsune Update"})
-- local KisuneUpToggle = D:AddToggle({Name = "Tween to Kitsune Island", Default = false, Callback = function(vKitsuneI)
--     KitsuneI = vKitsuneI
--     DisableTween(KitsuneI)
--     if KitsuneI then
--         repeat ToTween(WO.Locations:FindFirstChild("Kitsune Island").CFrame) wait() until KitsuneI == false
--     end
-- end    
-- })
-- spawn(function()
--     while task.wait() do
--         if KitsuneI then
--             for i,v in pairs(WO.Locations:GetChildren()) do
--                 if v:FindFirstChild("Kitsune Island") then
--                     ToTween(v:FindFirstChild("Kitsune Island"))
--                     NoClip = true
--                 else
--                     NoClip = false
--                 end
--             end
--         end
--         if AzuEmber then
--             for i,v in pairs(WS.EmberTemplate:GetChildren()) do
--                 if v.Name == "Part" then
--                     LP.Character.HumanoidRootPart.CFrame = v.CFrame
--                 end
--             end
--         end
--     end
-- end)
-- local FarmAzure = D:AddToggle({Name = "Farm Azure Ember", Default = false, Callback = function(vAzuEmber)
--     AzuEmber = vAzuEmber
--     DisableTween(AzuEmber)
-- end    
-- })
-- if Dressora then
--     CFrameBoat = CFrame.new(-13.488054275512695, 10.311711311340332, 2927.69287109375)
--     Vector3Boat = Vector3.new(-13.488054275512695, 10.311711311340332, 2927.69287109375)
-- elseif Zou then
--     CFrameBoat = CFrame.new(-16207.501953125, 9.0863618850708, 475.1490783691406)
--     Vector3Boat = Vector3.new(-16207.501953125, 9.0863618850708, 475.1490783691406)
-- end
-- G:AddSection({Name = "Sea Event"})
-- local BoatToggle = G:AddDropdown({Name = "Select Boat", Default = "", Options = {"PirateBrigade", "PirateGrandBrigade"}, Callback = function(vsboatc)
-- 		BoatSelect = vsboatc
-- 	end    
-- })
-- if Zou then
--     G:AddDropdown({Name = "Select Zone", Default = "", Options = {"Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"}, Callback = function(vZone)
--             ZoneSelect = vZone
--         end    
--     })
-- end
-- game:GetService("RunService").RenderStepped:Connect(function()
--     if BoatSelect == "PirateBrigade" then
--         BoatNameBuy = "PirateBrigade"
--     elseif BoatSelect == "PirateGrandBrigade" then
--         BoatNameBuy = "PirateGrandBrigade"
--     end
--     if ZoneSelect == "Zone 1" then
--         if BoatSelect == "PirateBrigade" then
--             ZoneCFrame = CFrame.new(-21313.607421875, 12.560698509216309, 1330.6165771484375)
--         elseif BoatSelect == "PirateGrandBrigade" then
--             ZoneCFrame = CFrame.new(-21313.607421875, 45.95185470581055, 1330.6165771484375)
--         end
--     elseif ZoneSelect == "Zone 2" then
--         if BoatSelect == "PirateBrigade" then
--             ZoneCFrame = CFrame.new(-24815.267578125, 12.560657501220703, 5262.62060546875)
--         elseif BoatSelect == "PirateGrandBrigade" then
--             ZoneCFrame = CFrame.new(-24815.267578125, 45.90665817260742, 5262.62060546875)
--         end
--     elseif ZoneSelect == "Zone 3" then
--         if BoatSelect == "PirateBrigade" then
--             ZoneCFrame = CFrame.new(-28464.876953125, 12.553319931030273, 6896.8076171875)
--         elseif BoatSelect == "PirateGrandBrigade" then
--             ZoneCFrame = CFrame.new(-28464.876953125, 45.90665817260742, 6896.8076171875)
--         end
--     elseif ZoneSelect == "Zone 4" then
--         if BoatSelect == "PirateBrigade" then
--             ZoneCFrame = CFrame.new(-30294.8515625, 12.554117202758789, 10409.8564453125)
--         elseif BoatSelect == "PirateGrandBrigade" then
--             ZoneCFrame = CFrame.new(-30294.8515625, 45.95185470581055, 10409.8564453125)
--         end
--     elseif ZoneSelect == "Zone 5" then
--         if BoatSelect == "PirateBrigade" then
--             ZoneCFrame = CFrame.new(-37704.828125, 12.561018943786621, 6750.69873046875)
--         elseif BoatSelect == "PirateGrandBrigade" then
--             ZoneCFrame = CFrame.new(-37704.828125, 45.90665817260742, 6750.69873046875)
--         end
--     elseif ZoneSelect == "Zone 6" or ZoneSelect == nil then
--         if BoatSelect == "PirateBrigade" then
--             ZoneCFrame = CFrame.new(-32704.103515625, 12.557344436645508, 24089.923828125)
--         elseif BoatSelect == "PirateGrandBrigade" then
--             ZoneCFrame = CFrame.new(-32704.103515625, 45.90665817260742, 24089.923828125)
--         end
--     end
-- end)
-- local SeaEvenToggle = G:AddToggle({Name = "Quest Sea Events", Default = false, Callback = function(vSeaEvent)
--     SeaEvent = vSeaEvent
--     DisableTween(vSeaEvent)
-- end    
-- })
-- spawn(function()
--     while task.wait() do
--         if SeaEvent then
--             pcall(function()
--                 if not CheckSeaBeast() and not CheckPirateBoat() and not Enemies:FindFirstChild("Shark") and not Enemies:FindFirstChild("Piranha") and not Enemies:FindFirstChild("Terrorshark") and not Enemies:FindFirstChild("Fish Crew Member") and not Enemies:FindFirstChild("FishBoat") then
--                     if not checkboat() then
--                         if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude > 2000 then
--                             BypassTele(CFrameBoat)
--                         else
--                             ToTween(CFrameBoat)
--                             NoClip = true
--                             if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude < 20 then
--                                 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", BoatNameBuy)
--                             end
--                         end
--                     elseif checkboat() and not WO.Locations:FindFirstChild("Rough Sea") then
--                         if (checkboat().VehicleSeat.Position - Vector3Boat).Magnitude > 50 then
--                             checkboat().VehicleSeat.CFrame = ZoneCFrame
--                         end
--                         if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
--                             NoClip = true
--                             ToTween(checkboat().VehicleSeat.CFrame)
--                         else
--                             NoClip = false
--                         end
--                     elseif checkboat() and WO.Locations:FindFirstChild("Rough Sea") then
--                         if LP.Character.Humanoid.Sit then
--                             LP.Character.Humanoid.Sit = false
--                         end
--                         if (checkboat().VehicleSeat.Position - Vector3Boat).Magnitude > 50 then
--                             checkboat().VehicleSeat.CFrame = CFrame.new(-28464.876953125, 12.553319931030273, 6896.8076171875)
--                         end
--                         if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
--                             NoClip = true
--                             ToTween(checkboat().VehicleSeat.CFrame)
--                         else
--                             NoClip = false
--                         end
--                     elseif not checkboat() and WO.Locations:FindFirstChild("Rough Sea") then
--                         if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude > 2000 then
--                             BypassTele(CFrameBoat)
--                         end
--                     end
--                 elseif CheckPirateBoat() then
--                     if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
--                         game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
--                     end
--                     for i,v in pairs(Enemies:GetChildren()) do
--                         if v:FindFirstChild("Engine") then
--                             repeat task.wait()
--                                 ToTween(v.Engine.CFrame * CFrame.new(0, -20, 0))
--                                 chodienspamhirimixienchetcuchungmay = true
--                                 NoClip = true
--                                 getgenv().psskill = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
--                             until not v or not v.Parent or v.Health.Value <= 0 or not CheckPirateBoat() or not SeaEvent
--                             getgenv().psskill = nil
--                             chodienspamhirimixienchetcuchungmay = false
--                             NoClip = false
--                         end
--                     end
--                 elseif CheckSeaBeast() then
--                     if LP.Character.Humanoid.Sit then
--                         LP.Character.Humanoid.Sit = false
--                     end
--                     local v = CheckSeaBeast()
--                     repeat
--                         task.wait()
--                         if LP.Character.Humanoid.Health > 8000 then
--                             spawn(TeleportSeabeast(v), 1)
--                             chodienspamhirimixienchetcuchungmay = true
--                         elseif LP.Character.Humanoid.Health <= healthlow then
--                             if YTween then
--                                 ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
--                                 chodienspamhirimixienchetcuchungmay = false
--                             else
--                                 spawn(TeleportSeabeast(v), 1)
--                                 chodienspamhirimixienchetcuchungmay = true
--                             end
--                         end
--                         NoClip = true
--                         getgenv().psskill = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
--                     until not v or not v.Parent or v.Health.Value <= 0 or not CheckSeaBeast() or not SeaEvent
--                     getgenv().psskill = nil
--                     chodienspamhirimixienchetcuchungmay = false
--                     NoClip = false
--                 elseif Enemies:FindFirstChild("Shark") then
--                     if LP.Character.Humanoid.Sit then
--                         LP.Character.Humanoid.Sit = false
--                     end
--                     for i,v in pairs(Enemies:GetChildren()) do
--                         if v.Name == "Shark" and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
--                             repeat task.wait()
--                                 EBuso()
--                                 EWeapon(Selecttool)
--                                 if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
--                                     ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                     game:GetService("VirtualUser"):CaptureController()
--                                     game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                 elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
--                                     if YTween then
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
--                                     else
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                         game:GetService("VirtualUser"):CaptureController()
--                                         game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                     end
--                                 end
--                                 NoClip = true
--                             until not Enemies:FindFirstChild("Shark") or v.Humanoid.Health <= 0 or not SeaEvent
--                             NoClip = false
--                         end
--                     end
--                 elseif Enemies:FindFirstChild("Piranha") then
--                     if LP.Character.Humanoid.Sit then
--                         LP.Character.Humanoid.Sit = false
--                     end
--                     for i,v in pairs(Enemies:GetChildren()) do
--                         if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Piranha") and v.Humanoid.Health > 0 then
--                             repeat task.wait()
--                                 EBuso()
--                                 EWeapon(Selecttool)
--                                 if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
--                                     ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                     game:GetService("VirtualUser"):CaptureController()
--                                     game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                 elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
--                                     if YTween then
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
--                                     else
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
--                                         game:GetService("VirtualUser"):CaptureController()
--                                         game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                     end
--                                 end
--                                 NoClip = true
--                             until not Enemies:FindFirstChild("Piranha") or v.Humanoid.Health <= 0 or not SeaEvent
--                             NoClip = false
--                         end
--                     end
--                 elseif Enemies:FindFirstChild("Terrorshark") then
--                     if LP.Character.Humanoid.Sit then
--                         LP.Character.Humanoid.Sit = false
--                     end
--                     for i,v in pairs(Enemies:GetChildren()) do
--                         if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
--                             repeat task.wait()
--                                 EBuso()
--                                 EWeapon(Selecttool)
--                                 NoClip = true
--                                 if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
--                                     ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
--                                     game:GetService("VirtualUser"):CaptureController()
--                                     game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                 elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
--                                     if YTween then
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
--                                     else
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
--                                         game:GetService("VirtualUser"):CaptureController()
--                                         game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                     end
--                                 end
--                             until not Enemies:FindFirstChild("Terrorshark") or v.Humanoid.Health <= 0 or not SeaEvent
--                             NoClip = false
--                         end
--                     end
--                 elseif Enemies:FindFirstChild("FishBoat") and Enemies:FindFirstChild("Fish Crew Member") then
--                     if LP.Character.Humanoid.Sit then
--                         LP.Character.Humanoid.Sit = false
--                     end
--                     for i,v in pairs(Enemies:GetChildren()) do
--                         if v:FindFirstChild("VehicleSeat") then
--                             repeat task.wait()
--                                 ToTween(v.VehicleSeat.CFrame * CFrame.new(0, -10, 0))
--                                 game:GetService("VirtualUser"):CaptureController()
--                                 game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                 chodienspamhirimixienchetcuchungmay = true
--                                 NoClip = true
--                                 getgenv().psskill = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
--                             until not v or not v.Parent or v.Health.Value <= 0 or not Enemies:FindFirstChild("FishBoat") or not SeaEvent
--                             getgenv().psskill = nil
--                             chodienspamhirimixienchetcuchungmay = false
--                             NoClip = false
--                         end
--                     end
--                 elseif not Enemies:FindFirstChild("FishBoat") and Enemies:FindFirstChild("Fish Crew Member") then
--                     if LP.Character.Humanoid.Sit then
--                         LP.Character.Humanoid.Sit = false
--                     end
--                     for i,v in pairs(Enemies:GetChildren()) do
--                         if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Fish Crew Member") and v.Humanoid.Health > 0 then
--                             repeat task.wait()
--                                 EBuso()
--                                 EWeapon(Selecttool)
--                                 NoClip = true
--                                 if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
--                                     ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
--                                     game:GetService("VirtualUser"):CaptureController()
--                                     game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                 elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
--                                     if YTween then
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
--                                     else
--                                         ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
--                                         game:GetService("VirtualUser"):CaptureController()
--                                         game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
--                                     end
--                                 end
--                             until not Enemies:FindFirstChild("Fish Crew Member") or v.Humanoid.Health <= 0 or not SeaEvent
--                             NoClip = false
--                         end
--                     end
--                 end
--             end)
--         end
--     end       
-- end)
-- G:AddSection({Name = "Low Health"})
-- G:AddSlider({Name = "Set Low Health", Min = 0, Max = 13095, Default = 4000, Color = Color3.fromRGB(255,255,255), Increment = 1, ValueName = "Health", Callback = function(vhealthlow)
--     healthlow = vhealthlow
-- 	end    
-- })
-- G:AddToggle({Name = "Low Health Y Tween", Default = true, Callback = function(vYTween)
-- 	YTween = vYTween
-- end    
-- }) 
-- G:AddSlider({Name = "Set Speed", Min = 0, Max = 600, Default = 250, Color = Color3.fromRGB(255,255,255), Increment = 1, ValueName = "Health", Callback = function(vsetspeedboat)
--     setspeedboat = vsetspeedboat
-- 	end    
-- })
-- G:AddSection({Name = "Speed Boat"})
-- G:AddToggle({Name = "Change Speed Boat", Default = false, Callback = function(vSpeedBoat)
-- 	SpeedBoat = vSpeedBoat
-- end    
-- }) 
-- game:GetService("RunService").RenderStepped:Connect(function()
--     if SpeedBoat then
--         for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
--             if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
--                 v:FindFirstChild("VehicleSeat").MaxSpeed = setspeedboat
--             end
--         end
--     end
-- end)
-- G:AddSection({Name = "Spam Skill"})
-- G:AddToggle({Name = "Spam Melee", Default = true, Callback = function(Value)
-- 	SpamMelees = Value
-- end    
-- }) 
-- G:AddToggle({Name = "Spam Sword", Default = true, Callback = function(Value)
-- 	SpamSwords = Value
-- end    
-- }) 
-- G:AddToggle({Name = "Spam Gun", Default = true, Callback = function(Value)
-- 	SpamGuns = Value
-- end    
-- }) 
-- G:AddToggle({Name = "Spam Devil Fruit", Default = false, Callback = function(Value)
-- 	SpamDFs = Value
-- end    
-- })
-- H:AddDropdown({Name = "Select Melee", Default = "", Options = {
-- 		"Dark Step",
-- 		"Electro",
-- 		"Fishman Karate",
-- 		"Dragon Claw",
-- 		"SuperHuman",
-- 		"Death Step",
-- 		"Electric Claw",
-- 		"SharkMan Karate",
-- 		"Dragon Talon",
-- 		"God Human",
--         "Seguine Art"
--     },
-- 	Callback = function(vMelee)
-- 		_G.BuyMelee = vMelee
-- 	end    
-- })
-- H:AddButton({
-- 	Name = "Buy Melee",
-- 	Callback = function() 
--       	if _G.BuyMelee == "Dark Step" then
--             RS.Remotes.CommF_:InvokeServer("BuyBlackLeg")
--         elseif _G.BuyMelee == "Electro" then
--             RS.Remotes.CommF_:InvokeServer("BuyElectro")
--         elseif _G.BuyMelee == "Fishman Karate" then
--             RS.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
--         elseif _G.BuyMelee == "Dragon Claw" then
--             RS.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
--             RS.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
--         elseif _G.BuyMelee == "SuperHuman" then
--             RS.Remotes.CommF_:InvokeServer("BuySuperhuman")
--         elseif _G.BuyMelee == "Death Step" then
--             RS.Remotes.CommF_:InvokeServer("BuyDeathStep")
--         elseif _G.BuyMelee == "Electric Claw" then
--             RS.Remotes.CommF_:InvokeServer("BuyElectricClaw")
--         elseif _G.BuyMelee == "SharkMan Karate" then
--             RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
--             RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
--         elseif _G.BuyMelee == "Dragon Talon" then
--             RS.Remotes.CommF_:InvokeServer("BuyDragonTalon")
--         elseif _G.BuyMelee == "God Human" then
--             RS.Remotes.CommF_:InvokeServer("BuyGodhuman")
--         elseif _G.BuyMelee == "Seguine Art" then
--             RS.Remotes.CommF_:InvokeServer("BuySanguineArt")
--         end
--     end
-- })
-- H:AddButton({Name = "Buy Race Ghoul", Callback = function()
--     local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
--         RS.Remotes.CommF_:InvokeServer(unpack(args))
--     local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
--         RS.Remotes.CommF_:InvokeServer(unpack(args))
--   	end    
-- })
-- H:AddButton({Name = "Buy Race Cyborg", Callback = function()
--         local args = {[1] = "CyborgTrainer", [2] = "Buy"}
--         RS.Remotes.CommF_:InvokeServer(unpack(args))
--   	end    
-- })
-- H:AddButton({Name = "Buy Buso Haki", Callback = function()
--       	RS.Remotes.CommF_:InvokeServer("BuyHaki","Buso")
--   	end    
-- })
-- H:AddButton({Name = "Buy Geppo", Callback = function()
--       	RS.Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
--   	end    
-- })
-- H:AddButton({Name = "Buy Soru", Callback = function()
--       	RS.Remotes.CommF_:InvokeServer("BuyHaki","Soru")
--   	end    
-- })
-- H:AddButton({Name = "Buy Ken(Observation)", Callback = function()
--       	RS.Remotes.CommF_:InvokeServer("KenTalk","Buy")
--   	end    
-- })
-- H:AddButton({Name = "Reset Stats", Callback = function()
--         RS.Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
--         RS.Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
--   	end    
-- })
-- H:AddButton({Name = "Race Reroll", Callback = function()
--         RS.Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
-- 	    RS.Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
--   	end    
-- })
-- I:AddButton({Name = "Random Fruit", Callback = function()
--       	RS.Remotes.CommF_:InvokeServer("Cousin","Buy")
--   	end    
-- }) 
-- I:AddButton({Name = "DevilFruit Shop", Callback = function()
--         RS.Remotes.CommF_:InvokeServer("GetFruits")
--       	PG.Main.FruitShop.Visible = true
--   	end    
-- }) 
-- I:AddToggle({Name = "Store Fruit", Default = false, Callback = function(vSTORE)
-- 		fSTORE = vSTORE
-- 	end    
-- })
-- I:AddToggle({
-- 	Name = "TeleFruit",
-- 	Default = false,
-- 	Callback = function(vTPFruit)
-- 		TPFruit = vTPFruit
-- 	end    
-- }) 
-- spawn(function()
--     while wait(.1) do
--         if TPFruit then
--             for i,v in pairs(WS:GetChildren()) do
--                 if string.find(v.Name, "Fruit") then
--                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
--                 end
--             end
--         end
--         if fSTORE then
--             StoreFruit()
-- 		end
--     end
-- end)
-- K:AddButton({Name = "Rejoin Server", Callback = function()
--     game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
-- end    
-- })
-- K:AddButton({Name = "Hop Server", Callback = function()
--     HopServer()
-- end    
-- })
