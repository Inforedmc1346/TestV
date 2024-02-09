repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
--// Join Team
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if getgenv().Config.Team == "Marines" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Marines"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            end
        end
        
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
--// Local
local plrs = game.Players 
local lp = plrs.LocalPlayer 

getgenv().weapon = "Melee"
getgenv().targ = nil 
getgenv().checked = {}
getgenv().incheck = nil

if game.PlaceId == 7449423635 then
    distbyp = 6000
elseif game.PlaceId == 4442272183 then
    distbyp = 3500
elseif game.PlaceId == 2753915549 then
    distbyp = 1500
else
    game.Players.LocalPlayer:Kick("Only Support Blox Fruits")
end 
--// Server Hop
function HopServer(bO)
    pcall(function()
        if not bO then
            bO = 10
        end
        ticklon = tick()
        repeat
            task.wait()
        until tick() - ticklon >= 1
        local function Hop()
            for r = 1, math.huge do
                if not getgenv().Config["Hop Server"] == nil or not getgenv().Config["Hop Server"] == "" then
                    game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ChooseRegion
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
            task.wait()
        end
    end)
end
--// Fps Boost
if getgenv().Config.Misc["Fps Boost"] then
    local removedecals = false
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
        elseif v:IsA("Decal") or v:IsA("Texture") and removedecals then
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

    function ObjectRemvoe()
        for i,v in pairs(workspace:GetDescendants()) do
            if string.find(v.Name,"Tree") or string.find(v.Name,"House") then
                v:Destroy()
            end
        end
    end

    function InvisibleObject()
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if  (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) and v.Transparency then
                v.Transparency = 1
            end
        end
    end
    ObjectRemvoe()
    InvisibleObject() 
end
--// Random Bone
if getgenv().Config.Misc["Random Suprise"] then
    spawn(function() 
        while task.wait(0.1) do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
        end
    end)
end
--// Random Fruit
if getgenv().Config.Misc["Random Fruit & Store"] then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
end
--// Lock Bounty
if not (lp.leaderstats["Bounty/Honor"].Value > tonumber(getgenv().Config["Bounty Lock"].Min)) or not (lp.leaderstats["Bounty/Honor"].Value < tonumber(getgenv().Config["Bounty Lock"].Max)) then 
    lp:Kick("Lock Bounty")
end
--// Spam V4
if getgenv().Config["Spam All Skill On Race V4"] then
    spamv4 = true
else
    spamv4 = false
end
--// Tween / Bypass
function getPortal(check2)
    local check3 = check2.Position
    local w = game.PlaceId
    if w == 2753915549 then
        gQ = {
            Vector3.new(-7894.6201171875, 5545.49169921875, -380.246346191406),
            Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    elseif w == 4442272183 then
        gQ = {
            Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif w == 7449423635 then
        gQ = {
            Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
        }
    end
    local aM, aN = Vector3.new(0,0,0), math.huge

    for _, aL in pairs(gQ) do
        if (aL-check3).Magnitude < aN and aM ~= aL then
            aM, aN = aL,  (aL-check3).Magnitude
        end 
    end
    return aM
end 
function bypass(is)
    if tween then
        tween:Cancel()
    end
    repeat task.wait()
        lp.Character.HumanoidRootPart.CFrame = is  
    until lp.Character.PrimaryPart.CFrame == is  
    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
    lp.Character:SetPrimaryPartCFrame(is)
    task.wait(0.1)
    lp.Character.HumanoidRootPart.CFrame = is  
    lp.Character:SetPrimaryPartCFrame(is)
    lp.Character.Head:Destroy()
    task.wait(0.5)
    repeat task.wait()
        lp.Character.HumanoidRootPart.CFrame = is 
        lp.Character.PrimaryPart.CFrame = is  
    until lp.Character:FindFirstChild("Head")
    task.wait(0.5)
end 
function getSpawn(wtf)
    local a, b = nil, math.huge
    for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(lp.Team)):GetChildren()) do
        if tostring(v) ~= "Leviathan" and (v:GetModelCFrame().Position-wtf.Position).Magnitude < b then
            a = v:GetModelCFrame()
            b = (v:GetModelCFrame().Position-wtf.Position).Magnitude
        end
    end
    return a
end
function request(check1)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({"requestEntrance", check1}))
end
function calcpos(I, II) 
    if not II then 
        II = game.Players.LocalPlayer.Character.PrimaryPart.CFrame 
    end 
    return (Vector3.new(I.X, 0, I.Z)-Vector3.new(II.X, 0, II.Z)).Magnitude 
end 
function checkcombat()
    return game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text and (string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text),"risk"))
