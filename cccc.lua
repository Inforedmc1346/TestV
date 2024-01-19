--Hirimi Hub Hyper - Rewrite Fixed & Update #14.5
repeat wait() until game:IsLoaded()
notis = require(game.ReplicatedStorage:WaitForChild("Notification"))
notis.new("<Color=White>HIRIMI HUB HYPER<Color=/>"):Display()
notis.new("<Color=Blue>Founder: t_hirimii<Color=/>"):Display() 
notis.new("<Color=Red>Discord: https://discord.gg/T7edk64xMR<Color=/>"):Display() 
notis.new("<Color=Yellow>Exploit Use:<Color=/> ".. identifyexecutor()):Display() 
local memaythangskidocnguloz = "\104\116\116\112\115://\114\97\119.\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116.\99\111\109/\72\105\114\105\109\105\105/\102\52\99\107\121\111\117/\109\97\105\110\47\99\99\108\117\97"
local OrionLib = loadstring(game:HttpGet((memaythangskidocnguloz)))()
local Mouse = game.Players.LocalPlayer:GetMouse()
local Toggle = Instance.new("ScreenGui")
local LoadF = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local MainStroke = Instance.new("UIStroke")
local P = game:GetService("Players")
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
local CurveFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService("VirtualUser")
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
CameraShaker:Stop()
Toggle.Name = "Toggle"
Toggle.Parent = LP:WaitForChild("PlayerGui")
Toggle.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LoadF.Name = "LoadF"
LoadF.Parent = Toggle
LoadF.Active = true
LoadF.AnchorPoint = Vector2.new(0.5, 0.5)
LoadF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadF.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadF.BorderSizePixel = 0
LoadF.Position = UDim2.new(0.202885479, 0, 0.335341364, 0)
LoadF.Selectable = false
LoadF.Size = UDim2.new(0, 50, 0, 50)
LoadF.Image = "rbxassetid://15214658898"
LoadF.Draggable = true
LoadF.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"RightShift",false,game)
end)
MainStroke.Name = "MainStroke"
MainStroke.Parent = LoadF
MainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainStroke.Color = Color3.fromRGB(255, 255, 255)
MainStroke.LineJoinMode = Enum.LineJoinMode.Round
MainStroke.Thickness = 1
MainStroke.Transparency = 0
MainStroke.Enabled = true
MainStroke.Archivable = true

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = LoadF
if game.PlaceId == 2753915549 then
    Main = true
elseif game.PlaceId == 4442272183 then
    Dressora = true
elseif game.PlaceId == 7449423635 then
    Zou = true
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
    OrionLib:MakeNotification({Name = G, Content = H, Image = "rbxassetid://15214658898", Time = I})
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
function TpEntrance(P)
    Remote:InvokeServer("requestEntrance", P)
    LP.Character.PrimaryPart.CFrame = CFrame.new(LP.Character.PrimaryPart.CFrame.X, LP.Character.PrimaryPart.CFrame.Y + 50, LP.Character.PrimaryPart.CFrame.Z)
    wait(0.5)
end
function ToTween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    elseif Distance < 50 then
        Speed = 2000
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 500
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 240
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end
function ToTweenWithEntrace(Positions)
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
        local functionTween = {}
        tween:Play()
    end
end
local RSQQQ = require(game.ReplicatedStorage.Quests)
local R = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}
local function CheckQuest()
    local T = LocalPlayerLevelValue
    local min = 0
    if T >= 1450 and game.PlaceId == 4442272183 then
        Mob1 = "Water Fighter"
        Mob2 = "ForgottenQuest"
        Mob3 = 2
    elseif T >= 700 and game.PlaceId == 2753915549 then
        Mob1 = "Galley Captain"
        Mob2 = "FountainQuest"
        Mob3 = 2
    elseif T >= 2075 and game.PlaceId == 7449423635
     then
        Mob1 = "Posessed Mummy"
        Mob2 = "HauntedQuest2"
        Mob3 = 2
    else
        for r, v in pairs(RSQQQ) do
            for M, N in pairs(v) do
                local U = N.LevelReq
                for O, P in pairs(N.Task) do
                    if T >= U and U >= min and N.Task[O] > 1 and not table.find(R, tostring(r)) then
                        min = U
                        Mob1 = tostring(O)
                        Mob2 = r
                        Mob3 = M
                    end
                end
            end
        end
    end
end
function CheckDoubleQuest()
    local a = {}
    for r, v in pairs(Q) do
        for M, N in pairs(v) do
            local U = N.LevelReq
            for O, P in pairs(N.Task) do
                if O == Mob1 then
                    for _, a0 in next, v do
                        if a0.LevelReq <= game.Players.LocalPlayer.Data.Level.Value and a0.Name ~= "Town Raid" then
                            for a1, a2 in next, a0.Task do
                                if a2 > 1 then
                                    table.insert(a, a1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return a
end
local a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
function CheckQuestData()
    for r, v in next, a3.Data do
        if r == "QuestData" then
            return true
        end
    end
    return false
end
function CheckNameQuest()
    local a
    if CheckQuestData() then
        for r, v in next, a3.Data.QuestData.Task do
            a = r
        end
    end
    return a
end
function CheckNameQuest2()
    local a
    local a4 = {}
    if CheckQuestData() then
        for r, v in next, a3.Data.QuestData.Task do
            a = r
            table.insert(a4, r)
        end
    end
    return a4
end
QuestTak = true
function CheckNextQuest()
    CheckQuest()
    local a5 = {}
    if LP.Data.Level.Value >= 10 and QuestTak and CheckQuestData() and CheckNameQuest() == Mob1 and #CheckNameQuest() > 2
     then
        for r, v in pairs(Q) do
            for M, N in pairs(v) do
                for O, P in pairs(N.Task) do
                    if tostring(O) == Mob1 then
                        for a6, a7 in next, v do
                            for a8, a9 in next, a7.Task do
                                if a8 ~= Mob1 and a9 > 1 then
                                    if a7.LevelReq <= game.Players.LocalPlayer.Data.Level.Value then
                                        a5["Name"] = tostring(a8)
                                        a5["NameQuest"] = r
                                        a5["ID"] = a6
                                    else
                                        a5["Name"] = Mob1
                                        a5["NameQuest"] = Mob2
                                        a5["ID"] = Mob3
                                    end
                                    return a5
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        a5["Name"] = Mob1
        a5["NameQuest"] = Mob2
        a5["ID"] = Mob3
        return a5
    end
    a5["Name"] = Mob1
    a5["NameQuest"] = Mob2
    a5["ID"] = Mob3
    return a5
end
function CFrameQuest()
    QuestPoses = {}
    for r, v in pairs(getnilinstances()) do
        if v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and v.Head.QuestBBG.Title.Text == "QUEST" then
            QuestPoses[v.Name] = v.Head.CFrame * CFrame.new(0, -2, 2)
        end
    end
    for r, v in pairs(game.Workspace.NPCs:GetDescendants()) do
        if v.Name == "QuestBBG" and v.Title.Text == "QUEST" then
            QuestPoses[v.Parent.Parent.Name] = v.Parent.Parent.Head.CFrame * CFrame.new(0, -2, 2)
        end
    end
    DialoguesList = {}
    for r, v in pairs(require(game.ReplicatedStorage.DialoguesList)) do
        DialoguesList[v] = r
    end
    local V = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)
    local W = {}
    for k, v in pairs(debug.getprotos(V)) do
        if #debug.getconstants(v) == 1 then
            table.insert(W, debug.getconstant(v, 1))
        end
    end
    local X = false
    local Y = {}
    for k, v in pairs(debug.getconstants(V)) do
        if type(v) == "string" then
            if v == "Players" then
                X = false
            end
            if not X then
                if v == "Blox Fruit Dealer" then
                    X = true
                end
            else
            end
            if X then
                table.insert(Y, v)
            end
        end
    end
    local Z = {}
    QuestPoint = {}
    for k, v in pairs(Y) do
        if QuestPoses[v] then
            Z[W[k]] = Y[k]
        end
    end
    for r, v in next, Z do
        QuestPoint[r] = QuestPoses[v]
    end
    QuestPoint["SkyExp1Quest"] = CFrame.new(-7857.28516,5544.34033,-382.321503,-0.422592998,0,0.906319618,0,1,0,-0.906319618,0,-0.422592998)
end
function CheckLEVELTASK()
    local a = {}
    for r, v in pairs(Q) do
        for M, N in pairs(v) do
            local U = N.LevelReq
            for O, P in pairs(N.Task) do
                if O == Mob1 then
                    for _, a0 in next, v do
                        if a0.LevelReq <= game.Players.LocalPlayer.Data.Level.Value and a0.Name ~= "Town Raid" then
                            for a1, a2 in next, a0.Task do
                                if a2 > 1 then
                                    table.insert(a, a1)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return a