end 
function to(Pos)
    if not Pos then return end 
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CanCollide = false    
        end
    end
    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hirimi") then
        local ngu = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        ngu.Name = "Hirimi"
        ngu.MaxForce = Vector3.new(0,math.huge,0)
        ngu.Velocity = Vector3.new(0,0,0)
    end 
    Portal = getPortal(Pos) 
    Spawn = getSpawn(Pos) 
    for mm = 0,3,1 do 
        if getSpawn(Pos) ~= Spawn then 
            return 
        end 
    end 
    MyCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    Distance = calcpos(MyCFrame, Pos)
    if Distance > calcpos(Portal, Pos) and Distance > 300 then
        return request(Portal) 
    end
    if Spawn then 
        Pos0 = calcpos(Spawn, Pos)
        if getgenv().Config["Bypass Teleport"] and not checkcombat() and Pos0 < Distance and Distance > 1200 and calcpos(MyCFrame, Spawn) > 500 and Pos0 < (calcpos(Portal, Pos)+800) then
            return bypass(Spawn)
        end
    end
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    if Distance < 250 then
        lp.Character.HumanoidRootPart.CFrame = Pos
    end
    if Distance < 500 then
        Speed = 400
    elseif Distance < 1000 then
        Speed = 375
    elseif Distance >= 1000 then
        Speed = 350
    end
    if Speed ~= nil then
        tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),{CFrame = Pos})
        tween:Play() 
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end
--// Aim
spawn(function()
    while task.wait() do 
        if getgenv().targ and getgenv().targ ~= nil and getgenv().targ.Character and (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 40 then 
            aim = true 
            CFrameHunt = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * 4, getgenv().targ.Character.HumanoidRootPart.Position)
        else
            aim = false
        end
    end
end)
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if aim then
                        args[2] = CFrameHunt.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
local Mouse = lp:GetMouse()
Mouse.Button1Down:Connect(function()
    pcall(function()
        if getgenv().targ ~= nil and aim then
            local args = {
                 [1] = CFrameHunt.Position,
                 [2] = getgenv().targ.Character.HumanoidRootPart
               }
             game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
         end
    end)
end)
function getDirection(Origin, Position)
    return (Position - Origin).Unit * 1000
end
--- Hook aim
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    local self = Arguments[1]
    if tostring(getcallingscript()) == "Mouse" and self == game.Workspace and not checkcaller() then
        if Method == "FindPartOnRayWithIgnoreList" then
            if aim and getgenv().targ ~= nil and CFrameHunt ~= nil then
                Origin = Arguments[2].Origin
                Direction = getDirection(Origin, CFrameHunt.Position)
                Arguments[2] = Ray.new(Origin, Direction) 
            end
        end 
    end 
    return oldNamecall(unpack(Arguments)) 
end))
--// Buso
function Buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage
        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end
--// Click
function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(0,1,0,1))
end
--// Attack
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShaker:Stop()
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if typeof(y) == "table" then
            pcall(function()
                CameraShaker:Stop()
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
    end)
end)
--// Check Fruit
function hasValue(array, targetString)
    if array == nil then return false end
    for _, value in ipairs(array) do
        if value == targetString then
            return true
        end
    end
    return false
end
--// Target
function target() 
    d = math.huge
    p = nil
    getgenv().targ = nil
    for i, v in pairs(game.Players:GetPlayers()) do 
        if v.Team ~= nil and (tostring(lp.Team) == "Pirates" or (tostring(v.Team) == "Pirates" and tostring(lp.Team) ~= "Pirates")) then
            if hasValue(getgenv().Config["Fruit Block"], v.Data.DevilFruit.Value) == false then
                if v ~= lp and v ~= getgenv().targ and (v.Character:FindFirstChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame.Position).Magnitude < d and hasValue(getgenv().checked, v) == false and v.Character.HumanoidRootPart.CFrame.Y <= 10000 then
                    if (tonumber(game.Players.LocalPlayer.Data.Level.Value) - 250) < v.Data.Level.Value and v.Data.Level.Value > 20 then
                        if v.leaderstats["Bounty/Honor"].Value >= 0 and v.leaderstats["Bounty/Honor"].Value <= 15000000 and not hopserver then 
                            if not (v.Backpack:FindFirstChild("Awakening") or v.Character:FindFirstChild("Awakening")) then
                                if calcpos(getSpawn(v.Character.HumanoidRootPart.CFrame), v.Character.HumanoidRootPart.CFrame) < distbyp then
                                    p = v 
                                    d = (v.Character.HumanoidRootPart.CFrame.Position - lp.Character.HumanoidRootPart.CFrame.Position).Magnitude 
                                end
                            end
                        end
                    end
                end 
            end
        end
    end 
    if p == nil then hopserver = true end 
    getgenv().targ = p
end
--// Notify
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/memaybeohub/Function-Scripts/main/OrionLib.lua"))()
function Notify(content)
    content = tostring(content)
    OrionLib:MakeNotification({
        Name = "Memories Auto Bounty",
        Content = content,
        Image = "rbxassetid://15660291299",
        Time = 5
    })
end
--// Skip player
function SkipPlayer()
    getgenv().killed = getgenv().targ 
    task.wait()
    table.insert(getgenv().checked, getgenv().killed)
    getgenv().targ = nil
    target()
end
--// Hop Server 
spawn(function()
    while task.wait() do
        if hopserver then
            stopbypass = true
            starthop = true
        end
    end
end)
spawn(function()
    while task.wait() do
        if starthop and getgenv().targ == nil then
            repeat task.wait()
            to(lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(500,10000),0))
            until (game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and not string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk")) or (not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible)
            to(CFrame.new(0,10000,0))
            HopServer()
            to(lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(500,10000),0))
        end
    end
end)
--// Equip
function equip(tooltip)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    for _, item in pairs(player.Backpack:GetChildren()) do 
        if tostring(item.ToolTip) == "" then 
            item.Parent = character
        end 
        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                if not game.Players.LocalPlayer.Character:FindFirstChild(item.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                    return item
                end
            end
        end 
    end 
end
--// Use Skill
function down(use,hold)
    pcall(function()
        hold = tonumber(hold)
        game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        task.wait(hold)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
end
function UU(O, L) 
    V = game.Players.LocalPlayer.PlayerGui.Main.Skills
    if O and V:FindFirstChild(O.Name) then
        if V[O.Name]:FindFirstChild(L) then
            if V[O.Name][L].Cooldown.AbsoluteSize.X > 0 then
                return false
            else 
                return true
            end
        else 
            return false
        end 
    else 
        return false
    end 
end
--// Main
spawn(function()
    while task.wait() do
        if spamv4 and lp.Character:FindFirstChild("RaceTransformed") and lp.Character.RaceTransformed.Value then
            getgenv().weapon = "Melee"
            task.wait(getgenv().Config.Weapon["Melee"]["Delay"])
            getgenv().weapon = "Sword"
            task.wait(getgenv().Config.Weapon["Sword"]["Delay"])
            getgenv().weapon = "Gun"
            task.wait(getgenv().Config.Weapon["Gun"]["Delay"])
            getgenv().weapon = "Blox Fruits"
            task.wait(getgenv().Config.Weapon["Fruit"]["Delay"])
        else
            if getgenv().Config.Weapon["Melee"]["Enable"] then
                getgenv().weapon = "Melee"
                task.wait(getgenv().Config.Weapon["Melee"]["Delay"])
            end
            if getgenv().Config.Weapon["Sword"]["Enable"] then 
                getgenv().weapon = "Sword"
                task.wait(getgenv().Config.Weapon["Sword"]["Delay"])
            end
            if getgenv().Config.Weapon["Gun"]["Enable"] then
                getgenv().weapon = "Gun"
                task.wait(getgenv().Config.Weapon["Gun"]["Delay"])
            end
            if getgenv().Config.Weapon["Fruit"]["Enable"] then
                getgenv().weapon = "Blox Fruits"
                task.wait(getgenv().Config.Weapon["Fruit"]["Delay"])
            end
        end
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().targ and getgenv().targ ~= nil and getgenv().targ.Character and (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 40 then
                equip(getgenv().weapon)
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
					if v:IsA("Tool") and v.ToolTip == "Melee" then
						if UU(v,"Z") and getgenv().Config.Weapon.Melee.Z.Enable then	
                            down("Z", getgenv().Config.Weapon.Melee.Z["Hold Time"])
                        elseif UU(v,"X") and getgenv().Config.Weapon.Melee.X.Enable then	
                            down("X", getgenv().Config.Weapon.Melee.X["Hold Time"])
                        elseif UU(v,"C") and getgenv().Config.Weapon.Melee.C.Enable then	
                            down("C", getgenv().Config.Weapon.Melee.C["Hold Time"])
                        else
                            Click()
                        end
					elseif v:IsA("Tool") and v.ToolTip == "Gun" then
						if UU(v,"Z") and getgenv().Config.Weapon.Gun.Z.Enable then	
                            down("Z", getgenv().Config.Weapon.Gun.Z["Hold Time"])
                        elseif UU(v,"X") and getgenv().Config.Weapon.Gun.X.Enable then	
                            down("X", getgenv().Config.Weapon.Gun.X["Hold Time"])
                        else
                            Click()
                        end
					elseif v:IsA("Tool") and v.ToolTip == "Sword" then
						if UU(v,"Z") and getgenv().Config.Weapon.Sword.Z.Enable then	
                            down("Z", getgenv().Config.Weapon.Sword.Z["Hold Time"])
                        elseif UU(v,"X") and getgenv().Config.Weapon.Sword.X.Enable then	
                            down("X", getgenv().Config.Weapon.Sword.X["Hold Time"])
                        else
                            Click()
                        end
					elseif v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
						if UU(v,"Z") and getgenv().Config.Weapon["Fruit"].Z.Enable then	
                            down("Z", getgenv().Config.Weapon["Fruit"].Z["Hold Time"])
                        elseif UU(v,"X") and getgenv().Config.Weapon["Fruit"].X.Enable then	
                            down("X", getgenv().Config.Weapon["Fruit"].X["Hold Time"])
                        elseif UU(v,"C") and getgenv().Config.Weapon["Fruit"].C.Enable then	
                            down("C", getgenv().Config.Weapon["Fruit"].C["Hold Time"])
                        elseif UU(v,"V") and getgenv().Config.Weapon["Fruit"].V.Enable then	
                            down("V", getgenv().Config.Weapon["Fruit"].V["Hold Time"])
                        elseif UU(v,"F") and getgenv().Config.Weapon["Fruit"].F.Enable then	
                            down("F", getgenv().Config.Weapon["Fruit"].F["Hold Time"])
                        else
                            Click()
                        end
					end
				end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        if getgenv().targ == nil or not getgenv().targ or not getgenv().targ.Parent or not getgenv().targ.Character then target() end
        pcall(function()
            if getgenv().targ ~= nil and getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if not (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and getgenv().targ:DistanceFromCharacter(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position) < 8000) then
                    if getgenv().targ ~= nil and calcpos(getSpawn(getgenv().targ.Character.HumanoidRootPart.CFrame), getgenv().targ.Character.HumanoidRootPart.CFrame) > distbyp then
                        SkipPlayer()
                        Notify("Player on the sea")
                    end
                    if tonumber(lp.Character.Humanoid.Health) > 0 and (tonumber(lp.Character.Humanoid.Health) < getgenv().Config.Misc["Hide Health"][1] or (hide and tonumber(lp.Character.Humanoid.Health) < getgenv().Config.Misc["Hide Health"][2])) then 
                        hide = true
                        to(getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(1500,distbyp),0))
                    else
                        hide = false
                        if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - lp.Character.HumanoidRootPart.CFrame.Position).Magnitude <= distbyp then 
                            if getgenv().targ.Character.Humanoid.Health > 0 then
                                if getgenv().targ.Character.Busy.Value then
                                    to(CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + Vector3.new(math.random(-7,7),20,math.random(-7,7))))
                                else
                                    to(CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + Vector3.new(math.random(-7,7),5,math.random(-7,7))))
                                end
                            else 
                                SkipPlayer()
                                Notify("Died")
                            end
                        else
                            if getgenv().targ.Character.Humanoid.Health > 0 then
                                to(CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + Vector3.new(0,4,4)))
                            else
                                SkipPlayer()
                                Notify("Died")
                            end
                        end
                    end
                else
                    SkipPlayer()
                    Notify("Raid")
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
            end
            if getgenv().targ ~= nil and getgenv().targ and getgenv().targ.Parent and getgenv().targ.Character and (getgenv().targ.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 60 then
                if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                    down("Y", 0.1)
                end
                if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
                    local rel = game.ReplicatedStorage
                    rel.Remotes.CommF_:InvokeServer("Buso")
                end
                if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                    buoi = true
                else
                    game:service("VirtualUser"):CaptureController()
                    game:service("VirtualUser"):SetKeyDown("0x65")
                    game:service("VirtualUser"):SetKeyUp("0x65")
                end 
                if lp.PlayerGui.Main.BottomHUDList.SafeZone.Visible == true then
                    SkipPlayer()
                    Notify("Safe Zone")
                end 
                for i, v in pairs(lp.PlayerGui.Notifications:GetChildren()) do 
                    local gay = v:GetChildren() 
                    if v:IsA("TextLabel") and (string.find(string.lower(v.Text), "player") or string.find(string.lower(v.Text), "người chơi")) then 
                        SkipPlayer()
                        v:Destroy()
                        Notify("PVP Dislabled")
                    end
                end 
	        end
        end)
    end