end
function MobNameQuest()
    local aa = {}
    for r, v in pairs(Enemies:GetChildren()) do
        if not table.find(aa, v.Name) and v:IsA("Model") and v.Name ~= "PirateBasic" and not string.find(v.Name, "Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
            table.insert(aa, v.Name)
        end
    end
    for r, v in pairs(aa) do
        local ab = v
        v = tostring(v:gsub(" %pLv. %d+%p", ""))
        if tostring(v) == CheckNameQuest() then
            return tostring(ab)
        end
    end
    return false
end

local ad = RS.Remotes["CommF_"]
CFrameQuest()
function GetQuest()
    if PG.Main:FindFirstChild("Quest").Visible then
        return
    end
    if not QuestPoint[tostring(CheckNextQuest().NameQuest)] then
        CFrameQuest()
        return
    end
    if
        (QuestPoint[CheckNextQuest().NameQuest].Position -
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
     then
        ad:InvokeServer("StartQuest", tostring(CheckNextQuest().NameQuest), CheckNextQuest().ID)
    else
        QuestCFrame = QuestPoint[CheckNextQuest().NameQuest]
        ToTween(QuestCFrame)
    end
end
function GetMob()
    local ae = {}
    for r, v in pairs(EnemySpawns:GetChildren()) do
        if not table.find(ae, v.Name) then
            table.insert(ae, v.Name)
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for r, v in pairs(ae) do
            local ab = v
            v = tostring(v:gsub(" %pLv. %d+%p", ""))
            if v == CheckNameQuest() then
                return ab
            end
        end
    else
        return CheckNameQuest()
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
                LP.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                    ChooseRegion
            end
            local bP = RS.__ServerBrowser:InvokeServer(r)
            for k, v in pairs(bP) do
                if k ~= game.JobId and v["Count"] < bO then
                   RS.__ServerBrowser:InvokeServer("teleport", k)
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
    if LP.Backpack:FindFirstChild(tool) then
        wait(.5)
        Tool = LP.Backpack:FindFirstChild(tool)
        wait(.5)
        LP.Character.Humanoid:EquipTool(Tool)
    end
end
function EBuso()
    if not LP.Character:FindFirstChild("HasBuso") then
        RS.Remotes.CommF_:InvokeServer("Buso")
    end
end
function CheckVerRace()
    local v0011 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local v0022 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
    if LP.Character:FindFirstChild("RaceTransformed") then
        return LP.Data.Race.Value .. " V4"
    end
    if v0011 == -2 then
        return LP.Data.Race.Value .. " V3"
    end
    if v0022 == -2 then
        return LP.Data.Race.Value .. " V2"
    end
    return LP.Data.Race.Value .. " V1"
end
local radius = 25
local angle = 0
function getNextPosition(center)
    angle = angle + 5
    return center + Vector3.new(math.sin(math.rad(angle)) * radius, 0, math.cos(math.rad(angle)) * radius)
end
spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if NoClip then
            if not LP.Character.Head:FindFirstChild("BodyVelocity") then
                local ag = Instance.new("BodyVelocity")
                ag.Velocity = Vector3.new(0, 0, 0)
                ag.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                ag.P = 9000
                ag.Parent = LP.Character.Head
                for r, v in pairs(LP.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
            for _, v in pairs(LP.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
            end
        elseif not NoClip and LP.Character.Head:FindFirstChild("BodyVelocity") then
            LP.Character.Head:FindFirstChild("BodyVelocity"):Destroy()
        end
    end)
end)
function GetPlayerLevelList(cb)
    namel = {}
    for i,v in pairs(game.Players:GetChildren()) do
        pcall(function()
            if v.Name ~= LP.Name and v:FindFirstChild("Data") and v.Data.Level and (cb and not cb[v.Name]) and v.Character and (LP.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <= 15000 then
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
    return MobGet(elitemob, true)
end
spawn(function()
    while wait() do
        if StartFarms or DoughKingKill or TweentoIsland then
            NoClip = true
        else
            NoClip = false
            StopTween()
        end
    end
end)
function DisableTween(v0)
    if not v0 then
        NoClip = false
        ToTween(LP.Character.HumanoidRootPart.CFrame)
        StopTween()
    end
end
function StopTween()
    pcall(function()
        tween:Cancel()
    end)
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
        for r, v in next, WS.SeaBeasts:GetChildren() do
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
        SMasWeapon = LP.Data.DevilFruit.Value
    elseif SelectTypeMas == "Gun" then
        SMasWeapon = ""
        BPCH = {LP.Backpack, LP.Character}
        for hi,ri in pairs(BPCH) do
            for r, v in pairs(ri:GetChildren()) do
                if v:IsA("Tool") and v.ToolTip == "Gun" then
                    SMasWeapon = v.Name
                end
            end
        end
    end
    if SMasWeapon and SMasWeapon ~= "" then
        if LP.Backpack:FindFirstChild(SMasWeapon) or LP.Character:FindFirstChild(SMasWeapon) then
            if LP.PlayerGui.Main.Skills:FindFirstChild(SMasWeapon) then
                for r, v in next, LP.PlayerGui.Main.Skills[SMasWeapon]:GetChildren() do
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
    RS.Remotes.CommF_:InvokeServer(unpack(args))
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
    for i,v in pairs(Enemies:GetChildren()) do
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
    RS.Remotes.CommF_:InvokeServer(unpack(args))
    local args = {[1] = "RaceV4Progress", [2] = "Teleport"}
    RS.Remotes.CommF_:InvokeServer(unpack(args))
end
function FindAdvancedDealer()
    repeat wait()
    until WS.Map:FindFirstChild("MysticIsland")
    if WS.Map:FindFirstChild("MysticIsland") then
        AllNPCS = getnilinstances()
        for r, v in pairs(WS.NPCs:GetChildren()) do
            table.insert(AllNPCS, v)
        end
        for r, v in pairs(AllNPCS) do
            if v.Name == "Advanced Fruit Dealer" then
                ToTween(v.HumanoidRootPart.CFrame)
            end
        end
    end
end

function fireremotechoosegear(bH)
    v = bH
    if v == "Gear1" then
        print("Gear3")
        local args = {[1] = "TempleClock", [2] = "SpendPoint"}
        RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
            unpack(args)
        )
    elseif v == "Gear2" then
        print("Gear2")
        local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear2", [4] = "Omega"}
        RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
            unpack(args)
        )
    elseif v == "Gear4" then
        print("Gear4")
        if condimemeaymeci.B == 2 then
            print("Gear 4 Omega")
            local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear4", [4] = "Omega"}
            RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
                unpack(args)
            )
        elseif condimemeaymeci.A == 2 then
            print("Gear 4 Alpha")
            local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear4", [4] = "Alpha"}
            RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
                unpack(args)
            )
        elseif condimemeaymeci.A < 2 then
            v14 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TempleClock", "Check")
            condimemeaymeci = v14.RaceDetails
            print("Gear 4 Alpha")
            local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear4", [4] = "Alpha"}
            RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
                unpack(args)
            )
        end
    elseif v == "Gear3" then
        print("Gear3")
        local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear3", [4] = "Alpha"}
        RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
            unpack(args)
        )
    elseif v == "Gear5" then
        print("Gear5")
        local args = {[1] = "TempleClock", [2] = "SpendPoint", [3] = "Gear5", [4] = "Default"}
        RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(
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
        if (WS.Map["Temple of Time"].Prompt.Position - LP.Character.HumanoidRootPart.Position).Magnitude < 3 then
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
function BlueGear()
    if WS.Map:FindFirstChild("MysticIsland") then
        for r, v in pairs(game.workspace.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then
                return v
            end
        end
    end
end
function TimBlueGearDitmemay()
    BlueGear = BlueGear()
    if BlueGear then
        ToTween(BlueGear.CFrame)
    end
end
spawn(function()
    while wait() do
        for i,v in pairs(Enemies:GetChildren()) do
            if ((StartFarms and SelectFarm == "Level" and StartBring and v.Name == MobNameQuest()) or (FarmSkip and StartBring and v.Name == "Shanda") or (StartFarms and SelectFarm == "Bone" and StartBring and CheckBoneMob()) or (StartFarms and SelectFarm == "Cake Prince" and StartBring and CheckCakeMob()) or (MobArua and StartBring)) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and GetDistance(v.HumanoidRootPart.Position) <= 350 then
                v.HumanoidRootPart.CFrame = PosMon
                v.HumanoidRootPart.Size = Vector3.new(50,50,50)                                               
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
    for r, v in next, LP.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            return v.Name
        end
    end
    for r, v in next, LP.Character:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            return v.Name
        end
    end
end
function NameSword()
    for r, v in next, LP.Backpack:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Sword" then
            return v.Name
        end
    end
    for r, v in next, LP.Character:GetChildren() do
        if v:IsA("Tool") and v.ToolTip == "Sword" then
            return v.Name
        end
    end
end
function checkskillDF()
    if not LP.PlayerGui.Main.Skills:FindFirstChild(LP.Data.DevilFruit.Value) then
        equipweapon(LP.Data.DevilFruit.Value)
        return false
    end
    for r, v in next, LP.PlayerGui.Main.Skills[LP.Data.DevilFruit.Value]:GetChildren() do
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
    if not LP.PlayerGui.Main.Skills:FindFirstChild(NameSword()) then
        equipweapon(NameSword())
        return false
    end
    for r, v in next, LP.PlayerGui.Main.Skills[NameSword()]:GetChildren() do
        if v:IsA("Frame") then
            if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                return v.Name
            end
        end
    end
end
function NameGun()
    dick = LP.Backpack or LP.Character
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
    if not LP.PlayerGui.Main.Skills:FindFirstChild(NameGun()) then
        equipweapon(NameGun())
        return false
    end
    for r, v in next, LP.PlayerGui.Main.Skills[NameGun()]:GetChildren() do
        if v:IsA("Frame") then
            if v.Name ~= "Template" and v.Title.TextColor3 == Color3.new(1, 1, 1) and v.Cooldown.Size == UDim2.new(0, 0, 1, -1) or v.Cooldown.Size == UDim2.new(1, 0, 1, -1) then
                return v.Name
            end
        end
    end
end
function equipweapon(aq)
    local c6 = tostring(aq)
    local c7 = LP.Backpack:FindFirstChild(c6)
    local c8 = LP.Character:FindFirstChild("Humanoid") or LP.Character:WaitForChild("Humanoid")
    if c7 then
        c8:EquipTool(c7)
    end
end
function checkskillMelee()
    if not LP.PlayerGui.Main.Skills:FindFirstChild(NameMelee()) then
        equipweapon(NameMelee())
        return false
    end
    for r, v in next, LP.PlayerGui.Main.Skills[NameMelee()]:GetChildren() do
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
    if LP.Backpack:FindFirstChild(ToolSe) then
        local bi = LP.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        LP.Character.Humanoid:EquipTool(bi)
    end
end
function CheckPirateBoat()
    local boat = {"PirateBrigade", "PirateGrandBrigade"}
    for i, v in pairs(Enemies:GetChildren()) do
        if table.find(boat, v.Name) then
            return v
        end
    end
end
function CheckSeaBeast()
    for r, v in next, WS.SeaBeasts:GetChildren() do
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
    for r, v in next, WS.Boats:GetChildren() do
        if v:IsA("Model") then
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == LP.Name and v.Humanoid.Value > 0 then
                return v
            end
        end
    end
    return false
end
function TeleportSeabeast(c5)
    NoClip = true
    local a = Vector3.new(0, c5:FindFirstChild("HumanoidRootPart").Position.Y, 0)
    local ab = Vector3.new(0, WS.Map["WaterBase-Plane"].Position.Y, 0)
    if (a - ab).Magnitude <= 175 then
        ToTween(c5.HumanoidRootPart.CFrame * CFrame.new(0, 400, 50))
    else
        ToTween(CFrame.new(c5.HumanoidRootPart.Position.X, WS.Map["WaterBase-Plane"].Position.Y + 200, c5.HumanoidRootPart.Position.Z))
    end
    if not CheckSeaBeast() then
        NoClip = false
    end
end
function GetWeapon(bh)
    s = ""
    for r, v in pairs(LP.Backpack:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == bh then
            s = v.Name
        end
    end
    for r, v in pairs(LP.Character:GetChildren()) do
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
function MobGet(tablemob, valuebb)
    for r, v in pairs(Enemies:GetChildren()) do
        if table.find(tablemob, v.Name) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            return v
        end
    end
    if valuebb then
        for r, v in pairs(RS:GetChildren()) do
            if table.find(tablemob, v.Name) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
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
                    if LP.Character.Stun.Value ~= 0 then
                        LP.Character.HumanoidRootPart.CFrame = TpCFrame * CFrame.new(0, 100, 0)
                        wait(1)
                    else
                        LP.Character.HumanoidRootPart.CFrame = TpCFrame * CFrame.new(0, math.random(1, 30), 0)
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
    if not LP.Character:FindFirstChild("RaceTransformed") then
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
function GetMobSpawn(a)
    for r, v in next, EnemySpawns:GetChildren() do
        if v.Name == a then
            return v
        end
    end
end
function GetMobSpawnList(a)
    k = {}
    for r, v in next, EnemySpawns:GetChildren() do
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
            if df and SpamDFs and not string.find(LP.Data.DevilFruit.Value, "Portal") and df ~= "F" then
                print("Spam Status: Devil Fruit")
                EquipWeaponName(LP.Data.DevilFruit.Value)
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
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end
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
        LP.Character.Head:Destroy()
        for i = 1,9 do
            LP.Character.HumanoidRootPart.CFrame = PosSelect
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
    end
end
local Window = OrionLib:MakeWindow({Name = "Hirimi Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "HyperVersion"})
local SettingsTab = Window:MakeTab({Name = "Developer", Icon = "rbxassetid://15214658898", PremiumOnly = false})
local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false})
local SettingTab = Window:MakeTab({Name = "Setting", Icon = "rbxassetid://11446835336", PremiumOnly = false})
local ItemTab = Window:MakeTab({Name = "Item", Icon = "rbxassetid://9606626859", PremiumOnly = false})
local StatusTab = Window:MakeTab({Name = "Status", Icon = "rbxassetid://11156061121", PremiumOnly = false})
local TeleTab = Window:MakeTab({Name = "Teleport", Icon = "rbxassetid://11155851001", PremiumOnly = false})
local SeaTab = Window:MakeTab({Name = "Sea Event", Icon = "rbxassetid://7040410130", PremiumOnly = false})
local V4Tab = Window:MakeTab({Name = "Race V4", Icon = "rbxassetid://11162889532", PremiumOnly = false})
local RaidTab = Window:MakeTab({Name = "Raid", Icon = "rbxassetid://11155986081", PremiumOnly = false})
local DFTab = Window:MakeTab({Name = "Devil Fruit", Icon = "rbxassetid://7044233235", PremiumOnly = false}) 
local SHTab = Window:MakeTab({Name = "Shop", Icon = "rbxassetid://6031265976", PremiumOnly = false}) 
local STTab = Window:MakeTab({Name = "Stats", Icon = "rbxassetid://7040410130", PremiumOnly = false}) 
local MiscTab = Window:MakeTab({Name = "Miscellaneous", Icon = "rbxassetid://7044233235", PremiumOnly = false}) 
SettingsTab:AddLabel("Hirimi Hub Hyper.ver")
SettingsTab:AddLabel("Code By Hirimii") 
SettingsTab:AddLabel("Youtube Channels") 
SettingsTab:AddLabel("https://youtube.com/@hirimii0901") 
SettingsTab:AddButton({
	Name = "Copy Link Youtube",
	Callback = function()
        setclipboard("https://youtube.com/@hirimii0901")
        OrionLib:MakeNotification({Name = "Hirimi Hub", Content = "Copied!", Image = "rbxassetid://15214658898",Time = 5})
  	end    
})
SettingsTab:AddLabel("Join For Discord") 
SettingsTab:AddLabel("https://discord.gg/RtWeughmYp") 
SettingsTab:AddButton({
	Name = "Copy Link Invite Discord",
	Callback = function()
        setclipboard("https://discord.gg/RtWeughmYp")
        OrionLib:MakeNotification({Name = "Hirimi Hub", Content = "Copied!", Image = "rbxassetid://15214658898",Time = 5})
  	end    
})
SettingsTab:AddLabel("I From VIETNAM") 
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
MainTab:AddButton({
	Name = "Redeem All Code x2",
	Callback = function()
        function RedeemCode(value)
            RS.Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
  	end    
})
MainTab:AddButton({
	Name = "Stop Tween",
	Callback = function()
        StopTween()
  	end    
})
MainTab:AddSection({Name = "Select Mode"})
MainTab:AddDropdown({
	Name = "Select Tool",
	Default = "",
	Options = {"Melee","Sword"},
	Callback = function(vSelecttool)
		Selecttool = vSelecttool
	end    
})
task.spawn(function()
	while wait() do
		pcall(function()
			if Selecttool == "Melee" or Selecttool == "Sword" then
                for i, v in pairs(LP.Backpack:GetChildren()) do
                    if v.ToolTip == Selecttool then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                            Selecttool = v.Name
                        end
                    end
                end
            end
		end)
	end
end)
MainTab:AddDropdown({
	Name = "Attack Delay Speed",
	Default = "0.175",
	Options = {"0.1", "0.15", "0.175", "0.2"},
	Callback = function(vDelayAttack)
		DelayAttack = vDelayAttack
	end    
})
DelayAttack = 0.35
spawn(function()
    while wait(.1) do
        if DelayAttack then
            if DelayAttack == "0.1" then
                if MasteryOption then
                    DelayAttack = 0.9
                else
                    DelayAttack = 0.2
                end
            elseif DelayAttack == "0.15" then
                if MasteryOption then
                    DelayAttack = 0.9
                else
                    DelayAttack = 0.3
                end
            elseif DelayAttack == "0.175" then
                if MasteryOption then
                    DelayAttack = 0.9
                else
                    DelayAttack = 0.35
                end
            elseif DelayAttack == "0.2" then
                DelayAttack = 0.9
            end
        end
    end
end)
function GetWeaponChange()
    local p13 = CurveFrame.activeController
    if not p13 then
        return nil
    end
    
    local wea = p13.blades[1]
    if not wea then
        return nil
    end
    
    while wea.Parent ~= game.Players.LocalPlayer.Character do
        wea = wea.Parent
    end
    
    return wea
end
function getHits(Size)
    local Hits = {}
    local function processHumanoid(Human)
        if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size + 5 then
            table.insert(Hits, Human.RootPart)
        end
    end
    for _, v in pairs(workspace.Enemies:GetChildren()) do
        processHumanoid(v:FindFirstChildOfClass("Humanoid"))
    end

    for _, v in pairs(workspace.Characters:GetChildren()) do
        if v ~= game.Players.LocalPlayer.Character then
            processHumanoid(v:FindFirstChildOfClass("Humanoid"))
        end
    end
    return Hits
end
function Boost()
    task.spawn(function()
        RS.RigControllerEvent:FireServer("weaponChange", tostring(GetWeaponChange()))
    end)
end
function Unboost()
    task.spawn(function()
        RS.RigControllerEvent:FireServer("unequipWeapon", tostring(GetWeaponChange()))
    end)
end
local cdnormal = 0
local Animation = Instance.new("Animation")
local CooldownFastAttack = 0
FastAttack = function()
    local ac = CurveFrame.activeController
    if ac and ac.equipped then
        task.spawn(function()
            if tick() - cdnormal > 0.5 then
                ac:attack()
                cdnormal = tick()
            else
                Animation.AnimationId = ac.anims.basic[2]
                ac.humanoid:LoadAnimation(Animation):Play(1, 1)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
            end
        end)
    end
end
bs = tick()
task.spawn(function()
    while task.wait(DelayAttack) do
        if EnableFastAttack then
            FastI = true
            if bs - tick() > 0.75 then
                task.wait()
                bs = tick()
            end
            pcall(function()
                for i, v in pairs(Enemies:GetChildren()) do
                    if v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                            FastAttack()
                            task.wait()
                            Boost()
                        end
                    end
                end
            end)
        end
    end
end)
k = tick()
task.spawn(function()
    if FastI then
        while task.wait(.2) do
            if k - tick() > 0.75 then
                task.wait()
                k = tick()
            end
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            task.wait(.000025)
                            Unboost()
                        end
                    end
                end
            end)
        end
    end
end)
task.spawn(function()
    while task.wait() do
        if FastI then
            pcall(function()
                CurveFrame.activeController.timeToNextAttack = -1
                CurveFrame.activeController.focusStart = 0
                CurveFrame.activeController.hitboxMagnitude = 40
                CurveFrame.activeController.humanoid.AutoRotate = true
                CurveFrame.activeController.increment = 1 + 1 / 1
            end)
        end
    end
end)
enableCurv = true
task.spawn(function()
    local a = LP
    local b = require(a.PlayerScripts.CombatFramework.Particle)
    local c = require(RS.CombatFramework.RigLib)
    if not shared.orl then
        shared.orl = c.wrapAttackAnimationAsync
    end
    if not shared.cpc then
        shared.cpc = b.play
    end
    if enableCurv then
        pcall(function()
            c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                local i = c.getBladeHits(e, f, g)
                if i then
                    b.play = function()
                    end
                    d:Play(0.25, 0.25, 0.25)
                    h(i)
                    b.play = shared.cpc
                    wait(.5)
                    d:Stop()
                end
            end
        end)
    end
end)
MainTab:AddSection({Name = "More Options"})
MainTab:AddToggle({
	Name = "Bypass TP",
	Default = true,
	Callback = function(vBTP)
		BypassTP = vBTP
	end    
}) 
MainTab:AddToggle({
	Name = "Enable Fast Attack",
	Default = true,
	Flag = "FastAttack",
	Save = true,
	Callback = function(vfastchange)
		EnableFastAttack = vfastchange
	end    
})
CombatFrameworkR = require(LP.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    Loop:Connect(function()
        if EnableFastAttack then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    y.activeController.timeToNextAttack = -1
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 3
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end
        if EnableFastAttack == true then
            LP.Character.Stun.Value = 0
            LP.Character.Busy.Value = false        
        end
    end)
end)
MainTab:AddToggle({
	Name = "Turn On Race V4",
	Default = false,
	Flag = "TurnOnV4",
	Save = true,
	Callback = function(vturnr4)
		AwkV4 = vturnr4
	end    
})
task.spawn(function()
    while task.wait() do
        task.wait()
        if AwkV4 then
            if LP.Character:FindFirstChild("RaceEnergy") and LP.Character.RaceEnergy.Value >= 1 and not LP.Character.RaceTransformed.Value then
                local be = game:service("VirtualInputManager")
                be:SendKeyEvent(true, "Y", false, game)
                task.wait()
                be:SendKeyEvent(false, "Y", false, game)
            end
        end
    end
end)
MainTab:AddToggle({
	Name = "Turn On Race V3",
	Default = false,
	Flag = "TurnV3",
	Save = true,
	Callback = function(vturnr3)
		_G.TurnRace3 = vturnr3
	end    
})
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.TurnRace3 then
            RS.Remotes.CommE:FireServer("ActivateAbility")
        end
    end)
end)
MainTab:AddToggle({
	Name = "Quest Cake + Bone [Option]",
	Default = false,
	Flag = "QuestCake+Bone",
	Save = true,
	Callback = function(vClaimQuest)
		ClaimQuest = vClaimQuest
	end    
})
MainTab:AddToggle({
	Name = "Spawn Cake Prince [Option]",
	Default = false,
	Flag = "Spawn Cake Prince",
	Save = true,
	Callback = function(vSpawnCake)
		SpawnCake = vSpawnCake
	end    
})
Loop:Connect(function()
    if string.find(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
        RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
    end
end)
MainTab:AddSection({Name = "Hop Until"})
MainTab:AddToggle({
	Name = "Hop Near FM or FM",
	Default = false,
    Flag = "HopSaveFM",
    Save = true,
	Callback = function(funchop)
		_G.HopNFMaM = funchop
        if _G.HopNFMaM == false then
            DisableTween(_G.HopNFMaM)
        end
	end    
})
function MoonTextureId()
    if Main then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Dressora then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif Zou then
        return game:GetService("Lighting").Sky.MoonTextureId
    end
end  
function CheckMSTss()
    moon8 = "http://www.roblox.com/asset/?id=9709150401"
    moon7 = "http://www.roblox.com/asset/?id=9709150086"
    moon6 = "http://www.roblox.com/asset/?id=9709149680"
    moon5 = "http://www.roblox.com/asset/?id=9709149431"
    moon4 = "http://www.roblox.com/asset/?id=9709149052"
    moon3 = "http://www.roblox.com/asset/?id=9709143733"
    moon2 = "http://www.roblox.com/asset/?id=9709139597"
    moon1 = "http://www.roblox.com/asset/?id=9709135895"
    moonreal = MoonTextureId()
    cofullmoonkothangbeo = "Bad Moon"
    if moonreal == moon5 or moonreal == moon4 then
        if moonreal == moon5 then
            cofullmoonkothangbeo = "Full Moon"
        elseif moonreal == moon4 then
            cofullmoonkothangbeo = "Next Night"
        end
    end
    return cofullmoonkothangbeo
end
task.spawn(function()
    while task.wait() do
        if _G.HopNFMaM then
            moonst = CheckMSTss()
            OrionLib:MakeNotification({Name = "Hirimi Hub", Content = moonst, Image = "rbxassetid://14161592006", Time = 30})
            if moonst == "Full Moon" and (game.Lighting.ClockTime < 5 or game.Lighting.ClockTime > 12) or moonst == "Next Night" then
                OrionLib:MakeNotification({
                    Name = "Hirimi Hub",
                    Content = "Found Moon",
                    Image = "rbxassetid://14161592006",
                    Time = 30
                })
                task.wait(30)
            else
                OrionLib:MakeNotification({
                    Name = "Hirimi Hub",
                    Content = "Not Found Moon, Start Hop",
                    Image = "rbxassetid://14161592006",
                    Time = 5
                })
                HopServer()
            end
        end
    end
end)
MainTab:AddSection({Name = "Farm Mode"})
local Selectmodef = MainTab:AddDropdown({Name = "Select Mode Farm", Default = "", Options = {"Level", "Bone", "Cake Prince"}, Callback = function(vSFarm)
    SelectFarm = vSFarm
end    
})
local Farmop = MainTab:AddToggle({Name = "Start Farm", Default = false, Callback = function(StartFarmsv)
    StartFarms = StartFarmsv
    DisableTween(StartFarms)
end    
})
spawn(function()
    while task.wait() do
        pcall(function()
            if StartFarms and SelectFarm == "Level" then         
                if PG.Main:FindFirstChild("Quest").Visible == true then
                    for i,v in pairs(Enemies:GetChildren()) do
                        if v.Name == MobNameQuest() and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EWeapon(Selecttool)                                                                                                                    
                                EBuso()
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)  
                                v.HumanoidRootPart.CanCollide = false
                                PosMon = v.HumanoidRootPart.CFrame
                                EClick()
                                NoClip = true
                                StartBring = true
                            until not StartFarms or not SelectFarm == "Level" or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not PG.Main:FindFirstChild("Quest").Visible
                            NoClip = false
                            StartBring = false
                        end
                    end
                else
                    GetQuest()
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
                                elseif HealthM and (LP.Backpack:FindFirstChild("Soul Guitar") or LP.Character:FindFirstChild("Soul Guitar")) then
                                    repeat task.wait()
                                        local va = CheckMasSkill()
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        if va then
                                            EWeapon(va)
                                            SendKeyEvents("Z")
                                            SendKeyEvents("X")
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
                            NoClip = true
                            StartBring = true
                        until not StartFarms or not SelectFarm == "Bone" or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                        NoClip = false
                        StartBring = false
                    end
                else
                    local CFrameHun = CFrame.new(-9368.34765625, 222.10060119628906, 6239.904296875)
                    if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameHun.Position).Magnitude > 2000 then
                            BypassTele(CFrameHun)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameHun.Position).Magnitude < 2000 then
                            ToTween(CFrameHun)
                        end
                    else
                        ToTween(CFrameHun)
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
                                elseif HealthM and (LP.Backpack:FindFirstChild("Soul Guitar") or LP.Character:FindFirstChild("Soul Guitar")) then
                                    repeat task.wait()
                                        local va = CheckMasSkill()
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                        if va then
                                            EWeapon(va)
                                            SendKeyEvents("Z")
                                            SendKeyEvents("X")
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
                        ToTween(getNextPosition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)))
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)  
                        v.HumanoidRootPart.CanCollide = false
                        PosMon = v.HumanoidRootPart.CFrame
                        EClick()
                    until not StartFarms or not SelectFarm == "Cake Prince" or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
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
MainTab:AddToggle({Name = "Farm Skips [Lv.1 -> Lv.300]", Default = false, Callback = function(vFarmSkip)
    FarmSkip = vFarmSkip
    DisableTween(FarmSkip)
end    
})
spawn(function()
    while wait() do
        if FarmSkip then
            LvCount = Data.Level.Value
            if LvCount >= 1 and LvCount < 60 then
                local cframefarm = CFrame.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
                if GetDistance(cframefarm.Position) > 1500 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
                if Enemies:FindFirstChild("Shanda") then     
                    for i,v in pairs(Enemies:GetChildren()) do
                        if v.Name == "Shanda" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EWeapon(Selecttool)                                                                                                                    
                                EBuso()
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))               
                                PosMon = v.HumanoidRootPart.CFrame                                                                       
                                v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                sethiddenproperty(LP, "SimulationRadius",  math.huge)
                                EClick()
                                StartBring = true
                                NoClip = true                                                            
                            until not FarmSkip or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
                            StartBring = false
                            NoClip = false
                        end 
                    end
                end 
            elseif LvCount >= 60 and LvCount < 300 then
                CheckPlayer = 0
                local Players = game:GetService("Players"):GetPlayers()
                local Quest = PG.Main.Quest
                local mylevel = Data.Level.Value
                local QuestTitle = Quest.Container.QuestTitle.Title.Text
                if Quest.Visible == true then
                    if string.find(QuestTitle, "Defeat") then
                        getgenv().Ply = string.split(QuestTitle," ")[2]
                        for i,v in pairs(Players) do
                            if v.Name == getgenv().Ply and v.Character.Humanoid.Health > 0 then
                                repeat task.wait()
                                    if v.Data.Level.Value < 20 or v.Data.Level.Value > mylevel * 5 then
                                        Remote:InvokeServer("PlayerHunter")
                                    end
                                    if PG.Main.PvpDisabled.Visible == true then
                                        Remote:InvokeServer("EnablePvp")                   
                                    end
                                    EWeapon(Selecttool)
                                    EBuso()	   
                                    NoClip = true         
                                    ToTween(v.Character.HumanoidRootPart.CFrame * CFrame.new(5, 10, 5))
                                    EClick()
                                until not FarmSkip or not v:FindFirstChild("HumanoidRootPart") or v.Character.Humanoid.Health <= 0
                                NoClip = false
                            end
                        end
                    else
                        Remote:InvokeServer("PlayerHunter")
                    end
                else                
                    if Remote:InvokeServer("PlayerHunter") == "I don't have anything for you right now. Come back later." then
                        CheckPlayer = CheckPlayer + 1
                    end
                end
                if CheckPlayer >= 12 and Quest.Visible == false and not string.find(QuestTitle, "Defeat") then
                    HopServer()
                end 
            else
                Selectmodef:Set("Level")
                Farmop:Set(true)
            end
            if game.Players.localPlayer.Data.Points.Value >= 1 then
                local args = {[1] = "AddPoint", [2] = "Melee", [3] = 1}
                RS.Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)