end)
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if not hopserver and child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
        Notify("Rejoin from kicked")
    end
end)
--// White Screen
game.RunService:Set3dRenderingEnabled(not getgenv().Config.Misc["White Screen"])
--// Gui
HirimiGui = Instance.new("ScreenGui");
Main = Instance.new("Frame");
UICorner = Instance.new("UICorner");
DropShadowHolder = Instance.new("Frame");
DropShadow = Instance.new("ImageLabel");
UIStroke = Instance.new("UIStroke");
LogoHub = Instance.new("ImageLabel");
UICorner1 = Instance.new("UICorner");
UIStroke1 = Instance.new("UIStroke");
NameFrame = Instance.new("Frame");
UICorner2 = Instance.new("UICorner");
NameHub = Instance.new("TextLabel");
Feature = Instance.new("TextLabel");
UIStroke2 = Instance.new("UIStroke");
Counter = Instance.new("Frame");
UICorner3 = Instance.new("UICorner");
Earn = Instance.new("TextLabel");
Total = Instance.new("TextLabel");
Elapsed = Instance.new("TextLabel");
CurrentBounty = Instance.new("TextLabel");
Target = Instance.new("TextLabel");
UIStroke3 = Instance.new("UIStroke");
Info = Instance.new("Frame");
UICorner4 = Instance.new("UICorner");
Discord = Instance.new("TextButton");
Discordimg = Instance.new("ImageLabel");
Skip = Instance.new("TextButton");
Skipimg = Instance.new("ImageLabel");
Ytb = Instance.new("TextButton");
Ytbimg = Instance.new("ImageLabel");
Fb = Instance.new("TextButton");
Fbimg = Instance.new("ImageLabel");
UIStroke4 = Instance.new("UIStroke");


HirimiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HirimiGui.Name = "HirimiGui"
HirimiGui.Parent = game:GetService("CoreGui")

Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(20.000000707805157, 20.000000707805157, 20.000000707805157)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.498988688, 0, 0.5, 0)
Main.Size = UDim2.new(0, 280, 0, 208)
Main.Name = "Main"
Main.Parent = HirimiGui

UICorner.CornerRadius = UDim.new(0, 1)
UICorner.Parent = Main

DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = Main

DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

UIStroke.Color = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
UIStroke.Parent = DropShadowHolder

LogoHub.Image = "rbxassetid://16163721013"
LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
LogoHub.BorderSizePixel = 0
LogoHub.Position = UDim2.new(0.0302382335, 0, 0.0399999991, 0)
LogoHub.Size = UDim2.new(0, 80, 0, 80)
LogoHub.Name = "LogoHub"
LogoHub.Parent = Main

UICorner1.CornerRadius = UDim.new(0, 100)
UICorner1.Parent = LogoHub

UIStroke1.Color = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
UIStroke1.Parent = LogoHub

NameFrame.AnchorPoint = Vector2.new(0.5, 0.5)
NameFrame.BackgroundColor3 = Color3.fromRGB(15.000000055879354, 15.000000055879354, 15.000000055879354)
NameFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameFrame.BorderSizePixel = 0
NameFrame.Position = UDim2.new(0.656547666, 0, 0.239999995, 0)
NameFrame.Size = UDim2.new(0, 178, 0, 80)
NameFrame.Name = "NameFrame"
NameFrame.Parent = Main

UICorner2.CornerRadius = UDim.new(0, 1)
UICorner2.Parent = NameFrame