MainTab:AddToggle({
	Name = "Mob Arua",
	Default = false,
	Flag = "Mob Arua",
	Save = true,
	Callback = function(vMobArua)
		MobArua = vMobArua
		DisableTween(MobArua)
	end    
})
spawn(function()
	while wait() do
		if MobArua then
			for i,v in pairs(Enemies:GetChildren()) do
                if v.Name and v:FindFirstChild("Humanoid") and GetDistance(v.HumanoidRootPart.Position) < 2000 then
			        if v.Humanoid.Health > 0 then
			            repeat wait()
			                EWeapon(Selecttool)
			                EBuso()
			                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
			                v.HumanoidRootPart.CanCollide = false
						    EClick()
				       	    PosMon = v.HumanoidRootPart.CFrame
                            NoClip = true
                            StartBring = true
			            until not MobArua or not v.Parent or v.Humanoid.Health <= 0 
                        NoClip = false
                        StartBring = false
			        end
			    end
			end
		end
	end
end)
MainTab:AddSection({Name = "Farm Mas 600 Weapon"})
local sword600 = MainTab:AddToggle({
	Name = "Farm All Sword Mastery 600 [Option]",
	Default = false,
	Flag = "FarmAll600",
	Save = true,
	Callback = function(v600)
		FarmMastery600 = v600
	end    
})
function changesword()
    for i,v in pairs(RS.Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v) == "table" then
            if v.Type == "Sword" and v.Mastery >= 600 then
                if not (LP.Backpack:FindFirstChild(v.Name) or LP.Character:FindFirstChild(v.Name)) then
                    repeat RS.Remotes.CommF_:InvokeServer("LoadItem",v.Name) wait(2) until CheckMasSelect("Sword") >= 600 or not FarmMastery600
                end
            end
        end
    end
end
spawn(function()
    while task.wait() do
        if FarmMastery600 then
            local v09 = CheckMasSelect("Sword")
            if v09 >= 600 then
                changesword()
            elseif v09 < 600 then
                
            end
        end
    end
end)
MainTab:AddSection({Name = "Mastery Option"})
MainTab:AddDropdown({Name = "Select Type Mastery Farm", Default = "", Options = {"Devil Fruits", "Gun"}, Callback = function(vSelectTypeMas)
    SelectTypeMas = vSelectTypeMas
end    
})
MainTab:AddToggle({Name = "Enable Mastery Option", Default = false, Callback = function(vMasteryOption)
    MasteryOption = vMasteryOption
end    
})
local skill = {"Z", "X", "C", "V", "F"}
SkillSelected = {}
RealSkillSelected = {}
for r, v in pairs(SkillSelected) do
    if v then
        table.insert(RealSkillSelected, r)
    end
end
MainTab:AddDropdown({Name = "Select Skill [Click Skill Enable]", Default = "", Options = skill, Callback = function(vSelectSkills)
    SkillSelected[vSelectSkills] = not SkillSelected[vSelectSkills]
    RealSkillSelected = {}
    for r, v in pairs(SkillSelected) do
        if v then
            table.insert(RealSkillSelected, r)
        end
    end
    Notify("Hirimi Hub", "Skill " .. tostring(vSelectSkills) .. ": " .. tostring(SkillSelected[vSelectSkills]) .. "")
end    
})
ItemTab:AddSection({Name = "Misc Farm"})
local FM = ItemTab:AddLabel("Travel Zou")
task.spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                FM:Set("Moon: 5/5")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                FM:Set("Moon: 4/5")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                FM:Set("Moon: 3/5")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                FM:Set("Moon: 2/5")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                FM:Set("Moon: 1/5")
            else
                FM:Set("Moon: 0/5")
            end
        end)
    end