NameHub.FontFace = Font.new("rbxasset://fonts/families/ComicNeueAngular.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
NameHub.Text = "Memories"
NameHub.TextColor3 = Color3.fromRGB(255, 255, 255)
NameHub.TextSize = 28
NameHub.TextXAlignment = Enum.TextXAlignment.Left
NameHub.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NameHub.BackgroundTransparency = 0.9900000095367432
NameHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameHub.BorderSizePixel = 0
NameHub.Position = UDim2.new(0.0755406097, 0, 0.20750007, 0)
NameHub.Size = UDim2.new(0, 138, 0, 20)
NameHub.Name = "NameHub"
NameHub.Parent = NameFrame

Feature.Font = Enum.Font.Cartoon
Feature.Text = "Auto Bounty"
Feature.TextColor3 = Color3.fromRGB(80.00000283122063, 80.00000283122063, 80.00000283122063)
Feature.TextSize = 25
Feature.TextWrapped = true
Feature.TextXAlignment = Enum.TextXAlignment.Left
Feature.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Feature.BackgroundTransparency = 0.9900000095367432
Feature.BorderColor3 = Color3.fromRGB(0, 0, 0)
Feature.BorderSizePixel = 0
Feature.Position = UDim2.new(0.0755406097, 0, 0.560000241, 0)
Feature.Size = UDim2.new(0, 138, 0, 20)
Feature.Name = "Feature"
Feature.Parent = NameFrame

UIStroke2.Color = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
UIStroke2.Parent = NameFrame

Counter.AnchorPoint = Vector2.new(0.5, 0.5)
Counter.BackgroundColor3 = Color3.fromRGB(15.000000055879354, 15.000000055879354, 15.000000055879354)
Counter.BorderColor3 = Color3.fromRGB(0, 0, 0)
Counter.BorderSizePixel = 0
Counter.Position = UDim2.new(0.308333367, 0, 0.720997572, 0)
Counter.Size = UDim2.new(0, 156, 0, 99)
Counter.Name = "Counter"
Counter.Parent = Main

UICorner3.CornerRadius = UDim.new(0, 1)
UICorner3.Parent = Counter

Earn.Font = Enum.Font.Cartoon
Earn.Text = "Earn: 0"
Earn.TextColor3 = Color3.fromRGB(255, 255, 255)
Earn.TextSize = 17
Earn.TextXAlignment = Enum.TextXAlignment.Left
Earn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Earn.BackgroundTransparency = 0.9900000095367432
Earn.BorderColor3 = Color3.fromRGB(0, 0, 0)
Earn.BorderSizePixel = 0
Earn.Position = UDim2.new(0.0500000007, 0, 0.0799999982, 0)
Earn.Size = UDim2.new(0, 120, 0, 16)
Earn.Name = "Earn"
Earn.Parent = Counter

Total.Font = Enum.Font.Cartoon
Total.Text = "Total Earn: 0"
Total.TextColor3 = Color3.fromRGB(255, 255, 255)
Total.TextSize = 17
Total.TextXAlignment = Enum.TextXAlignment.Left
Total.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Total.BackgroundTransparency = 0.9900000095367432
Total.BorderColor3 = Color3.fromRGB(0, 0, 0)
Total.BorderSizePixel = 0
Total.Position = UDim2.new(0.0500001535, 0, 0.402146459, 0)
Total.Size = UDim2.new(0, 119, 0, 17)
Total.Name = "Total"
Total.Parent = Counter

Elapsed.Font = Enum.Font.Cartoon
Elapsed.Text = "Elapsed: 0H0M0S"
Elapsed.TextColor3 = Color3.fromRGB(255, 255, 255)
Elapsed.TextSize = 17
Elapsed.TextXAlignment = Enum.TextXAlignment.Left
Elapsed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Elapsed.BackgroundTransparency = 0.9900000095367432
Elapsed.BorderColor3 = Color3.fromRGB(0, 0, 0)
Elapsed.BorderSizePixel = 0
Elapsed.Position = UDim2.new(0.0500001535, 0, 0.240530297, 0)
Elapsed.Size = UDim2.new(0, 119, 0, 16)
Elapsed.Name = "Elapsed"
Elapsed.Parent = Counter

CurrentBounty.Font = Enum.Font.Cartoon
CurrentBounty.Text = "Current: 0"
CurrentBounty.TextColor3 = Color3.fromRGB(255, 255, 255)
CurrentBounty.TextSize = 17
CurrentBounty.TextXAlignment = Enum.TextXAlignment.Left
CurrentBounty.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CurrentBounty.BackgroundTransparency = 0.9900000095367432
CurrentBounty.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentBounty.BorderSizePixel = 0
CurrentBounty.Position = UDim2.new(0.0500001535, 0, 0.579050362, 0)
CurrentBounty.Size = UDim2.new(0, 119, 0, 16)
CurrentBounty.Name = "CurrentBounty"
CurrentBounty.Parent = Counter

Target.Font = Enum.Font.Cartoon
Target.Text = "Target: Name Player"
Target.TextColor3 = Color3.fromRGB(255, 255, 255)
Target.TextSize = 17
Target.TextXAlignment = Enum.TextXAlignment.Left
Target.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Target.BackgroundTransparency = 0.9900000095367432
Target.BorderColor3 = Color3.fromRGB(0, 0, 0)
Target.BorderSizePixel = 0
Target.Position = UDim2.new(0.0500001535, 0, 0.733689725, 0)
Target.Size = UDim2.new(0, 119, 0, 20)
Target.Name = "Target"
Target.Parent = Counter

UIStroke3.Color = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
UIStroke3.Parent = Counter

Info.AnchorPoint = Vector2.new(0.5, 0.5)
Info.BackgroundColor3 = Color3.fromRGB(15.000000055879354, 15.000000055879354, 15.000000055879354)
Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0.795833349, 0, 0.722500026, 0)
Info.Size = UDim2.new(0, 100, 0, 100)
Info.Name = "Info"
Info.Parent = Main