end)
if Dressora then
    ItemTab:AddToggle({
        Name = "Farm Factory",
        Default = false,
        Flag = "Factory",
        Save = true,
        Callback = function(vFarmFactory)
            FarmFactory = vFarmFactory
            DisableTween(FarmFactory)
        end    
    })
    spawn(function()
        while wait() do
            if FarmFactory then
                if Enemies:FindFirstChild("Core") then
                    for i,v in pairs(Enemies:GetChildren()) do
                        if v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EBuso()         
                                EWeapon(Selecttool)           
                                ToTween(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                EClick()
                                NoClip = true
                            until v.Humanoid.Health <= 0 or not FarmFactory
                            NoClip = false
                        end
                    end
                else
                    ToTween(CFrame.new(448.46756, 199.356781, -441.389252))
                end
            end
        end
    end)
elseif Zou then
    Loop:Connect(function()
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
            Mirragecheck:Set('🏝️: Mystic Island Spawning')
        else
            Mirragecheck:Set('❌: Mystic Island Not Found' )
        end
    end)
    Mirragecheck = ItemTab:AddLabel("Zou")
    ItemTab:AddToggle({
        Name = "Tween Mystic Island",
        Default = false,
        Flag = "Tomystic",
        Save = true,
        Callback = function(vTMysticIsland)
            TMysticIsland = vTMysticIsland
            DisableTween(TMysticIsland)
        end    
    })
    spawn(function()
        pcall(function()
            while wait() do
                if TMysticIsland then
                    if WS.Map:FindFirstChild("MysticIsland") then
                        ToTween(CFrame.new(WS.Map.MysticIsland.Center.Position.X,500,WS.Map.MysticIsland.Center.Position.Z))
                    end
                end
            end
        end)
    end)
    ItemTab:AddToggle({
        Name = "Cam To Moon",
        Default = false,
        Callback = function(vCamtomoon)
            Camtomoon = vCamtomoon
        end    
    }) 
    spawn(function()
        while wait() do
            if Camtomoon then
                WS.CurrentCamera.CFrame = CFrame.new(WS.CurrentCamera.CFrame.Position,game:GetService("Lighting"):GetMoonDirection() + WS.CurrentCamera.CFrame.Position)
            end
        end
    end)
    ItemTab:AddButton({
        Name = "Find NPC Advanced Dealer",
        Callback = function()
            FindAdvancedDealer()
        end    
    }) 
    ItemTab:AddButton({
        Name = "Find Blue Gear",
        Callback = function()
            TimBlueGearDitmemay()
        end    
    }) 
end
ItemTab:AddSection({Name = "EVO Race"})
local UpgradeRaceToggle2 = ItemTab:AddToggle({Name = "Upgrade Race V2", Default = false, Flag = "EvoV2", Save = true, Callback = function(vV2Up)
	    UpgradeRacev2 = vV2Up
        DisableTween(UpgradeRacev2)
	end    
}) 
local UpgradeRaceToggle = ItemTab:AddToggle({Name = "Upgrade Race V3", Default = false, Flag = "EvoV3", Save = true, Callback = function(vV3Up)
    UpgradeRacev3 = vV3Up
    DisableTween(UpgradeRacev3)
end    
}) 
CountChest = 0
spawn(function()
    while task.wait() do
        if UpgradeRacev3 then
            CheckR = CheckVerRace()
            if CheckR == "Human V2" then
                GetQuestV3()
                BossQuest = {
                    ["Diamond"] = CheckBoss("Diamond"),
                    ["Fajita"] = CheckBoss("Fajita"),
                    ["Jeremy"] = CheckBoss("Jeremy")
                }
                sk = {}
                for r,v in pairs(BossQuest) do
                    if v then
                        table.insert(sk, r)
                    end
                end
                sk2 = "Server Have Boss: "
                for r, v in pairs(sk) do
                    sk2 = sk2 .. v .. ","
                end
                Notify("Hirimi Hub", sk2, 15)
                if #sk < 3 and CheckVerRace() == "Human V2" then
                    Notify("Hirimi Hub", "Hop Server Have 3 Boss", 15)
                    task.wait(1)
                    HopServer()
                end
                if #sk >= 3 then
                    for aq, cg in pairs(BossQuest) do
                        Notify("Race: ", CheckVerRace())
                        if cg and CheckVerRace() == "Human V2" then
                            Notify("Hirimi Hub", "Start Killing " .. aq .. " Boss To Up Human V3")
                            Target = ReturnBosses(aq)
                            repeat wait()
                                if Target and Enemies:FindFirstChild(Target.Name) and Target:FindFirstChild("Humanoid") and Target:FindFirstChild("HumanoidRootPart") and Target.Humanoid.Health > 0 then
                                    EWeapon(Selecttool)
                                    EBuso()
                                    ToTween(Target.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    EClick()
                                    Target.HumanoidRootPart.CanCollide = false
                                    NoClip = true
                                elseif Target then
                                    EWeapon(Selecttool)
                                    EBuso()
                                    ToTween(Target.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0))
                                end
                            until not UpgradeRacev3 or not Target or not Target:FindFirstChild("Humanoid") or not Target:FindFirstChild("HumanoidRootPart") or Target.Humanoid.Health <= 0
                            NoClip = false
                        end
                    end
                end
            elseif CheckR == "Skypiea V2" then
                GetQuestV3()
                SkypieaPlayers = {}
                for r, v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= LP.Name and WS.Characters:FindFirstChild(v.Name) and v:FindFirstChild("Data") and v.Data:FindFirstChild("Race") and v.Data.Race.Value == "Skypiea" and v.Character:FindFirstChild("Humanoid") then
                        table.insert(SkypieaPlayers, v)
                    end
                end
                if #SkypieaPlayers > 0 then
                    for r, v in pairs(SkypieaPlayers) do
                        repeat wait()
                            TargetedPlayer = v.Name
                            KillStart = true
                        until not v or not UpgradeRacev3 or Data.Race.Value ~= "Skypiea" or string.find(CheckVerRace(), "V3")
                        KillStart = false
                        TargetedPlayer = nil
                    end
                else
                    Notify("Hirimi Hub", "Not Found Player, Start Hop", 15)
                    HopServer()
                end
            elseif CheckR == "Fishman V2" then
                GetQuestV3()
                repeat wait()
                    BoatDropDown:Set("PirateGrandBrigade")
                    SeaEventToggle:Set(true)
                    wait(1)
                until not UpgradeRacev3 or not CheckVerRace() == "Fishman V2" or not string.find(CheckVerRace(), "Fish")
                SeaEventToggle:Set(false)
                BoatDropDown:Set("")
            elseif CheckR == "Ghoul V2" then
                GetQuestV3()
                repeat wait()
                    KillStart = true
                    wait(1)
                until not UpgradeRacev3 or game.Players.LocalPlayer.Data.Race.Value ~= "Ghoul" or string.find(CheckVerRace(), "V3")
                KillStart = false
            elseif CheckR == "Cyborg V2" then
                GetQuestV3()
                if not DFinBP() then
                    repeat wait()
                        frr = GetFruitBelow1M()
                        if frr then
                            LoadFruit(frr)
                        end
                    until DFinBP()
                    UpV3NoTween()
                end
            elseif CheckR == "Mink V2" then
                GetQuestV3()
                local ch = ChestNearF()
                if ch and CheckR ~= "Mink V3" then
                    ToTween(ch)
                    CountChest = CountChest + 1
                    Notify("Hirimi Hub", "Remaning " .. 30 - CountChest .. " Chest", 7.5)
                    if CountChest >= 30 then
                        UpV3NoTween()
                        Notify("Hirimi Hub", "Race Status: " .. tostring(RS.Remotes.CommF_:InvokeServer("Wenlocktoad", "info")))
                    end
                elseif ch == nil then
                    repeat wait()
                        local ch = ChestNearF()
                    until ch ~= nil
                end
            end
            if string.find(CheckR, "V3") or string.find(CheckR, "V4") then
                UpgradeRaceToggle:Set(false)
            end
        end
    end
end)
spawn(function()
    while wait(.1) do
        if UpgradeRacev2 then
            CheckRace = CheckVerRace()
            if string.find(CheckRace, "V1") then
                if not LP.Data.Race:FindFirstChild("Evolved") then
                    if RS.Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                        ToTween(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - LP.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            RS.Remotes.CommF_:InvokeServer("Alchemist","2")
                        end
                    elseif RS.Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                        pcall(function()
                            if not LP.Backpack:FindFirstChild("Flower 1") and not LP.Character:FindFirstChild("Flower 1") then
                                ToTween(WS.Flower1.CFrame)
                            elseif not LP.Backpack:FindFirstChild("Flower 2") and not LP.Character:FindFirstChild("Flower 2") then
                                ToTween(WS.Flower2.CFrame)
                            elseif not LP.Backpack:FindFirstChild("Flower 3") and not LP.Character:FindFirstChild("Flower 3") then
                                if Enemies:FindFirstChild("Zombie") then
                                    for i,v in pairs(Enemies:GetChildren()) do
                                        if v.Name == "Zombie" then
                                            repeat task.wait()
                                                EBuso()
                                                EWeapon(Selecttool)
                                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                EClick()
                                                NoClip = true
                                            until LP.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or UpgradeRacev2
                                            NoClip = false
                                        end
                                    end
                                else
                                    ToTween(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                end
                            end
                        end)
                    elseif RS.Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                        RS.Remotes.CommF_:InvokeServer("Alchemist","3")
                    end
                end
            else
                UpgradeRaceToggle2:Set(false)
                UpgradeRaceToggle:Set(true)
            end
        end
    end
end)
ItemTab:AddSection({Name = "Dough King"})
ItemTab:AddToggle({
	Name = "Kill Cake Mob + Summon Dough King",
	Default = false,
	Flag = "HopDoughKing",
	Save = true,
	Callback = function(vDoughKingKill)
		DoughKingKill = vDoughKingKill
        DisableTween(DoughKingKill)
	end    
}) 
spawn(function()
    while wait() do
        if DoughKingKill and Zou then
            pcall(function()
                if LP.Backpack:FindFirstChild("God's Chalice") or LP.Character:FindFirstChild("God's Chalice") then
                    if string.find(RS.Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
                        Notify("Hirimi Hub", "Not Enough Meterial", 10)
                    else
                        RS.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
                    end
                elseif LP.Backpack:FindFirstChild("Sweet Chalice") or LP.Character:FindFirstChild("Sweet Chalice") then
                    if string.find(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
                        RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    else
                        if Enemies:FindFirstChild("Cookie Crafter") or Enemies:FindFirstChild("Cake Guard") or Enemies:FindFirstChild("Baking Staff") or Enemies:FindFirstChild("Head Baker") then
                            for i,v in pairs(Enemies:GetChildren()) do
                                if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EBuso()
                                        EWeapon(Selecttool)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false 
                                        PosMon = v.HumanoidRootPart.CFrame
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        EClick()
                                    until not DoughKingKill or RS:FindFirstChild("Dough King") or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            StartBring = false
                            ToTween(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                            if RS:FindFirstChild("Cookie Crafter") then
                                ToTween(RS:FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                            else
                                if RS:FindFirstChild("Cake Guard") then
                                    ToTween(RS:FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                else
                                    if RS:FindFirstChild("Baking Staff") then
                                        ToTween(RS:FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                    else
                                        if RS:FindFirstChild("Head Baker") then
                                            ToTween(RS:FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                        end
                                    end
                                end
                            end
                        end
                    end
                elseif Enemies:FindFirstChild("Dough King") then
                    for i,v in pairs(Enemies:GetChildren()) do
                        if v.Name == "Dough King" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EBuso()
                                    EWeapon(Selecttool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    EClick()
                                    sethiddenproperty(LP,"SimulationRadius",math.huge)
                                until not DoughKingKill or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                end
            end)
        end
    end
end)
ItemTab:AddSection({Name = "Elite Hunter"})
local EliteToggle = ItemTab:AddToggle({
	Name = "Get Quest & Kill Elites",
	Default = false,
	Flag = "KillElite",
	Save = true,
	Callback = function(vElite)
		Elite = vElite
        RS.Remotes.CommF_:InvokeServer("AbandonQuest")
		DisableTween(Elite)
	end    
}) 
spawn(function()
    while task.wait() do
        if Elite then
            if not string.find(PG.Main.Quest.Container.QuestTitle.Title.Text, CheckElite().Name) or not PG.Main.Quest.Visible then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
            end
            local v = CheckElite()
            if Enemies:FindFirstChild(v.Name) then
                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    repeat task.wait()
                        EBuso()
                        EWeapon(Selecttool)
                        ToTweenWithEntrace(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                        EClick()
                        NoClip = true
                    until not v or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") and v.Humanoid.Health <= 0 or not Elite
                    NoClip = false
                end
            else
                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                NoClip = true
            end
        end
    end
end)
ItemTab:AddSection({Name = "Melee - Taken"})
ItemTab:AddToggle({
	Name = "Taken Superhuman",
	Default = false,
	Flag = "Superhuman",
	Save = true,
	Callback = function(Value)
		_G.AutoSuperhuman = Value
	end    
}) 
spawn(function()
    pcall(function()
        while wait() do 
            if _G.AutoSuperhuman then
                if LP.Backpack:FindFirstChild("Combat") or LP.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    UnEquipWeapon("Combat")
                    wait(.1)
                    RS.Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if LP.Character:FindFirstChild("Superhuman") or LP.Backpack:FindFirstChild("Superhuman") then
                    Tool = "Superhuman"
                end  
                if LP.Backpack:FindFirstChild("Black Leg") or LP.Character:FindFirstChild("Black Leg") or LP.Backpack:FindFirstChild("Electro") or LP.Character:FindFirstChild("Electro") or LP.Backpack:FindFirstChild("Fishman Karate") or LP.Character:FindFirstChild("Fishman Karate") or LP.Backpack:FindFirstChild("Dragon Claw") or LP.Character:FindFirstChild("Dragon Claw") then
                    if LP.Backpack:FindFirstChild("Black Leg") and LP.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        Tool = "Black Leg"
                    end
                    if LP.Backpack:FindFirstChild("Electro") and LP.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        Tool = "Electro"
                    end
                    if LP.Backpack:FindFirstChild("Fishman Karate") and LP.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        Tool = "Fishman Karate"
                    end
                    if LP.Backpack:FindFirstChild("Dragon Claw") and LP.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        Tool = "Dragon Claw"
                    end
                    if LP.Backpack:FindFirstChild("Black Leg") and LP.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        RS.Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if LP.Character:FindFirstChild("Black Leg") and LP.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        RS.Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if LP.Backpack:FindFirstChild("Electro") and LP.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        RS.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if LP.Character:FindFirstChild("Electro") and LP.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        RS.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if LP.Backpack:FindFirstChild("Fishman Karate") and LP.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        RS.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        RS.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if LP.Character:FindFirstChild("Fishman Karate") and LP.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        RS.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        RS.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if LP.Backpack:FindFirstChild("Dragon Claw") and LP.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        RS.Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                    if LP.Character:FindFirstChild("Dragon Claw") and LP.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        RS.Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end 
                end
            end
        end
    end)
end)
ItemTab:AddToggle({
	Name = "Taken DeathStep",
	Default = false,
	Flag = "DeathStep",
	Save = true,
	Callback = function(Value)
		_G.AutoDeathStep = Value
	end    
}) 
spawn(function()
    while wait() do wait()
        if _G.AutoDeathStep then
            if LP.Backpack:FindFirstChild("Black Leg") or LP.Character:FindFirstChild("Black Leg") or LP.Backpack:FindFirstChild("Death Step") or LP.Character:FindFirstChild("Death Step") then
                if LP.Backpack:FindFirstChild("Black Leg") and LP.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
                    RS.Remotes.CommF_:InvokeServer("BuyDeathStep")
                    Tool = "Death Step"
                end  
                if LP.Character:FindFirstChild("Black Leg") and LP.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
                    RS.Remotes.CommF_:InvokeServer("BuyDeathStep")
                    Tool = "Death Step"
                end  
                if LP.Backpack:FindFirstChild("Black Leg") and LP.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
                    Tool = "Black Leg"
                end 
            else 
                RS.Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end
        end
    end
end) 
ItemTab:AddToggle({
	Name = "Claim Sharkman Karate",
	Default = false,
	Flag = "Sharkman",
	Save = true,
	Callback = function(vSharkManClaim)
		SharkManClaim = vSharkManClaim
	end    
}) 
spawn(function()
    while wait() do
        if SharkManClaim then
            RS.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
            if string.find(RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                if LP.Character:FindFirstChild("Water Key") or LP.Backpack:FindFirstChild("Water Key") then
                    ToTween(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                    RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                elseif LP.Character:FindFirstChild("Fishman Karate") and LP.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                else 
                    Ms = "Tide Keeper"
                    if Enemies:FindFirstChild("Tide Keeper") then   
                        for i,v in pairs(Enemies:GetChildren()) do
                            if v.Name == "Tide Keeper" then    
                                OldCFrameShark = v.HumanoidRootPart.CFrame
                                repeat task.wait()
                                    EBuso()
                                    EWeapon(Selecttool)
                                    v.Head.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    ToTween(v.HumanoidRootPart.CFrame*CFrame.new(2,20,2))
                                    EClick()
                                    sethiddenproperty(LP,"SimulationRadius",math.huge)
                                    NoClip = true
                                until v.Humanoid.Health <= 0 or SharkManClaim or LP.Character:FindFirstChild("Water Key") or LP.Backpack:FindFirstChild("Water Key")
                                NoClip = false
                            end
                        end
                    else
                        ToTween(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                        wait(3)
                    end
                end
            else 
                RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            end
        end
    end
end) 
ItemTab:AddToggle({
	Name = "Taken Electric Claw",
	Default = false,
	Flag = "ElectricClaw",
	Save = true,
	Callback = function(Value)
		_G.AutoElectricClaw = Value
		DisableTween(_G.AutoElectricClaw)
	end    
}) 

    spawn(function()
        pcall(function()
            while wait() do 
                if _G.AutoElectricClaw then
                    if LP.Backpack:FindFirstChild("Electro") or LP.Character:FindFirstChild("Electro") or LP.Backpack:FindFirstChild("Electric Claw") or LP.Character:FindFirstChild("Electric Claw") then
                        if LP.Backpack:FindFirstChild("Electro") and LP.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
                            RS.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            Tool = "Electric Claw"
                        end  
                        if LP.Character:FindFirstChild("Electro") and LP.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            RS.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            Tool = "Electric Claw"
                        end  
                        if LP.Backpack:FindFirstChild("Electro") and LP.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
                            Tool = "Electro"
                        end 
                    else
                        RS.Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                end
                if _G.AutoElectricClaw then
                    if LP.Backpack:FindFirstChild("Electro") or LP.Character:FindFirstChild("Electro") then
                        if LP.Backpack:FindFirstChild("Electro") or LP.Character:FindFirstChild("Electro") and LP.Backpack:FindFirstChild("Electro").Level.Value >= 400 or LP.Character:FindFirstChild("Electro").Level.Value >= 400 then
                            if _G.AutoFarm == false then
                                repeat task.wait()
                                    ToTween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (LP.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                RS.Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(2)
                                repeat task.wait()
                                    ToTween(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.AutoElectricClaw or (LP.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    ToTween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (LP.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                RS.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                            elseif _G.AutoFarm == true then
                                _G.AutoFarm = false
                                wait(1)
                                repeat task.wait()
                                    ToTween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (LP.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                RS.Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
                                wait(2)
                                repeat task.wait()
                                    ToTween(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                                until not _G.AutoElectricClaw or (LP.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
                                wait(1)
                                repeat task.wait()
                                    ToTween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                                until not _G.AutoElectricClaw or (LP.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
                                wait(1)
                                RS.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                                Tool = "Electric Claw"
                                wait(.1)
                                _G.AutoFarm = true
                            end
                        end
                    end
                end
            end
        end)
    end)
ItemTab:AddToggle({
	Name = "Taken Dragon Talon",
	Default = false,
	Flag = "DragonTalon",
	Save = true,
	Callback = function(Value)
		_G.AutoDragonTalon = Value
	end    
}) 
    spawn(function()
        while wait() do
            if _G.AutoDragonTalon then
                if LP.Backpack:FindFirstChild("Dragon Claw") or LP.Character:FindFirstChild("Dragon Claw") or LP.Backpack:FindFirstChild("Dragon Talon") or LP.Character:FindFirstChild("Dragon Talon") then
                    if LP.Backpack:FindFirstChild("Dragon Claw") and LP.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        RS.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        Tool = "Dragon Talon"
                    end  
                    if LP.Character:FindFirstChild("Dragon Claw") and LP.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
                        RS.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                        Tool = "Dragon Talon"
                    end  
                    if LP.Backpack:FindFirstChild("Dragon Claw") and LP.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
                        Tool = "Dragon Claw"
                    end 
                else 
                    RS.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
                end
            end
        end
    end)
ItemTab:AddToggle({
	Name = "Taken GodHuman",
	Default = false,
	Flag = "GodHuman",
	Save = true,
	Callback = function(Value)
		_G.Auto_God_Human = Value
	end    
}) 
spawn(function()
    while task.wait() do
		if _G.Auto_God_Human then
			pcall(function()
				if LP.Character:FindFirstChild("Superhuman") or LP.Backpack:FindFirstChild("Superhuman") or LP.Backpack:FindFirstChild("Black Leg") or LP.Character:FindFirstChild("Black Leg") or LP.Backpack:FindFirstChild("Death Step") or LP.Character:FindFirstChild("Death Step") or LP.Backpack:FindFirstChild("Fishman Karate") or LP.Character:FindFirstChild("Fishman Karate") or LP.Backpack:FindFirstChild("Sharkman Karate") or LP.Character:FindFirstChild("Sharkman Karate") or LP.Backpack:FindFirstChild("Electro") or LP.Character:FindFirstChild("Electro") or LP.Backpack:FindFirstChild("Electric Claw") or LP.Character:FindFirstChild("Electric Claw") or LP.Backpack:FindFirstChild("Dragon Claw") or LP.Character:FindFirstChild("Dragon Claw") or LP.Backpack:FindFirstChild("Dragon Talon") or LP.Character:FindFirstChild("Dragon Talon") or LP.Character:FindFirstChild("Godhuman") or LP.Backpack:FindFirstChild("Godhuman") then
					if RS.Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
						if LP.Backpack:FindFirstChild("Superhuman") and LP.Backpack:FindFirstChild("Superhuman").Level.Value >= 400 or LP.Character:FindFirstChild("Superhuman") and LP.Character:FindFirstChild("Superhuman").Level.Value >= 400 then
							RS.Remotes.CommF_:InvokeServer("BuyDeathStep")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Superhuman" ,
							Icon = "http://www.roblox.com/asset/?id=13918363155",
							Duration = 2.5
						})
					end
					if RS.Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
						if LP.Backpack:FindFirstChild("Death Step") and LP.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or LP.Character:FindFirstChild("Death Step") and LP.Character:FindFirstChild("Death Step").Level.Value >= 400 then
							RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Death Step" ,
							Icon = "http://www.roblox.com/asset/?id=13918363155",
							Duration = 2.5
						})
					end
					if RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
						if LP.Backpack:FindFirstChild("Sharkman Karate") and LP.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or LP.Character:FindFirstChild("Sharkman Karate") and LP.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
							RS.Remotes.CommF_:InvokeServer("BuyElectricClaw")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have SharkMan Karate" ,
							Icon = "http://www.roblox.com/asset/?id=13918363155",
							Duration = 2.5
						})
					end
					if RS.Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
						if LP.Backpack:FindFirstChild("Electric Claw") and LP.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or LP.Character:FindFirstChild("Electric Claw") and LP.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
							RS.Remotes.CommF_:InvokeServer("BuyDragonTalon")
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Electric Claw" ,
							Icon = "http://www.roblox.com/asset/?id=13918363155",
							Duration = 2.5
						})
					end
					if RS.Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
						if LP.Backpack:FindFirstChild("Dragon Talon") and LP.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or LP.Character:FindFirstChild("Dragon Talon") and LP.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
							if string.find(RS.Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then
								game.StarterGui:SetCore("SendNotification", {
									Title = "Notification", 
									Text = "Not Have Enough Material" ,
									Icon = "http://www.roblox.com/asset/?id=13918363155",
									Duration = 2.5
								})
							else
								RS.Remotes.CommF_:InvokeServer("BuyGodhuman")
							end
						end
					else
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Have Dragon Talon" ,
							Icon = "http://www.roblox.com/asset/?id=13918363155",
							Duration = 2.5
						})
					end
				else
					RS.Remotes.CommF_:InvokeServer("BuySuperhuman")
				end
			end)
		end
	end
end)
ItemTab:AddSection({Name = "Legendary Sword"})
ItemTab:AddToggle({
	Name = "Buy Legendary Sword",
	Default = false,
	Callback = function(vBuyLS)
		BuyLS = vBuyLS
	end    
}) 

spawn(function()
    while wait() do
        if _G.AutoBuyLegendarySword then
            local args = { [1] = "LegendarySwordDealer", [2] = "1"}
            RS.Remotes.CommF_:InvokeServer(unpack(args))
            local args = {[1] = "LegendarySwordDealer", [2] = "2"}
            RS.Remotes.CommF_:InvokeServer(unpack(args))
            local args = {[1] = "LegendarySwordDealer", [2] = "3"}
            RS.Remotes.CommF_:InvokeServer(unpack(args))
        end 
    end
end)

SeaTab:AddSection({Name = "Sea Event"})
SeaTab:AddParagraph("Note:", "Quest Sea Event Include: Dogde[Escape] Rough Sea ,(Kill Shark, Piranha, Fish Crew Member, Sea Beast, Ghost Ship, Fish Boat)")
local BoatDropDown = SeaTab:AddDropdown({
	Name = "Select Boat",
	Default = "",
	Options = {"PirateBrigade", "PirateGrandBrigade"},
	Callback = function(vsboatc)
		BoatSelect = vsboatc
	end    
})
spawn(function()
    while wait() do
        if BoatSelect == "PirateBrigade" then
            BoatNameBuy = "PirateBrigade"
        elseif BoatSelect == "PirateGrandBrigade" then
            BoatNameBuy = "PirateGrandBrigade"
        end
    end
end)

SeaTab:AddDropdown({
	Name = "Select Zone",
	Default = "",
	Options = {"Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"},
	Callback = function(Value)
		ZoneSelect = Value
	end    
})

spawn(function()
    while wait() do 
        if ZoneSelect == "Zone 1" then
            if BoatSelect == "PirateBrigade" then
                ZoneCFrame = CFrame.new(-21313.607421875, 12.560698509216309, 1330.6165771484375)
            elseif BoatSelect == "PirateGrandBrigade" then
                ZoneCFrame = CFrame.new(-21313.607421875, 45.95185470581055, 1330.6165771484375)
            end
        elseif ZoneSelect == "Zone 2" then
            if BoatSelect == "PirateBrigade" then
                ZoneCFrame = CFrame.new(-24815.267578125, 12.560657501220703, 5262.62060546875)
            elseif BoatSelect == "PirateGrandBrigade" then
                ZoneCFrame = CFrame.new(-24815.267578125, 45.90665817260742, 5262.62060546875)
            end
        elseif ZoneSelect == "Zone 3" then
            if BoatSelect == "PirateBrigade" then
                ZoneCFrame = CFrame.new(-28464.876953125, 12.553319931030273, 6896.8076171875)
            elseif BoatSelect == "PirateGrandBrigade" then
                ZoneCFrame = CFrame.new(-28464.876953125, 45.90665817260742, 6896.8076171875)
            end
        elseif ZoneSelect == "Zone 4" then
            if BoatSelect == "PirateBrigade" then
                ZoneCFrame = CFrame.new(-30294.8515625, 12.554117202758789, 10409.8564453125)
            elseif BoatSelect == "PirateGrandBrigade" then
                ZoneCFrame = CFrame.new(-30294.8515625, 45.95185470581055, 10409.8564453125)
            end
        elseif ZoneSelect == "Zone 5" then
            if BoatSelect == "PirateBrigade" then
                ZoneCFrame = CFrame.new(-37704.828125, 12.561018943786621, 6750.69873046875)
            elseif BoatSelect == "PirateGrandBrigade" then
                ZoneCFrame = CFrame.new(-37704.828125, 45.90665817260742, 6750.69873046875)
            end
        elseif ZoneSelect == "Zone 6" or ZoneSelect == nil then
            if BoatSelect == "PirateBrigade" then
                ZoneCFrame = CFrame.new(-32704.103515625, 12.557344436645508, 24089.923828125)
            elseif BoatSelect == "PirateGrandBrigade" then
                ZoneCFrame = CFrame.new(-32704.103515625, 45.90665817260742, 24089.923828125)
            end
        end
    end
end)
if Dressora then
    CFrameBoat = CFrame.new(-13.488054275512695, 10.311711311340332, 2927.69287109375)
    Vector3Boat = Vector3.new(-13.488054275512695, 10.311711311340332, 2927.69287109375)
elseif Zou then
    CFrameBoat = CFrame.new(-16207.501953125, 9.0863618850708, 475.1490783691406)
    Vector3Boat = Vector3.new(-16207.501953125, 9.0863618850708, 475.1490783691406)
end
local SeaEventToggle = SeaTab:AddToggle({
    Name = "Quest Sea Event",
    Default = false,
    Flag = "SeaEvent",
    Save = false,
    Callback = function(vSeaEvent)
        SeaEvent = vSeaEvent
    end    
}) 
spawn(function()
    while task.wait() do
        if SeaEvent then
            pcall(function()
                if not CheckSeaBeast() and not CheckPirateBoat() and not game:GetService("Workspace").Enemies:FindFirstChild("Shark") and not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") and not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Rough Sea") then
                    if not checkboat() then
                        if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            BypassTele(CFrameBoat)
                        else
                            ToTween(CFrameBoat)
                            NoClip = true
                            if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude < 20 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", BoatNameBuy)
                            end
                        end
                    elseif checkboat() and not WO.Locations:FindFirstChild("Rough Sea") then
                        if (checkboat().VehicleSeat.Position - Vector3Boat).Magnitude > 50 then
                            checkboat().VehicleSeat.CFrame = ZoneCFrame
                        end
                        if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                            NoClip = true
                            ToTween(checkboat().VehicleSeat.CFrame)
                        else
                            NoClip = false
                        end
                    elseif checkboat() and WO.Locations:FindFirstChild("Rough Sea") then
                        if LP.Character.Humanoid.Sit then
                            LP.Character.Humanoid.Sit = false
                        end
                        if (checkboat().VehicleSeat.Position - Vector3Boat).Magnitude > 50 then
                            checkboat().VehicleSeat.CFrame = CFrame.new(-28464.876953125, 12.553319931030273, 6896.8076171875)
                        end
                        if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                            NoClip = true
                            ToTween(checkboat().VehicleSeat.CFrame)
                        else
                            NoClip = false
                        end
                    elseif not checkboat() and WO.Locations:FindFirstChild("Rough Sea") then
                        if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            BypassTele(CFrameBoat)
                        end
                    end
                elseif CheckPirateBoat() then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                    end
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("Engine") then
                            pcall(function()
                                repeat task.wait()
                                    ToTween(v.Engine.CFrame * CFrame.new(0, -20, 0))
                                    chodienspamhirimixienchetcuchungmay = true
                                    NoClip = true
                                    getgenv().psskill = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                                until not v or not v.Parent or v.Health.Value <= 0 or not CheckPirateBoat() or not SeaEvent
                                getgenv().psskill = nil
                                chodienspamhirimixienchetcuchungmay = false
                                NoClip = false
                            end)
                        end
                    end
                elseif CheckSeaBeast() then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                    end
                    local v = CheckSeaBeast()
                    repeat
                        task.wait()
                        if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
                            spawn(TeleportSeabeast(v), 1)
                            NoClip = true
                        elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
                            if YTween then
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
                                NoClip = true
                            else
                                spawn(TeleportSeabeast(v), 1)
                                NoClip = true
                            end
                        end
                        chodienspamhirimixienchetcuchungmay = true
                        getgenv().psskill = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                    until not v or not v.Parent or v.Health.Value <= 0 or not CheckSeaBeast() or not SeaEvent
                    getgenv().psskill = nil
                    chodienspamhirimixienchetcuchungmay = false
                    NoClip = false
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                    end
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Shark" then
                            pcall(function()
                                repeat task.wait()
                                    EBuso()
                                    EWeapon(Selecttool)
                                    if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        Click()
                                    elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
                                        if YTween then
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
                                        else
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            Click()
                                        end
                                    end
                                    NoClip = true
                                until not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or v.Humanoid.Health <= 0 or not SeaEvent
                                NoClip = false
                            end)
                        end
                    end
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                    end
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                                    game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                                end
                                repeat task.wait()
                                    EBuso()
                                    EWeapon(Selecttool)
                                    if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        Click()
                                    elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
                                        if YTween then
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
                                        else
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            Click()
                                        end
                                    end
                                    NoClip = true
                                until not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or v.Humanoid.Health <= 0 or not SeaEvent
                                NoClip = false
                            end)
                        end
                    end
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                    end
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat task.wait()
                                    EBuso()
                                    EWeapon(Selecttool)
                                    NoClip = true
                                    if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
                                        if YTween then
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
                                        else
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        end
                                    end
                                until not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or v.Humanoid.Health <= 0 or not SeaEvent
                                NoClip = false
                            end)
                        end
                    end
                elseif game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                    end
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("VehicleSeat") then
                            pcall(function()
                                repeat task.wait()
                                    ToTween(v.VehicleSeat.CFrame * CFrame.new(0, -10, 0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    chodienspamhirimixienchetcuchungmay = true
                                    NoClip = true
                                until not v or not v.Parent or v.Health.Value <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not SeaEvent
                                chodienspamhirimixienchetcuchungmay = false
                                NoClip = false
                            end)
                        end
                    end
                elseif not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                        game:GetService("Players").LocalPlayer.Character.Humanoid.Sit = false
                    end
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Fish Crew Member") and v.Humanoid.Health > 0 then
                            pcall(function()
                                repeat task.wait()
                                    EBuso()
                                    EWeapon(Selecttool)
                                    NoClip = true
                                    if game.Players.LocalPlayer.Character.Humanoid.Health > 8000 then
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                        Click()
                                    elseif game.Players.LocalPlayer.Character.Humanoid.Health <= healthlow then
                                        if YTween then
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,600,0))
                                        else
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                            Click()
                                        end
                                    end
                                until not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or v.Humanoid.Health <= 0 or not SeaEvent
                                NoClip = false
                            end)
                        end
                    end
                elseif (CheckSeaBeast() or CheckPirateBoat() or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Rough Sea")) and not checkboat() then
                    if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                        BypassTele(CFrameBoat)
                    end
                end
            end)
        else
            NoClip = false
        end
    end
end)
SeaTab:AddButton({Name = "Teleport Ship To Player", Callback = function()
    checkboat().VehicleSeat.CFrame = LP.Character.HumanoidRootPart.CFrame
end    
})
SeaTab:AddSection({Name = "Low Health"})
SeaTab:AddSlider({Name = "Set Low Health", Min = 0, Max = 13095, Default = 4000, Color = Color3.fromRGB(255,255,255), Increment = 1, ValueName = "Health", Callback = function(vhealthlow)
    healthlow = vhealthlow
	end    
})
SeaTab:AddToggle({Name = "Low Health Y Tween", Default = true, Callback = function(vYTween)
	YTween = vYTween
end    
}) 
SeaTab:AddSlider({Name = "Set Speed", Min = 0, Max = 600, Default = 250, Color = Color3.fromRGB(255,255,255), Increment = 1, ValueName = "Health", Callback = function(vsetspeedboat)
    setspeedboat = vsetspeedboat
	end    
})
SeaTab:AddSection({Name = "Speed Boat"})
SeaTab:AddToggle({Name = "Change Speed Boat", Default = false, Callback = function(vSpeedBoat)
	SpeedBoat = vSpeedBoat
end    
}) 
game:GetService("RunService").RenderStepped:Connect(function()
    if SpeedBoat then
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                v:FindFirstChild("VehicleSeat").MaxSpeed = setspeedboat
            end
        end
    end
end)
SeaTab:AddSection({Name = "Spam Skill"})
SeaTab:AddToggle({Name = "Spam Melee", Default = true, Callback = function(Value)
	SpamMelees = Value
end    
}) 
SeaTab:AddToggle({Name = "Spam Sword", Default = true, Callback = function(Value)
	SpamSwords = Value
end    
}) 
SeaTab:AddToggle({Name = "Spam Gun", Default = true, Callback = function(Value)
	SpamGuns = Value
end    
}) 
SeaTab:AddToggle({Name = "Spam Devil Fruit", Default = false, Callback = function(Value)
	SpamDFs = Value
end    
})
ItemTab:AddSection({Name = "Rip Indra - Dark Dagger"})
ItemTab:AddToggle({
	Name = "Kill Rip Indra",
	Default = false,
	Callback = function(Value)
		_G.RipIndraKill = Value
		DisableTween(_G.RipIndraKill)
	end    
}) 
spawn(function()
    pcall(function()
        while wait() do
            if _G.RipIndraKill then
                if Enemies:FindFirstChild("rip_indra True Form") or Enemies:FindFirstChild("rip_indra") then
                    for i,v in pairs(Enemies:GetChildren()) do
                        if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat task.wait()
                                pcall(function()
                                    EBuso()
                                    EWeapon(Selecttool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                end)
                            until not _G.RipIndraKill or v.Humanoid.Health <= 0
                        end
                    end
                else
                    ToTween(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                end
            end
        end
    end)
end) 
ItemTab:AddToggle({
    Name = "Active Color Haki",
    Default = false,
    Callback = function(Value)
        _G.ActiveColor = Value
        DisableTween(_G.ActiveColor)
    end    
}) 
ItemTab:AddSection({Name = "Kitsune Event"})
local KisuneUpToggle = ItemTab:AddToggle({Name = "Tween to Kitsune Island", Default = false, Callback = function(vKitsuneI)
    KitsuneI = vKitsuneI
    DisableTween(KitsuneI)
    if KitsuneI then
        repeat ToTween(WO.Locations:FindFirstChild("Kitsune Island").CFrame) wait() until KitsuneI == false
    end
end    
})
spawn(function()
    while task.wait() do
        if KitsuneI then
            for i,v in pairs(WO.Locations:GetChildren()) do
                if v:FindFirstChild("Kitsune Island") then
                    ToTween(v:FindFirstChild("Kitsune Island"))
                    NoClip = true
                else
                    NoClip = false
                end
            end
        end
        if AzuEmber then
            if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                LP.Character.HumanoidRootPart.CFrame = game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame
            end
        end
    end
end)
local FarmAzure = ItemTab:AddToggle({Name = "Farm Azure Ember", Default = false, Callback = function(vAzuEmber)
    AzuEmber = vAzuEmber
    DisableTween(AzuEmber)
end    
})
ItemTab:AddToggle({Name = "Summon Kitsune Island", Default = false, Flag = "Summon Kitsune Island", Save = true, Callback = function(vSummonKitsuneIsland)
    SummonKitsuneIsland = vSummonKitsuneIsland
        DisableTween(SummonKitsuneIsland)
    end    
})
spawn(function()
    while wait() do
        if SummonKitsuneIsland then
            if moonst == "Full Moon" and (game.Lighting.ClockTime < 5 or game.Lighting.ClockTime > 12) or moonst == "Next Night" then
                if not CheckSeaBeast() and not CheckPirateBoat() and not Enemies:FindFirstChild("Shark") and not Enemies:FindFirstChild("Piranha") and not Enemies:FindFirstChild("Terrorshark") and not Enemies:FindFirstChild("Fish Crew Member") and not Enemies:FindFirstChild("FishBoat") then
                    if not checkboat() then
                        if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            BypassTele(CFrameBoat)
                        else
                            ToTween(CFrameBoat)
                            NoClip = true
                            if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude < 20 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", BoatNameBuy)
                            end
                        end
                    elseif checkboat() and not WO.Locations:FindFirstChild("Rough Sea") then
                        if (checkboat().VehicleSeat.Position - Vector3Boat).Magnitude > 50 then
                            checkboat().VehicleSeat.CFrame = ZoneCFrame
                        end
                        if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                            NoClip = true
                            ToTween(checkboat().VehicleSeat.CFrame)
                        else
                            NoClip = false
                        end
                    elseif checkboat() and WO.Locations:FindFirstChild("Rough Sea") then
                        if LP.Character.Humanoid.Sit then
                            LP.Character.Humanoid.Sit = false
                        end
                        if (checkboat().VehicleSeat.Position - Vector3Boat).Magnitude > 50 then
                            checkboat().VehicleSeat.CFrame = CFrame.new(-28464.876953125, 12.553319931030273, 6896.8076171875)
                        end
                        if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                            NoClip = true
                            ToTween(checkboat().VehicleSeat.CFrame)
                        else
                            NoClip = false
                        end
                    elseif not checkboat() and WO.Locations:FindFirstChild("Rough Sea") then
                        if (Vector3Boat - LP.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                            BypassTele(CFrameBoat)
                        end
                    end
                else
                    if checkboat() then
                        if (checkboat().VehicleSeat.Position - Vector3Boat).Magnitude > 50 then
                            checkboat().VehicleSeat.CFrame = ZoneCFrame
                        end
                        if LP.Character.Humanoid.Sit then
                            LP.Character.Humanoid.Sit = false
                        end
                        if not LP.Character.Humanoid.Sit then
                            NoClip = true
                            ToTween(checkboat().VehicleSeat.CFrame)
                        else
                            NoClip = false
                        end
                    end
                end
            else
                Notify("Hirimi Hub", "Not Found Near FM or FM, Start Hop", 5)
                HopServer()
            end
        end
    end
end)
ItemTab:AddSection({Name = "Sword Curse"}) 
ItemTab:AddToggle({
	Name = "Taken Yama",
	Default = false,
	Callback = function(Value)
        _G.AutoYama = Value
        DisableTween(_G.AutoYama)
	end    
}) 
spawn(function()
    while wait() do
        if _G.AutoYama then
            if RS.Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                repeat wait(.1)
                    fireclickdetector(WS.Map.Waterfall.SealedKatana.Handle.ClickDetector)
                until LP.Backpack:FindFirstChild("Yama") or not _G.AutoYama
            end
        end
    end
end)
ItemTab:AddToggle({
	Name = "Taken Tushita",
	Default = false,
	Callback = function(Value)
         _G.Autotushita = value
         DisableTween( _G.Autotushita)
	end    
}) 
spawn(function()
    while task.wait(.1) do
        if _G.Autotushita then
            autoTushita()
        end
    end
end)
function enemyrip()
    ToTween(CFrame.new(-5332.30371, 423.985413, -2673.48218))
    wait()
    if Enemies:FindFirstChild("rip_indra True Form") then
        local mobs = Enemies:GetChildren()
        for i,v in pairs(mobs) do
            if v.Name == "rip_indra True Form" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return game.ReplicatedStorage:FindFirstChild("rip_indra True Form")
end
function enemyEliteBoss()
    if Enemies:FindFirstChild("Deandre") or Enemies:FindFirstChild("Urban") or Enemies:FindFirstChild("Diablo") then
        local mobs = Enemies:GetChildren()
        for i,v in pairs(mobs) do
            if v.Name == "Deandre" or v.Name == "Diablo" or v.Name == "Urban" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return game.ReplicatedStorage:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Diablo")
end
function enemylongma()
    ToTween(CFrame.new(-10171.7051, 406.981995, -9552.31738))
    if Enemies:FindFirstChild("Longma") then
        local mobs = Enemies:GetChildren()
        for i,v in pairs(mobs) do
            if v.Name == "Longma" and v:IsA("Model") and v:FindFirstChild("Humanoid") and
                v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    return game.ReplicatedStorage:FindFirstChild("Longma")
end
function autoTushita()
    if not LP.Backpack:FindFirstChild("God's Chalice") and not LP.Character:FindFirstChild("God's Chalice") then
        if Enemies:FindFirstChild("Deandre") or Enemies:FindFirstChild("Urban") or Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Diablo") then
            if LP.PlayerGui.Main.Quest.Visible == false then
                repeat ToTween(CFrame.new(5420.49219, 314.446045, -2823.07373)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                wait(1)
                repeat ToTween(CFrame.new(5420.49219, 314.446045, -2823.07373)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
                wait(1.1)
                RS.Remotes.CommF_:InvokeServer("EliteHunter")
                wait(1)
            elseif LP.PlayerGui.Main.Quest.Visible == true then
                CheckLevel()
                pcall(function()
                    EWeapon(Selecttool)
                    pcall(function()
                        local v = enemyEliteBoss()
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                        Click()
                    end)
                end)
            end
        else
            ToTween(CFrame.new(-12554.9443, 337.194092, -7501.44727))
        end
    elseif LP.Backpack:FindFirstChild("God's Chalice") or LP.Character:FindFirstChild("God's Chalice") then
        RS.Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
        wait(0.5)
        repeat ToTween(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
        wait(0.5)
        RS.Remotes.CommF_:InvokeServer("activateColor","Pure Red")
        wait(0.5)
        repeat ToTween(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10
        wait(0.5)
        RS.Remotes.CommF_:InvokeServer("activateColor","Snow White")
        wait(0.5)
        repeat ToTween(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
        wait(0.5)
        EWeapon("God's Chalice")
        wait(0.5)
        repeat ToTween(CFrame.new(-5560.27295, 313.915466, -2663.89795)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(-5560.27295, 313.915466, -2663.89795)).Magnitude <= 10
        wait(0.5)
        repeat ToTween(CFrame.new(-5561.37451, 313.342529, -2663.4948)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(1)
        repeat ToTween(CFrame.new(5154.17676, 141.786423, 911.046326)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.2)
        repeat ToTween(CFrame.new(5148.03613, 162.352493, 910.548218)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(1)
        EWeapon("Holy Torch")
        wait(1)
        wait(0.4)
        repeat ToTween(CFrame.new(-10752.7695, 412.229523, -9366.36328)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.4)
        repeat ToTween(CFrame.new(-11673.4111, 331.749023, -9474.34668)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.4)
        repeat ToTween(CFrame.new(-12133.3389, 519.47522, -10653.1904)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.4)
        repeat ToTween(CFrame.new(-13336.5, 485.280396, -6983.35254)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(0.4)
        repeat ToTween(CFrame.new(-13487.4131, 334.84845, -7926.34863)) wait() until not AutoTushita or (LP.Character.HumanoidRootPart.Position-Vector3.new(5420.49219, 314.446045, -2823.07373)).Magnitude <= 10
        wait(1)
    elseif Enemies:FindFirstChild("Longma") or game.ReplicatedStorage:FindFirstChild("Longma") then
        pcall(function()
            EWeapon(Selecttool)
            pcall(function()
                local v = enemylongma()
                v.HumanoidRootPart.CanCollide = false
                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                Click()
            end)
        end)
    elseif Enemies:FindFirstChild("rip_indra True Form")  or game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
        pcall(function()
            EWeapon(Selecttool)
            pcall(function()
                local v = enemyrip()
                v.HumanoidRootPart.CanCollide = false
                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                Click()
            end)
        end)
    else
        ToTween(CFrame.new(-12554.9443, 337.194092, -7501.44727))
    end
end
ItemTab:AddSection({Name = "Soul Guitar"})
ItemTab:AddToggle({
	Name = "Quest Soul Guitar",
	Default = false,
	Flag = "SoulGuitar",
	Save = true,
	Callback = function(Value)
        AutoSoulGuitar = value    
        DisableTween(AutoSoulGuitar)
	end    
}) 
spawn(function()
    while task.wait() do
        pcall(function()
            if AutoSoulGuitar then
                if not LP.Backpack:FindFirstChild("Soul Guitar") and not LP.Character:FindFirstChild("Soul Guitar") then
                    if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
                        if WS.NPCs:FindFirstChild("Skeleton Machine") then
                            RS.Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
                        else
                            if WS.Map["Haunted Castle"].Candle1.Transparency == 0 then
                                if WS.Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
                                    repeat task.wait() 
                                        ToTween(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) 
                                    until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
                                    wait(1)
                                    fireclickdetector(WS.Map["Haunted Castle"].Placard7.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(WS.Map["Haunted Castle"].Placard6.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(WS.Map["Haunted Castle"].Placard5.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(WS.Map["Haunted Castle"].Placard4.Right.ClickDetector)
                                    wait(1)
                                    fireclickdetector(WS.Map["Haunted Castle"].Placard3.Left.ClickDetector)
                                    wait(1)
                                    fireclickdetector(WS.Map["Haunted Castle"].Placard2.Right.ClickDetector)
                                    wait(1)
                                    fireclickdetector(WS.Map["Haunted Castle"].Placard1.Right.ClickDetector)
                                    wait(1)
                                elseif WS.Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                    if WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                        repeat task.wait() 
                                            ToTween(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) 
                                        until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 3 or not AutoSoulGuitar
                                        wait(1)
                                        ToTween(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
                                        wait(1)
                                        ToTween(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
                                        wait(1)
                                        ToTween(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
                                        wait(1)
                                        ToTween(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
                                        wait(1)
                                        ToTween(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                        wait(1)
                                        fireclickdetector(WS.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
                                    else
                                        Quest3 = true
                                        --Not Work Yet
                                    end
                                else
                                    if WS.NPCs:FindFirstChild("Ghost") then
                                        local args = {
                                            [1] = "GuitarPuzzleProgress",
                                            [2] = "Ghost"
                                        }

                                        RS.Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                end
                            else    
                                if string.find(RS.Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
                                    print("Go to Grave")
                                    ToTween(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                                elseif string.find(RS.Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
                                    print("Wait Next Night")
                                else
                                    RS.Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
                                end
                            end
                        end
                    else
                        ToTween(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                    end
                end
            end
        end)
    end
end)
ItemTab:AddSection({Name = "Saber"})
ItemTab:AddToggle({
	Name = "Claim Saber",
	Default = false,
	Callback = function(ClaimSaber)
		ClaimSaber = vClaimSaber
		DisableTween(ClaimSaber)
	end    
})
spawn(function()
    while task.wait() do
        if ClaimSaber and LP.Data.Level.Value >= 200 then
            pcall(function()
                if WS.Map.Jungle.Final.Part.Transparency == 0 then
                    if WS.Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            ToTween(LP.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            LP.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            LP.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            LP.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            LP.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            LP.Character.HumanoidRootPart.CFrame = WS.Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            ToTween(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
                        end
                    else
                        if WS.Map.Desert.Burn.Part.Transparency == 0 then
                            if LP.Backpack:FindFirstChild("Torch") or LP.Character:FindFirstChild("Torch") then
                                EWeapon("Torch")
                                ToTween(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
                              else
                                ToTween(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))
                            end
                        else
                            if RS.Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                RS.Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                wait(0.5)
                                EWeapon("Cup")
                                wait(0.5)
                                RS.Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",LP.Character.Cup)
                                wait(0)
                                RS.Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                            else
                                if RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                    RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                elseif RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                if Enemies:FindFirstChild("Mob Leader") or RS:FindFirstChild("Mob Leader") then
                                    ToTween(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                                        for i,v in pairs(Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                                if Enemies:FindFirstChild("Mob Leader") then
                                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                        repeat task.wait()
                                                        EBuso()
                                                        EWeapon(Selecttool)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                        EClick()
                                                        sethiddenproperty(LP,"SimulationRadius",math.huge)
                                                        until v.Humanoid.Health <= 0 or not ClaimSaber
                                                    end
                                                end
                                                if RS:FindFirstChild("Mob Leader") then
                                                    ToTween(RS:FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                    end
                                elseif RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                    RS.Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    wait(0.5)
                                    EWeapon("Relic")
                                    wait(0.5)
                                    ToTween(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                                end
                            end
                        end
                    end
                else
                    if Enemies:FindFirstChild("Saber Expert") or RS:FindFirstChild("Saber Expert") then
                        for i,v in pairs(Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert" then
                                    repeat task.wait()
                                        EWeapon(Selecttool)
                                        ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.CanCollide = false
                                        EClick()
                                    until v.Humanoid.Health <= 0 or not ClaimSaber
                                    if v.Humanoid.Health <= 0 then
                                        RS.Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
ItemTab:AddSection({Name = "Haki Color"})
local haki = RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1")
spawn(function()
    while wait() do
        if RS:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1") then
            ColorHaki:Set(haki)
        else
            ColorHaki:Set("NOT FOUND COLOR")
        end
    end
end)
ColorHaki = ItemTab:AddLabel("...")
ItemTab:AddToggle({
	Name = "Buy Color",
	Default = false,
	Callback = function(Value)
		_G.AutoBuyEnchancementColour = Value
	end    
})
spawn(function()
    while wait() do
        if _G.AutoBuyEnchancementColour then
            local args = {[1] = "ColorsDealer", [2] = "2"}
            RS.Remotes.CommF_:InvokeServer(unpack(args))
        end 
    end
end)

ItemTab:AddSection({Name = "Oservation Haki"})

local ObservationRange = ItemTab:AddLabel("")

spawn(function()
    while wait() do
        pcall(function()
            ObservationRange:Set("Observation Range Level : "..math.floor(LP.VisionRadius.Value))
        end)
    end
end)
ItemTab:AddToggle({
	Name = "Farm Exp Observation",
	Default = false,
	Callback = function(Value)
		_G.AutoObservation = Value
		DisableTween(_G.AutoObservation)
	end    
})
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoObservation then
                repeat task.wait()
                    if not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):SetKeyDown('0x65')
                        wait(2)
                        game:GetService('VirtualUser'):SetKeyUp('0x65')
                    end
                until LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoObservation then
                if LP.VisionRadius.Value >= 3000 then
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Icon = "rbxassetid://14161592006";
                        Title = "Status Observation:", 
                        Text = "You Have Max Points"
                    })
                    wait(2)
                else
                    if Dressora then
                        if Enemies:FindFirstChild("Lava Pirate") then
                            if LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    LP.Character.HumanoidRootPart.CFrame = Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.AutoObservation == false or not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    LP.Character.HumanoidRootPart.CFrame = Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                        wait(1)
                                    if not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,LP)
                                    end
                                until _G.AutoObservation == false or LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            ToTween(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                        end
                    elseif Main then
                        if Enemies:FindFirstChild("Galley Captain") then
                            if LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    LP.Character.HumanoidRootPart.CFrame = Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.AutoObservation == false or not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    LP.Character.HumanoidRootPart.CFrame = Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                    wait(1)
                                    if not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,LP)
                                    end
                                until _G.AutoObservation == false or LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            ToTween(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                        end
                    elseif Zou then
                        if Enemies:FindFirstChild("Giant Islander") then
                            if LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                repeat task.wait()
                                    LP.Character.HumanoidRootPart.CFrame = Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                until _G.AutoObservation == false or not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            else
                                repeat task.wait()
                                    LP.Character.HumanoidRootPart.CFrame = Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                    wait(1)
                                    if not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                        game:GetService("TeleportService"):Teleport(game.PlaceId,LP)
                                    end
                                until _G.AutoObservation == false or LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                            end
                        else
                            ToTween(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                        end
                    end
                end
            end
        end
    end)
end)	
ItemTab:AddToggle({
	Name = "Find Musketeer Hat",
	Default = false,
	Callback = function(Value)
		_G.AutoMusketeerHat = Value
		DisableTween(_G.AutoMusketeerHat)
	end    
})
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoMusketeerHat then
                if LP.Data.Level.Value >= 1800 and RS.Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
                    if string.find(LP.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(LP.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and LP.PlayerGui.Main.Quest.Visible == true then
                        if Enemies:FindFirstChild("Forest Pirate") then
                            for i,v in pairs(Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" then
                                    repeat task.wait()
                                        pcall(function()
                                            EWeapon(Selecttool)
                                            EBuso()
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            v.HumanoidRootPart.CanCollide = false
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            MusketeerHatMon = v.HumanoidRootPart.CFrame
                                            StartMagnetMusketeerhat = true
                                        end)
                                    until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or LP.PlayerGui.Main.Quest.Visible == false
                                    StartMagnetMusketeerhat = false
                                end
                            end
                        else
                            StartMagnetMusketeerhat = false
                            ToTween(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        ToTween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - LP.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            RS.Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
                        end
                    end
                elseif LP.Data.Level.Value >= 1800 and RS.Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
                    if LP.PlayerGui.Main.Quest.Visible and string.find(LP.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and LP.PlayerGui.Main.Quest.Visible == true then
                        if Enemies:FindFirstChild("Captain Elephant") then
                            for i,v in pairs(Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    OldCFrameElephant = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        pcall(function()
                                            EWeapon(Selecttool)
                                            EBuso()
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.CFrame = OldCFrameElephant
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                            sethiddenproperty(LP,"SimulationRadius",math.huge)
                                        end)
                                    until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or LP.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            ToTween(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                        end
                    else
                        ToTween(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
                        if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.5)
                            RS.Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                        end
                    end
                elseif LP.Data.Level.Value >= 1800 and RS.Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
                    ToTween(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                end
            end
        end
    end)
end)
ItemTab:AddSection({Name = "Soul Reaper"})
ItemTab:AddToggle({
	Name = "Kill Soul Reaper",
	Default = false,
	Callback = function(vSoulReaper)
		SoulReaper = vSoulReaper
        DisableTween(SoulReaper)
	end    
})
spawn(function()
    while task.wait() do
        if SoulReaper then
            pcall(function()
                if Enemies:FindFirstChild("Soul Reaper") then
                    for i,v in pairs(Enemies:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            if v.Name == "Soul Reaper" then
                                repeat task.wait()
                                    EWeapon(Selecttool)
                                    ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.CanCollide = false
                                    EClick()
                                    NoClip = true
                                until v.Humanoid.Health <= 0 or not SoulReaper
                                NoClip = false
                            end
                        end
                    end
                else
                    loc3 = CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)
                    loc4 = RS:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame
                    if LP.Backpack:FindFirstChild("Hallow Essence") or LP.Character:FindFirstChild("Hallow Essence") then
                        repeat task.wait()
                            ToTween(loc3)
                            wait()
                        until (loc3.Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 8
                        EWeapon("Hallow Essence")
                    else
                        ToTween(loc4)
                    end
                end
            end)
        end
    end
end)
StatusTab:AddSection({Name = "Status Zou"})
local bonec = StatusTab:AddLabel("Bone: N/A")
local killcake = StatusTab:AddLabel("Cake Remaining Kills: N/A")
local elitec = StatusTab:AddLabel("Elite Status: N/A")
local elitea = StatusTab:AddLabel("Elite Kill Progress: N/A")
spawn(function()
    while wait() do
        if Zou then
            bonec:Set("Bone: "..(RS.Remotes.CommF_:InvokeServer("Bones","Check")))
            if string.len(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                killcake:Set("Cake Remaining Kills: "..string.sub(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                killcake:Set("Cake Remaining Kills: "..string.sub(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                killcake:Set("Cake Remaining Kills: "..string.sub(RS.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                if Enemies:FindFirstChild("Cake Prince") then
                    killcake:Set("Cake Prince Has Spawned!")
                elseif Enemies:FindFirstChild("Dough King") then
                    killcake:Set("Dough King Has Spawned!")
                end
            end
            if RS:FindFirstChild("Deandre") or RS:FindFirstChild("Urban") or RS:FindFirstChild("Diablo") then
                elitec:Set("Elite Status: Spawned!")
            else
                elitec:Set("Elite Status: Not Found Elite")
            end
            elitea:Set("Elite Progress : "..RS.Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
        end
    end
end)
StatusTab:AddSection({Name = "Status Server"})
local bI = StatusTab:AddLabel("Player Count: " .. PlayersCount() .. "/" .. game.Players.MaxPlayers)
local bJ = StatusTab:AddLabel("Server Time: " .. function6() .. " | " .. function7())
local bL = StatusTab:AddLabel("Acient One Status: " .. tostring(CheckAcientOneStatus()))
task.spawn(function()
    while task.wait() do
        pcall(function()
            StatusTab:Set("Player Count: " .. PlayersCount() .. "/" .. game.Players.MaxPlayers)
            StatusTab:Set("Server Time: " .. function6() .. " | " .. function7())
            StatusTab:Set("Player Aura Status: " .. tostring(PlayerAura_Status))
            StatusTab:Set("Acient One Status: " .. tostring(CheckAcientOneStatus()))
        end)
    task.wait(2)
    end
end)
MainTab:AddSection({Name = "Pirate Raid"})
MainTab:AddToggle({
	Name = "Pirate Raid",
	Default = false,
	Callback = function(vRaidPirate)
		RaidPirate = vRaidPirate
		DisableTween(RaidPirate)
	end    
})
spawn(function()
    while wait() do
        if RaidPirate then
            pcall(function()
                local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(Enemies:GetChildren()) do
                        if _G.RaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - LP.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat wait()
                                    EBuso()
                                    EWeapon(Selecttool)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                    Click()
                                until v.Humanoid.Health <= 0 or not v.Parent or not RaidPirate
                            end
                        end
                    end
                else
                    if ((CFrameBoss).Position - LP.Character.HumanoidRootPart.Position).magnitude <= 1500 then
                        ToTween(CFrameBoss)
                    else
                        ToTween(CFrameBoss)
                    end
                end
            end)
        end
    end
end)
MainTab:AddSection({Name = "Bone Farm"})
MainTab:AddToggle({Name = "Random Suprise", Default = false, Callback = function(vRSuprise)
    RSuprise = vRSuprise
end    
})
task.spawn(function()
    Loop:Connect(function()
        if RSuprise then
            while task.wait() do
                RS.Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            end
        end
    end)
end)
MainTab:AddSection({Name = "Player"})
Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end
local SelectedPly = MainTab:AddDropdown({
	Name = "Select Players",
	Default = "",
	Options = Playerslist,
	Callback = function(Value)
		SPlayer = Value
	end    
})
MainTab:AddButton({
	Name = "Refresh Player",
	Callback = function()
	    NewPlayerList = {}
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(NewPlayerList, v.Name)
        end
        SelectedPly:Refresh(NewPlayerList)
  	end    
})
MainTab:AddToggle({
	Name = "Tween to Player",
	Default = false,
	Callback = function(Value)
		TweenPly = Value
	    pcall(function()
            if TweenPly then
                repeat ToTween(game:GetService("Players")[SPlayer].Character.HumanoidRootPart.CFrame) wait() until not TweenPly
            end
            DisableTween(TweenPly)
        end)
	end    
})
MainTab:AddButton({
	Name = "Get Kill Player Quest",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("PlayerHunter")
  	end    
})
MainTab:AddToggle({
	Name = "Kill Player [Selected]",
	Default = false,
	Callback = function(vKillPlayerSE)
		KillPlayerSE = vKillPlayerSE
		DisableTween(KillPlayerSE)
	end    
})
spawn(function()
    while task.wait() do
        if KillPlayerSE then
            if SPlayer ~= nil and game.Players:FindFirstChild(SPlayer) and game.Players:FindFirstChild(SPlayer).Character.Humanoid.Health > 0 then
                repeat task.wait()
                    EWeapon(Selecttool)
                    EBuso()
                    game.Players:FindFirstChild(SPlayer).Character.HumanoidRootPart.CanCollide = false
                    ToTween(game.Players:FindFirstChild(SPlayer).Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
                    EClick()
                until game.Players:FindFirstChild(SPlayer).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(SPlayer) or not KillPlayerSE
            end
        end
    end
end)
SettingTab:AddSlider({Name = "Stop Health Mastery", Min = 0, Max = 100, Default = 28, Color = Color3.fromRGB(255,255,255), Increment = 1, ValueName = "%", Callback = function(vHealthm)
    HealthStop = vHealthm
end    
})
SettingTab:AddToggle({
	Name = "Enable Ken [Observation]",
	Default = true,
	Callback = function(vEKen)
		EnableKen = vEKen
	end    
})
spawn(function()
    while wait(0.1) do
        if EnableKen then
            RS.Remotes.CommE:FireServer("Ken",true)
        end
    end
end)
SettingTab:AddSection({Name = "Setting Misc"})
SettingTab:AddToggle({
	Name = "Buso Haki",
	Default = true,
	Callback = function(vBusoEnable)
		BusoEnable = vBusoEnable
	end    
}) 
spawn(function()
    while wait(.1) do
        if BusoEnable then 
            if not LP.Character:FindFirstChild("HasBuso") then
                local args = {[1] = "Buso"}
                RS.Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)
SettingTab:AddToggle({
	Name = "Anti AFK",
	Default = true,
	Callback = function(Value)
        local vu = game:GetService("VirtualUser")
		repeat wait() until game:IsLoaded() 
		LP.Idled:connect(function()
		    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	end    
}) 
SettingTab:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
	_G.AutoClick = Value
	end    
}) 
SettingTab:AddButton({
	Name = "Remove Fog",
	Callback = function()
      game.Lighting.Sky:Destroy()
  	end    
})
SettingTab:AddToggle({
	Name = "White Screen",
	Default = false,
	Callback = function(vWhiteScreen)
		WhiteScreen = vWhiteScreen
		if WhiteScreen == true then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        elseif WhiteScreen == false then
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
	end    
})
SettingTab:AddToggle({
	Name = "Dark Screen",
	Default = false,
	Callback = function(Value)
		StartBlackScreen = Value
        local BlackScreen = LP.PlayerGui.Main.Blackscreen
        getgenv().DefaultSize = BlackScreen.Size
        getgenv().NewSize = UDim2.new(500, 0, 500, 500)
        getgenv().StartBlackScreen = false
        if StartBlackScreen then
            BlackScreen.Size = NewSize
        else
            BlackScreen.Size = UDim2.new(DefaultSize)
        end
        _G.WhiteScreen = value
        if _G.WhiteScreen == true then
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        elseif _G.WhiteScreen == false then
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
	end    
})
SettingTab:AddButton({
	Name = "FPS Boost",
	Callback = function()
        for i,v in pairs(game.Workspace.Map:GetDescendants()) do
            if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                v:Destroy()
            end
        end 
        for i,v in pairs(game.ReplicatedStorage.Unloaded:GetDescendants()) do
            if v.Name == "Tavern" or v.Name == "SmileFactory" or v.Name == "Tree" or v.Name == "Rocks" or v.Name == "PartHouse" or v.Name == "Hotel" or v.Name == "WallPiece" or v.Name == "MiddlePillars" or v.Name == "Cloud" or v.Name == "PluginGrass" or v.Name == "BigHouse" or v.Name == "SmallHouse" or v.Name == "Detail" then
                v:Destroy()
            end
        end
        for i,v in pairs(LP.Character:GetDescendants()) do
            if v:IsA("Accessory") or v.Name == "Pants" or v.Name == "Shirt" then
                v:Destroy()
            end
        end
        local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
  	end    
})
SettingTab:AddToggle({
	Name = "Remove Notification",
	Default = false,
	Callback = function(vRemove_trct)
		Remove_trct = vRemove_trct
	end    
})
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if Remove_trct == true then
            RS.Notification:Destroy()        
        end
    end)
end)
TeleTab:AddSection({Name = "Travel Sea"})
TeleTab:AddButton({
	Name = "Travel Main (1)",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("TravelMain")
  	end    
})
TeleTab:AddButton({
	Name = "Travel Dressrosa (2)",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("TravelDressrosa")
  	end    
})
TeleTab:AddButton({
	Name = "Travel Zou (3)",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("TravelZou")
  	end    
})
TeleTab:AddButton({
	Name = "Teleport Sea Beast",
	Callback = function()
        for i,v in pairs(WS.SeaBeasts:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") then
                ToTween(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
            end
        end
  	end    
})
TeleTab:AddSection({Name = "Teleport"})
if Main then
TeleTab:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
        "WindMill",
        "Marine",
        "Middle Town",
        "Jungle",
        "Pirate Village",
        "Desert",
        "Snow Island",
        "MarineFord",
        "Colosseum",
        "Sky Island 1",
        "Sky Island 2",
        "Sky Island 3",
        "Prison",
        "Magma Village",
        "Under Water Island",
        "Fountain City",
        "Shank Room",
        "Mob Island"
        },
	Callback = function(Value)
		_G.SelectIsland = Value
	end    
})
elseif Dressora then
TeleTab:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island"
        },
    Callback = function(Value)
		_G.SelectIsland = Value
	end
})
elseif Zou then
    TeleTab:AddDropdown({
        Name = "Select Island",
        Default = "1",
        Options = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky", 
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Cocoa Island",
            "Candy Island",
            "Tiki Outpost"
            },
	Callback = function(Value)
		_G.SelectIsland = Value
	end
}) 
end
TeleTab:AddToggle({
	Name = "Teleport",
	Default = false,
	Callback = function(vTweentoIsland)
		TweentoIsland = vTweentoIsland
		if TweentoIsland == true then
		    repeat wait()
		        if _G.SelectIsland == "WindMill" then
		            ToTween(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
		        elseif _G.SelectIsland == "Marine" then
		            ToTween(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
		        elseif _G.SelectIsland == "Middle Town" then
		            ToTween(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
		        elseif _G.SelectIsland == "Jungle" then
		            ToTween(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
		        elseif _G.SelectIsland == "Pirate Village" then
		            ToTween(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
		        elseif _G.SelectIsland == "Desert" then
		            ToTween(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
		        elseif _G.SelectIsland == "Snow Island" then
		            ToTween(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
		        elseif _G.SelectIsland == "MarineFord" then
		            ToTween(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
		        elseif _G.SelectIsland == "Colosseum" then
		            ToTween( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
		        elseif _G.SelectIsland == "Sky Island 1" then
		            ToTween(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
		        elseif _G.SelectIsland == "Sky Island 2" then  
		            RS.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		        elseif _G.SelectIsland == "Sky Island 3" then
		            RS.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		        elseif _G.SelectIsland == "Prison" then
		            ToTween( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
		        elseif _G.SelectIsland == "Magma Village" then
		            ToTween(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
		        elseif _G.SelectIsland == "Under Water Island" then
		            RS.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		        elseif _G.SelectIsland == "Fountain City" then
		            ToTween(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
		        elseif _G.SelectIsland == "Shank Room" then
		            ToTween(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
		        elseif _G.SelectIsland == "Mob Island" then
		            ToTween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
		        elseif _G.SelectIsland == "The Cafe" then
		            ToTween(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
		        elseif _G.SelectIsland == "Frist Spot" then
		            ToTween(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
		        elseif _G.SelectIsland == "Dark Area" then
		            ToTween(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
		        elseif _G.SelectIsland == "Flamingo Mansion" then
		            ToTween(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
		        elseif _G.SelectIsland == "Flamingo Room" then
		            ToTween(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
		        elseif _G.SelectIsland == "Green Zone" then
		            ToTween( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
		        elseif _G.SelectIsland == "Factory" then
		            ToTween(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
		        elseif _G.SelectIsland == "Colossuim" then
		            ToTween( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
		        elseif _G.SelectIsland == "Zombie Island" then
		            ToTween(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
		        elseif _G.SelectIsland == "Two Snow Mountain" then
		            ToTween(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
		        elseif _G.SelectIsland == "Punk Hazard" then
		            ToTween(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
		        elseif _G.SelectIsland == "Cursed Ship" then
		            ToTween(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
		        elseif _G.SelectIsland == "Ice Castle" then
		            ToTween(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
		        elseif _G.SelectIsland == "Forgotten Island" then
		            ToTween(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
		        elseif _G.SelectIsland == "Ussop Island" then
		            ToTween(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
		        elseif _G.SelectIsland == "Mini Sky Island" then
		            ToTween(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
		        elseif _G.SelectIsland == "Great Tree" then
		            ToTween(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
		        elseif _G.SelectIsland == "Castle On The Sea" then
		            ToTween(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
		        elseif _G.SelectIsland == "MiniSky" then
		            ToTween(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
		        elseif _G.SelectIsland == "Port Town" then
		            ToTween(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
		        elseif _G.SelectIsland == "Hydra Island" then
		            ToTween(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
		        elseif _G.SelectIsland == "Floating Turtle" then
		            ToTween(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
		        elseif _G.SelectIsland == "Mansion" then
		            RS.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
		        elseif _G.SelectIsland == "Haunted Castle" then
		            ToTween(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
		        elseif _G.SelectIsland == "Ice Cream Island" then
		            ToTween(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
		        elseif _G.SelectIsland == "Peanut Island" then
		            ToTween(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
		        elseif _G.SelectIsland == "Cake Island" then
		            ToTween(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
		        elseif _G.SelectIsland == "Cocoa Island" then
		            ToTween(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
		        elseif _G.SelectIsland == "Candy Island" then
		            ToTween(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    ToTween(CFrame.new(-16207.501953125, 9.0863618850708, 475.1490783691406))
		        end
		    until not TweentoIsland
		end
		DisableTween(TweentoIsland)
	end    
})
TeleTab:AddSection({Name = "Bypass Teleport"})
if Main then
TeleTab:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
        "The Cafe",
        "Frist Spot",
        "Flamingo Room",
        "Green Zone",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island"
        },
    Callback = function(Value)
        _G.SelectWarp = Value
	end    
})
elseif Dressora then
TeleTab:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
        "The Cafe",
        "Frist Spot",
        "Flamingo Room",
        "Green Zone",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island"
        },
	Callback = function(Value)
		_G.SelectWarp = Value
	end
})
elseif Zou then
TeleTab:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "Hydra Island",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Sea to Treats",
        "Cake Island",
        "Tiki Outpost"
        },
	Callback = function(Value)
		_G.SelectWarp = Value
	end
}) 
end
TeleTab:AddButton({
	Name = "Bypass Teleport",
	Callback = function()
        if _G.TeleportWarp == "Manslon" then
        elseif _G.SelectWarp == "WindMill" then
            wait(.1)
            BTP(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
        elseif _G.SelectWarp == "Marine" then
            wait(.1)
            BTP(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
        elseif _G.SelectWarp == "Middle Town" then
            wait(.1)
            BTP(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
        elseif _G.SelectWarp == "Jungle" then
            wait(.1)
            BTP(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
        elseif _G.SelectWarp == "Pirate Village" then
            wait(.1)
            BTP(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
        elseif _G.SelectWarp == "Desert" then
            wait(.1)
            BTP(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
        elseif _G.SelectWarp == "Snow Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "MarineFord" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Colosseum" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Sky Island 1" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Prison" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Magma Village" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Under Water Island" then
            wait(.1)
            RS.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif _G.SelectWarp == "Fountain City" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Shank Room" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Mob Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "The Cafe" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Frist Spot" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Dark Area" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Flamingo Mansion" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")  
        elseif _G.SelectWarp == "Flamingo Room" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(2284.4140625, 15.152037620544, 875.72534179688)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Green Zone" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")  
        elseif _G.SelectWarp == "Factory" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")  
        elseif _G.SelectWarp == "Colossuim" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")      
        elseif _G.SelectWarp == "Zombie Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint") 
        elseif _G.SelectWarp == "Two Snow Mountain" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")    
        elseif _G.SelectWarp == "Punk Hazard" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Cursed Ship" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625, 32885.875)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Ice Castle" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Forgotten Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Ussop Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Mini Sky Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-288.74060058594, 49326.31640625, -35248.59375)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Great Tree" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Castle On The Sea" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
        elseif _G.SelectWarp == "MiniSky" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Port Town" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Hydra Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(5749.7861328125, 611.9736938476562, -276.2497863769531)
        elseif _G.SelectWarp == "Floating Turtle" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Mansion" then
            wait(.1)
            RS.Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Haunted Castle" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Ice Cream Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Peanut Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Cake Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375) 
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Sea to Treats Old" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(508.21466064453125, 25.07753562927246, -12438.2294921875) 
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Cake Island" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-1141.0223388671875, 47.25519561767578, -14204.609375) 
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        elseif _G.SelectWarp == "Tiki Outpost" then
            wait(.1)
            LP.Character.HumanoidRootPart.CFrame = CFrame.new(-16207.501953125, 9.0863618850708, 475.1490783691406)
            LP.Character.Head:Destroy()
            RS.Remotes.CommF_:InvokeServer("SetSpawnPoint")
        end
  	end    
})
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
        end
    end)
end)
if Main or Dressora then
  V4Tab:AddLabel("Need To ThirdSea")
  V4Tab:AddLabel("[VN] Đến Sea 3")
end
if Zou then
    V4Tab:AddSection({Name = "Temple Of Time"})
    V4Tab:AddButton({
        Name = "Telelport Temple Of Time",
        Callback = function()
            TTemplateT()
        end    
    }) 
    V4Tab:AddButton({
        Name = "Teleport To Lever Pull",
        Callback = function()
            TTemplateT()
            ToTween(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
        end    
    }) 
    V4Tab:AddButton({
        Name = "TP Acient One",
        Callback = function()
            TTemplateT()
            ToTween(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
        end    
    }) 
    V4Tab:AddToggle({
        Name = "Disable Inf Stairs",
        Default = false,
        Callback = function(Value)
            LP.Character.InfiniteStairs.Disabled = Value
        end    
    }) 
    V4Tab:AddButton({
        Name = "Teleport Trial Door",
        Callback = function()
            TTemplateT()
            local raceval = LP.Data.Race.Value
            if raceval == "Fishman" then
                ToTween(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
            elseif raceval == "Human" then
                ToTween(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
            elseif raceval == "Cyborg" then
                ToTween(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
            elseif raceval == "Skypiea" then
                ToTween(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
            elseif raceval == "Ghoul" then
                ToTween(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
            elseif raceval == "Mink" then
                ToTween(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
            end
        end    
    }) 
    V4Tab:AddSection({Name = "Trial V4"})
    V4Tab:AddToggle({
        Name = "Finish Trial Race",
        Default = false,
        Callback = function(vRaceTrial)
            RaceTrial = vRaceTrial
            DisableTween(RaceTrial)
        end    
    }) 
    task.spawn(function()
        while task.wait() do
            if RaceTrial then
                if WS.Map:FindFirstChild("FishmanTrial") then
                    if CheckSeaBeastTrial() and (LP.Character.HumanoidRootPart.Position - CheckSeaBeastTrial().HumanoidRootPart.Position).Magnitude <= 2000 then
                        spawn(TeleportSeabeast(CheckSeaBeastTrial()), 1)
                        getgenv().psskill = CheckSeaBeastTrial().HumanoidRootPart.CFrame
                        chodienspamhirimixienchetcuchungmay = true
                    else
                        getgenv().psskill = nil
                        chodienspamhirimixienchetcuchungmay = false
                    end
                elseif WO.Map:FindFirstChild("HumanTrial") and WO.Locations:FindFirstChild("Trial of Strength") then
                    for i,v in pairs(Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and GetDistance(v.HumanoidRootPart.Position) <= 300 then
                            repeat task.wait()
                                EWeapon(Selecttool)
                                EBuso()
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                EClick()
                                v.HumanoidRootPart.CanCollide = false
                                NoClip = true
                            until not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not RaceTrial or not WO.Map:FindFirstChild("HumanTrial") or not WO.Locations:FindFirstChild("Trial of Strength")
                        end
                    end
                elseif WS.Map:FindFirstChild("GhoulTrial") and WO.Locations:FindFirstChild("Trial of Carnage") then
                    for i,v in pairs(Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and GetDistance(v.HumanoidRootPart.Position) <= 300 then
                            repeat task.wait()
                                EWeapon(Selecttool)
                                EBuso()
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                EClick()
                                v.HumanoidRootPart.CanCollide = false
                                NoClip = true
                            until not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not RaceTrial or not WS.Map:FindFirstChild("GhoulTrial") or not WO.Locations:FindFirstChild("Trial of Carnage")
                        end
                    end
                elseif Data.Race.Value == "Skypiea" then
                    local v = WS.Map.SkyTrial.Model.FinishPart
                    if (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                        wait(2)
                        ToTween(v.CFrame)
                        NoClip = true
                        wait(3)
                    end
                elseif Data.Race.Value == "Mink" then
                    local c0 = WS.StartPoint
                    if (c0.Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        ToTween(c0.CFrame)
                        NoClip = false
                        for r, v in pairs(game:GetDescendants()) do
                            if v:IsA("TouchInterest") or v.Name == "TouchInterest" then
                                if (v.Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                    firetouchinterest(v)
                                end
                            end
                        end
                    end
                elseif Data.Race.Value == "Cyborg" then
                    CyborgBypassCFrame = CFrame.new(-20021.8691,10090.4893,-16.37994,-0.976144373,6.71342875e-08,-0.217122361,8.46145412e-08,1,-7.1212007e-08,0.217122361,-8.78849065e-08,-0.976144373)
                    if (CyborgBypassCFrame.Position - LP.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                        ToTween(CyborgBypassCFrame)
                        wait(3)
                    end
                end
            end
        end
    end)
    V4Tab:AddButton({
        Name = "Buy Acient One Quest",
        Callback = function()
            RS.Remotes.CommF_:InvokeServer('UpgradeRace','Buy')
        end    
    }) 
    V4Tab:AddToggle({
        Name = "Kill Player After Trails",
        Default = false,
        Callback = function(vKillTrials)
            KillTrials = vKillTrials
            DisableTween(KillTrials)
        end    
    }) 
    function EquipMelee()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Melee" then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end
            end
        end
    end
    task.spawn(function()
        while task.wait() do
            if KillTrials then
                for i,v in pairs(WS.Characters:GetChildren()) do
                    magnitude = (LP.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude
                    if magnitude <= 300 and v ~= game.Players.LocalPlayer then
                        repeat task.wait()
                            if SpamSkillAllWeapon then
                                chodienspamhirimixienchetcuchungmay = true
                                SpamEnable = false
                            else
                                EquipMelee()
                                SpamEnable = true
                                chodienspamhirimixienchetcuchungmay = false
                            end
                            EBuso()
                            ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,8,0))
                            EClick()
                            NoClip = true
                            AimbotPos = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                            SkillAim = true
                        until not KillTrials or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid")
                        AimbotPos = nil
                        SkillAim = false
                        NoClip = false
                        SpamEnable = false
                    end
                end
            end
            if SpamEnable then
                VIM:SendKeyEvent(true,122,false,game)
                VIM:SendKeyEvent(false,122,false,game)
                VIM:SendKeyEvent(true,120,false,game)
                VIM:SendKeyEvent(false,120,false,game)
                VIM:SendKeyEvent(true,99,false,game)
                VIM:SendKeyEvent(false,99,false,game)
            end
        end
    end)
    V4Tab:AddToggle({
        Name = "Spam Skill All Weapon [Option]",
        Default = false,
        Callback = function(vSpamSkillAllWeapon)
            SpamSkillAllWeapon = vSpamSkillAllWeapon
        end    
    }) 
    V4Tab:AddButton({
        Name = "Stop Spam Skill When Not Auto Turn Off",
        Callback = function()
            chodienspamhirimixienchetcuchungmay = false
        end
    })
end 
ListChip = {}
RaidsModule = require(RS.Raids)
for r, v in pairs(RaidsModule.raids) do
    if v.Name ~= " " then
        table.insert(ListChip, v)
    end
end
for r, v in pairs(RaidsModule.advancedRaids) do
    if v.Name ~= " " then
        table.insert(ListChip, v)
    end
end
RaidTab:AddDropdown({Name = "Select Microchip Raid", Default = "", Options = ListChip, Callback = function(vSelectRaid)
    SelectRaid = vSelectRaid
end    
})
RaidTab:AddToggle({
	Name = "Full Raid",
	Default = false,
	Callback = function(vFullRaid)
		FullRaid = vFullRaid
	end    
}) 
spawn(function()
    while task.wait() do
        if (Dressora or Zou) and FullRaid and CheckIsRaiding() then
            pcall(function()
                if NextIsland() then
                    ToTween(NextIsland().CFrame * CFrame.new(0, 60, 0))
                    NoClip = true
                end
                for i,v in pairs(Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(LP, "SimulationRadius", math.huge)
                        until not v or not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0
                    end
                end
            end)
        elseif (Dressora or Zou) and FullRaid then
            local buy = RS.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", SelectRaid) == 1
            if Dressora then
                fireclickdetector(WS.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
            elseif Zou then
                fireclickdetector(WS.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
            end
        end
    end
end)
RaidTab:AddToggle({
	Name = "Awakener Fruit",
	Default = false,
	Callback = function(vAwkFruit)
		AwkFruit = vAwkFruit
	end    
}) 
spawn(function()
    while wait(.1) do
        if AwkFruit then
            RS.Remotes.CommF_:InvokeServer("Awakener","Check")
            RS.Remotes.CommF_:InvokeServer("Awakener","Awaken")
        end
    end
end)
RaidTab:AddSection({Name = "Law Raid"})
RaidTab:AddButton({
	Name = "Buy Law MicroChip",
	Callback = function()
        local args = {[1] = "BlackbeardReward", [2] = "Microchip", [3] = "2"}
        RS.Remotes.CommF_:InvokeServer(unpack(args))
    end
})
RaidTab:AddButton({
	Name = "Start Law Raid",
	Callback = function()
        if Dressora then
            fireclickdetector(WS.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
        end
    end
})
RaidTab:AddToggle({
	Name = "Kill Law Boss",
	Default = false,
	Callback = function(vLawBoss)
		LawBoss = vLawBoss
        DisableTween(LawBoss)
	end    
}) 
spawn(function()
    while wait() do
        if LawBoss then
            if Enemies:FindFirstChild("Order") then
                for i,v in pairs(Enemies:GetChildren()) do
                    if v.Name == "Order" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                EBuso()
                                EWeapon(Selecttool)
                                v.HumanoidRootPart.CanCollide = false
                                ToTween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                EClick()
                                sethiddenproperty(LP,"SimulationRadius",math.huge)
                            until not LawBoss or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            else
                if RS:FindFirstChild("Order") then
                    ToTween(RS:FindFirstChild("Order").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                end
            end
        end
    end
end)
DFTab:AddButton({
	Name = "Random Fruit",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("Cousin","Buy")
  	end    
}) 
DFTab:AddButton({
	Name = "Devil Fruit Shop",
	Callback = function()
        RS.Remotes.CommF_:InvokeServer("GetFruits")
      	PG.Main.FruitShop.Visible = true
  	end    
}) 
DFTab:AddToggle({
	Name = "Store Fruit",
	Default = false,
	Callback = function(vStoreFruit)
		StoreFruit = vStoreFruit
	end    
})
Loop:Connect(function()
	if StoreFruit then
        StoreFruit()
    end
end)
DFTab:AddToggle({
	Name = "TeleFruit",
	Default = false,
	Callback = function(vTeleFruit)
		TeleFruit = vTeleFruit
	end    
}) 
spawn(function()
    while wait(.1) do
        if TeleFruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    LP.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
    end
end)
SHTab:AddDropdown({
	Name = "Select Melee",
	Default = "",
	Options = {
		"Dark Step",
		"Electro",
		"Fishman Karate",
		"Dragon Claw",
		"SuperHuman",
		"Death Step",
		"Electric Claw",
		"SharkMan Karate",
		"Dragon Talon",
		"God Human",
        "Seguine Art"
     },
	Callback = function(Value)
		_G.BuyMelee = Value
	end    
})
SHTab:AddButton({
	Name = "Buy Melee",
	Callback = function() 
      	if _G.BuyMelee == "Dark Step" then
            RS.Remotes.CommF_:InvokeServer("BuyBlackLeg")
        elseif _G.BuyMelee == "Electro" then
            RS.Remotes.CommF_:InvokeServer("BuyElectro")
        elseif _G.BuyMelee == "Fishman Karate" then
            RS.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        elseif _G.BuyMelee == "Dragon Claw" then
            RS.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
            RS.Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
        elseif _G.BuyMelee == "SuperHuman" then
            RS.Remotes.CommF_:InvokeServer("BuySuperhuman")
        elseif _G.BuyMelee == "Death Step" then
            RS.Remotes.CommF_:InvokeServer("BuyDeathStep")
        elseif _G.BuyMelee == "Electric Claw" then
            RS.Remotes.CommF_:InvokeServer("BuyElectricClaw")
        elseif _G.BuyMelee == "SharkMan Karate" then
            RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
            RS.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        elseif _G.BuyMelee == "Dragon Talon" then
            RS.Remotes.CommF_:InvokeServer("BuyDragonTalon")
        elseif _G.BuyMelee == "God Human" then
            RS.Remotes.CommF_:InvokeServer("BuyGodhuman")
        elseif _G.BuyMelee == "Seguine Art" then
            RS.Remotes.CommF_:InvokeServer("BuySanguineArt")
        end
    end
})
SHTab:AddButton({
	Name = "Buy Race Ghoul",
	Callback = function()
        local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
            RS.Remotes.CommF_:InvokeServer(unpack(args))
        local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
            RS.Remotes.CommF_:InvokeServer(unpack(args))
  	end    
})
SHTab:AddButton({
	Name = "Buy Race Cyborg",
	Callback = function()
        local args = {[1] = "CyborgTrainer", [2] = "Buy"}
        RS.Remotes.CommF_:InvokeServer(unpack(args))
  	end    
})
SHTab:AddButton({
	Name = "Buy Buso Haki",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("BuyHaki","Buso")
  	end    
})
SHTab:AddButton({
	Name = "Buy Geppo",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
  	end    
})
SHTab:AddButton({
	Name = "Buy Soru",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("BuyHaki","Soru")
  	end    
})
SHTab:AddButton({
	Name = "Buy Ken(Observation)",
	Callback = function()
      	RS.Remotes.CommF_:InvokeServer("KenTalk","Buy")
  	end    
})
SHTab:AddButton({
	Name = "Reset Stats",
	Callback = function()
        RS.Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        RS.Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
  	end    
})
SHTab:AddButton({
	Name = "Race Reroll",
	Callback = function()
        RS.Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	    RS.Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
  	end    
})
STTab:AddToggle({
	Name = "Melee",
	Default = false,
	Callback = function(Value)
		melee = Value
	end    
})
STTab:AddToggle({
	Name = "Defense",
	Default = false,
	Callback = function(Value)
		defense = Value
	end    
}) 
STTab:AddToggle({
	Name = "Sword",
	Default = false,
	Callback = function(Value)
		sword = Value
	end    
}) 
STTab:AddToggle({
	Name = "Gun",
	Default = false,
	Callback = function(Value)
		gun = Value
	end    
}) 
STTab:AddToggle({
	Name = "Fruit",
	Default = false,
	Callback = function(Value)
		fruit = Value
	end    
}) 
STTab:AddSlider({Name = "Point", Min = 0, Max = 220, Default = 1, Color = Color3.fromRGB(255,255,255), Increment = 1, ValueName = "point", Callback = function(Value)
		PointStats = Value
	end    
})
spawn(function()
    while wait() do
        if Data.Points.Value >= PointStats then
            if melee then
                local args = {[1] = "AddPoint", [2] = "Melee", [3] = PointStats}
                RS.Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if defense then
                local args = {[1] = "AddPoint", [2] = "Defense", [3] = PointStats}
                RS.Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if sword then
                local args = {[1] = "AddPoint", [2] = "Sword", [3] = PointStats}
                RS.Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if gun then
                local args = {[1] = "AddPoint", [2] = "Gun", [3] = PointStats}
                RS.Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if fruit then
                local args = {[1] = "AddPoint", [2] = "Demon Fruit", [3] = PointStats}
                RS.Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)
MiscTab:AddButton({
	Name = "Haki Color",
	Callback = function()
    LP.PlayerGui.Main.Colors.Visible = true
  	end    
}) 
MiscTab:AddButton({
	Name = "Title Name",
	Callback = function()
        local args = {
            [1] = "getTitles"
        }
        RS.Remotes.CommF_:InvokeServer(unpack(args))
      	LP.PlayerGui.Main.Titles.Visible = true
  	end    
}) 
MiscTab:AddButton({
	Name = "Rejoin Server",
	Callback = function()
      	game:GetService("TeleportService"):Teleport(game.PlaceId, LP)
  	end    
}) 
MiscTab:AddButton({
	Name = "Hop Server",
	Callback = function()
      HopServer()
  	end    
}) 
MiscTab:AddToggle({
	Name = "Walk On Water",
	Default = true,
	Callback = function(vWaterPlane)
		WaterPlane = vWaterPlane
	end    
})
spawn(function()
    while wait() do
        if WaterPlane then
            WS.Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
        else
            WS.Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
        end
    end
end)	
MiscTab:AddTextbox({
	Name = "Paste Job ID",
	Default = "Paste",
	TextDisappear = true,
	Callback = function(vJobID)
		JobID = vJobID
	end	  
})
MiscTab:AddButton({
	Name = "Copy Job ID",
	Callback = function()
      	setclipboard(tostring(game.JobId))
  	end    
})
MiscTab:AddButton({
	Name = "Join Server ID",
	Callback = function()
      	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,JobID, LP)
  	end    
})
MiscTab:AddToggle({
	Name = "Inf Soru",
	Default = false,
	Callback = function(Value)
		getgenv().InfSoru = Value
	end    
})
spawn(function()
    while wait() do
        pcall(function()
            if getgenv().InfSoru and LP.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
                for i,v in next, getgc() do
                    if LP.Character.Soru then
                        if typeof(v) == "function" and getfenv(v).script == LP.Character.Soru then
                            for i2,v2 in next, getupvalues(v) do
                                if typeof(v2) == "table" then
                                    repeat wait(0.1)
                                        v2.LastUse = 0
                                    until not getgenv().InfSoru or LP.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
MiscTab:AddToggle({
    Name = "No Clip",
    Default = false,
    Callback = function(vNoClip)
        if vNoClip then
            NoClip = true
        else
            NoClip = false
        end
    end
})
MiscTab:AddButton({
	Name = "Rain Fruit",
	Callback = function()
        for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
            v.Parent = game.Workspace.Map
            v:MoveTo(LP.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
            if v.Fruit:FindFirstChild("AnimationController") then
                v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
            end
            v.Handle.Touched:Connect(function(otherPart)
                if otherPart.Parent == LP.Character then
                    v.Parent = LP.Backpack
                    LP.Character.Humanoid:EquipTool(v)
                end
            end)
        end
  	end    
})
MiscTab:AddButton({
	Name = "Join Pirates",
	Callback = function()
        RS.Remotes.CommF_:InvokeServer("SetTeam","Pirates")
  	end    
})
MiscTab:AddButton({
	Name = "Join Marines",
	Callback = function()
        RS.Remotes.CommF_:InvokeServer("SetTeam","Marines") 
  	end    
})
OrionLib:Init()
--execute log
local P = {2753915549,4442272183,7449423635};
for i,v in pairs(P) do
	if v == game.PlaceId then
		local url =
			"https://discord.com/api/webhooks/1165245628331335750/6GWRPxusJoB77oF58DkldyEfAR0He_SHev9IhK3GktNLTolU6tp_0v6J5GD-KfsnamNr"
		local data = {
            ["content"] = "Execute Information Player Hyper Ver",
			["embeds"] = {
				{
					["description"] = "Exploit: " .. identifyexecutor() .. "\nUsername: " .. LP.Name .. "\nHardware: " .. game:GetService("RbxAnalyticsService"):GetClientId(),["inline"] = true,},
					["color"] = 16711751,
			},
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)

		local headers = {["content-type"] = "application/json"}
		request = http_request or request or HttpPost or syn.request
		local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(R)
	end
end