UICorner4.CornerRadius = UDim.new(0, 1)
UICorner4.Parent = Info

Discord.Font = Enum.Font.SourceSans
Discord.Text = ""
Discord.TextColor3 = Color3.fromRGB(0, 0, 0)
Discord.TextSize = 14
Discord.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Discord.BackgroundTransparency = 0.9900000095367432
Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord.BorderSizePixel = 0
Discord.Size = UDim2.new(0, 50, 0, 48)
Discord.Name = "Discord"
Discord.Parent = Info

Discordimg.Image = "rbxassetid://15660402820"
Discordimg.AnchorPoint = Vector2.new(0.5, 0.5)
Discordimg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Discordimg.BackgroundTransparency = 0.9900000095367432
Discordimg.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discordimg.BorderSizePixel = 0
Discordimg.Position = UDim2.new(0.5, 0, 0.5, 0)
Discordimg.Size = UDim2.new(0, 40, 0, 40)
Discordimg.Name = "Discordimg"
Discordimg.Parent = Discord

Skip.Font = Enum.Font.SourceSans
Skip.Text = ""
Skip.TextColor3 = Color3.fromRGB(0, 0, 0)
Skip.TextSize = 14
Skip.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Skip.BackgroundTransparency = 0.9900000095367432
Skip.BorderColor3 = Color3.fromRGB(0, 0, 0)
Skip.BorderSizePixel = 0
Skip.Position = UDim2.new(0, 0, 0.494845361, 0)
Skip.Size = UDim2.new(0, 50, 0, 48)
Skip.Name = "Skip"
Skip.Parent = Info

Skipimg.Image = "rbxassetid://15660427691"
Skipimg.ImageColor3 = Color3.fromRGB(230.00001668930054, 230.00001668930054, 230.00001668930054)
Skipimg.AnchorPoint = Vector2.new(0.5, 0.5)
Skipimg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Skipimg.BackgroundTransparency = 0.9900000095367432
Skipimg.BorderColor3 = Color3.fromRGB(0, 0, 0)
Skipimg.BorderSizePixel = 0
Skipimg.Position = UDim2.new(0.5, 0, 0.5, 0)
Skipimg.Size = UDim2.new(0, 40, 0, 40)
Skipimg.Name = "Skipimg"
Skipimg.Parent = Skip

Ytb.Font = Enum.Font.SourceSans
Ytb.Text = ""
Ytb.TextColor3 = Color3.fromRGB(0, 0, 0)
Ytb.TextSize = 14
Ytb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ytb.BackgroundTransparency = 0.9900000095367432
Ytb.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ytb.BorderSizePixel = 0
Ytb.Position = UDim2.new(0.5, 0, 0, 0)
Ytb.Size = UDim2.new(0, 50, 0, 48)
Ytb.Name = "Ytb"
Ytb.Parent = Info

Ytbimg.Image = "rbxassetid://15660478880"
Ytbimg.AnchorPoint = Vector2.new(0.5, 0.5)
Ytbimg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Ytbimg.BackgroundTransparency = 0.9900000095367432
Ytbimg.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ytbimg.BorderSizePixel = 0
Ytbimg.Position = UDim2.new(0.5, 0, 0.5, 0)
Ytbimg.Size = UDim2.new(0, 80, 0, 80)
Ytbimg.Name = "Ytbimg"
Ytbimg.Parent = Ytb

Fb.Font = Enum.Font.SourceSans
Fb.Text = ""
Fb.TextColor3 = Color3.fromRGB(0, 0, 0)
Fb.TextSize = 14
Fb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fb.BackgroundTransparency = 0.9900000095367432
Fb.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fb.BorderSizePixel = 0
Fb.Position = UDim2.new(0.5, 0, 0.494845361, 0)
Fb.Size = UDim2.new(0, 50, 0, 48)
Fb.Name = "Fb"
Fb.Parent = Info

Fbimg.Image = "rbxassetid://15660495633"
Fbimg.AnchorPoint = Vector2.new(0.5, 0.5)
Fbimg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Fbimg.BackgroundTransparency = 0.9900000095367432
Fbimg.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fbimg.BorderSizePixel = 0
Fbimg.Position = UDim2.new(0.5, 0, 0.5, 0)
Fbimg.Size = UDim2.new(0, 40, 0, 40)
Fbimg.Name = "Fbimg"
Fbimg.Parent = Fb

UIStroke4.Color = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
UIStroke4.Parent = Info

--// Edit
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end
MakeDraggable(Main,Main)
Skip.MouseButton1Down:Connect(function()
    SkipPlayer()
    Notify("Skipped Player")
end)
Discord.MouseButton1Down:Connect(function()
    setclipboard("https://discord.gg/RtWeughmYp")
    Notify("Copied Discord")
end)
Ytb.MouseButton1Down:Connect(function()
    setclipboard("https://www.youtube.com/@hirimii0901")
    Notify("Copied Youtube")
end)
Fb.MouseButton1Down:Connect(function()
    setclipboard("https://www.facebook.com/groups/827170698848593/")
    Notify("Copied Facebook")
end)
--// Webhook
function wSend(main)
    spawn(function()
        local Data = game:GetService("HttpService"):JSONEncode(main)
        local Head = {["content-type"] = "application/json"}
        Send = http_request or request or HttpPost or syn.request 
        Send({Url = getgenv().Config.WebHook.Url, Body = Data, Method = "POST", Headers = Head})
    end)
end 
function wEarn(targ, earn,total) 
    if getgenv().Config.WebHook.Enable and targ ~= nil then
        local data = {
            ["content"] = "",
            ["embeds"] = {
                {
                    ["title"] = "**Memories Hub Auto Bounty**",
                    ["color"] = 0xeb4034,
                    ["fields"] = {
                        {
                            ["name"] = "Account: ",
                            ["value"] = "||"..game.Players.LocalPlayer.Name.."||",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Killed Player: ",
                            ["value"] = "```"..targ.Name.."```",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "From Target: ",
                            ["value"] = "```Earned: "..earn.."```",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "From Account: ",
                            ["value"] = "```Earned: "..total.."```",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Current Bounty: ",
                            ["value"] = "```"..(math.round((game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value / 1000000)*100)/100).."M```",
                            ["inline"] = false,
                        }
                    },
                    ["thumbnail"] = {
                        ["url"] = "https://cdn.discordapp.com/attachments/1094612487359438878/1157347430661095596/IMG_2894.jpg?ex=65184749&is=6516f5c9&hm=85f50fd211fcb56842c6d0fd659d74f2a5bba4d4723fa3d6e36b4ba0398b7886&",
                    },
                    ["footer"] = {
                        ["text"] = "Memories Hub - https://discord.gg/RtWeughmYp",
                    },
                    ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                }
            }
        }
        wSend(data)
    end
end
--// Counter
local foldername = "Memories Hub Auto Bounty"
local filename = foldername.."/Config.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G)
    if true then
        if isfolder(foldername) then
            if isfile(filename) then
                writefile(filename, json)
            else
                writefile(filename, json)
            end
        else
            makefolder(foldername)
        end
    end
end
function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) then
        if isfile(filename) then
            _G = HttpService:JSONDecode(readfile(filename))
        end
    end
end
_G.Total = 0
_G.Time = 0
loadSettings()
Bounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value
Cac = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value
Earned = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Bounty
Earned2 = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Bounty
startTime = tick() - _G.Time
OldTotalEarned = _G.Total 
TotalEarned = _G.Total 
function GetElapsedTime(startTime)
    local elapsedTime = tick() - startTime
    local hours = math.floor(elapsedTime / 3600)
    local minutes = math.floor((elapsedTime % 3600) / 60)
    local seconds = math.floor(elapsedTime % 60)
    _G.Time = elapsedTime
    local formattedTime = string.format("%dh:%dm:%ds", hours, minutes, seconds)
    return formattedTime
end
spawn(function()
    while task.wait() do
        if getgenv().targ ~= nil and not hide and not hopserver then
            Target.Text = "Doing: Kill "..tostring(getgenv().targ)
        elseif getgenv().targ ~= nil and hide and not hopserver then
            Target.Text = "Doing: Run"
        else
            Target.Text = "Doing: Hop server"
        end
        Earned = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Bounty
        if Earned > Earned2 then
            TotalEarned = OldTotalEarned + Earned
            wait()
            Cac2 = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value - Cac
            wait(0.1)
            Cac = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value
            Earned2 = Earned
            saveSettings()
            wEarn(getgenv().killed, Cac2,TotalEarned) 
        end
        Earn.Text = "Earn: "..tostring(Earned)
        Total.Text = "Total Earn: "..tostring(TotalEarned)
        CurrentBounty.Text = "Current: "..tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value)
        _G.Total = TotalEarned 
    end
end)
spawn(function()
    while task.wait() do
        Elapsed.Text = "Time Elapsed: "..tostring(GetElapsedTime(startTime))
        saveSettings()
        task.wait(1)
    end
end)
