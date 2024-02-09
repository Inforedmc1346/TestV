repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
--// Join Team
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if getgenv().Setting.Team == "Marines" then
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
local p = game.Players
local lp = p.LocalPlayer
getgenv().weapon = "Melee"
getgenv().targ = nil 
getgenv().checked = {}
getgenv().incheck = nil
if getgenv().Setting.Misc["FPS Boost"] then
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
--// Lock Bounty
if not (lp.leaderstats["Bounty/Honor"].Value > tonumber(getgenv().Setting.Misc["Lock Bounty"][1])) or not (lp.leaderstats["Bounty/Honor"].Value < tonumber(getgenv().Setting.Misc["Lock Bounty"][2])) then 
    lp:Kick("Lock Bounty")
end
--// Random Fruit
if getgenv().Setting.Misc["Random Fruit & Store"] then
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
--// Random Bone
if getgenv().Setting.Misc["Random Suprise"] then
    spawn(function() 
        while task.wait(0.1) do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
        end
    end)
end
if game.PlaceId == 7449423635 then
    distbyp = 5000
    island = {
        ["Port Town"] = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375),
        ["Hydra Island"] = CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531),
        ["Mansion"] = CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375),
        ["Castle On The Sea"] = CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375),
        ["Haunted Island"] = CFrame.new(-9547.5703125, 141.0137481689453, 5535.16162109375),
        ["Great Tree"] = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625),
        ["Candy Island"] = CFrame.new(-1106.076416015625, 13.016114234924316, -14231.9990234375),
        ["Cake Island"] = CFrame.new(-1903.6856689453125, 36.70722579956055, -11857.265625),
        ["Loaf Island"] = CFrame.new(-889.8325805664062, 64.72842407226562, -10895.8876953125),
        ["Peanut Island"] = CFrame.new(-1943.59716796875, 37.012996673583984, -10288.01171875),
        ["Cocoa Island"] = CFrame.new(147.35205078125, 23.642955780029297, -12030.5498046875),
        ["Tiki Outpost"] = CFrame.new(-16234,9,416)
    } 
else
    game.Players.LocalPlayer:Kick("Only Support Blox Fruits Sea 3")
end 
function bypass(Pos)   
    if lp.Character:FindFirstChild("Head") and lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid") then
        dist = math.huge
        is = nil
        for i , v in pairs(island) do
            if (Pos.Position-v.Position).magnitude < dist then
                is = v 
                dist = (Pos.Position-v.Position).magnitude 
            end
        end 
        if is == nil then return; end
        if (lp.Character.HumanoidRootPart.Position-Pos.Position).magnitude > distbyp then 
            if (lp.Character.HumanoidRootPart.Position-Pos.Position).magnitude > (is.Position-Pos.Position).magnitude then
                if not hide and (is.X == 61163.8515625 and is.Y == 11.6796875 and is.Z == 1819.7841796875) or is == CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375) or is == CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375) or is == CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531) then
                    if tween then
                       tween:Cancel()
                    end
                    repeat task.wait()
                        lp.Character.HumanoidRootPart.CFrame = is  
                    until lp.Character.PrimaryPart.CFrame == is   
                    wait(0.1)
                else
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
                        if string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk") then
                            return
                        end
                    end 
                    if tween then 
                        tween:Cancel() 
                    end
                    repeat task.wait()
                        lp.Character.HumanoidRootPart.CFrame = is  
                    until lp.Character.PrimaryPart.CFrame == is  
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid", 9):ChangeState(15)
                    lp.Character:SetPrimaryPartCFrame(is)
                    wait(0.1)
                    lp.Character.Head:Destroy()
                    wait(0.1)
                    repeat task.wait()
                        lp.Character.HumanoidRootPart.CFrame = is  
                        lp.Character.PrimaryPart.CFrame = is  
                    until lp.Character:FindFirstChild("Head") and lp.Character:FindFirstChild("Humanoid").Health > 0
                    wait(0.1)
                end
            end
        end
    end
end
function to(Pos)
    if lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid") and lp.Character.Humanoid.Health > 0 then
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if not game.Players.LocalPlayer.Character.PrimaryPart:FindFirstChild("Hold") then
            local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.PrimaryPart)
            Hold.Name = "Hold"
            Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            Hold.Velocity = Vector3.new(0, 0, 0)
        end
        for a, b in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if b:IsA"BasePart" then
                b.CanCollide = false
            end
        end
        if Distance <= 150 then
            lp.Character.HumanoidRootPart.CFrame = Pos
        end
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
        end
        pcall(function()
            tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / 350, Enum.EasingStyle.Linear),{CFrame = Pos})
            tween:Play()
        end)
        if Distance >= 100 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        end
        if getgenv().Setting.Misc["Bypass TP"] then
            bypass(Pos)
        end
    end
end
--// Calc Pos
function calcpos(I, II) 
    if not II then 
        II = game.Players.LocalPlayer.Character.PrimaryPart.CFrame 
    end 
    return (Vector3.new(I.X, 0, I.Z)-Vector3.new(II.X, 0, II.Z)).Magnitude 
end 
function getSpawn(wtf)
    local a, b = nil, math.huge
    for i,v in pairs(island) do
        if (v.Position-wtf.Position).Magnitude < b then
            a = v
            b = (v.Position-wtf.Position).Magnitude
        end
    end
    return a
end
--// Check Fruit
function hasValue(array, targetString)
    for _, value in ipairs(array) do
        if value == targetString then
            return true
        end
    end
    return false
end
--// Target
function findtarget()
    d = math.huge
    p = nil
    getgenv().targ = nil
    for i, v in pairs(game.Players:GetPlayers()) do 
        if v.Team ~= nil and (tostring(lp.Team) == "Pirates" or (tostring(v.Team) == "Pirates" and tostring(lp.Team) ~= "Pirates")) then
            if hasValue(getgenv().Setting.Skip.Fruit, v.Data.DevilFruit.Value) == false then
                if v ~= lp and (v.Character:FindFirstChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame.Position).Magnitude < d and hasValue(getgenv().checked, v) == false and v.Character.HumanoidRootPart.CFrame.Y <= 5000 then
                    if (tonumber(game.Players.LocalPlayer.Data.Level.Value) - 250) < v.Data.Level.Value and v.Data.Level.Value > 20 then
                        if (getgenv().Setting.Skip["Race V4"] and not (v.Backpack:FindFirstChild("Awakening") or v.Character:FindFirstChild("RaceTransformed") or v.Character:FindFirstChild("Awakening"))) or not getgenv().Setting.Skip["Race V4"] then
                            if calcpos(getSpawn(v.Character.HumanoidRootPart.CFrame), v.Character.HumanoidRootPart.CFrame) < distbyp then
                                p = v 
                                d = (v.Character.HumanoidRootPart.CFrame.Position - lp.Character.HumanoidRootPart.CFrame.Position).Magnitude 
                                if getgenv().Setting.Chat.Enable then
                                    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):FindFirstChild("SayMessageRequest"):FireServer(getgenv().Setting.Chat.Content[math.random(0, #getgenv().Setting.Chat.Content)], "All")
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
--// Skip player
function SkipPlayer()
    getgenv().killed = getgenv().targ 
    table.insert(getgenv().checked, getgenv().targ)
    findtarget()
end
function am2(q0) 
    if not q0 then return end
    return q0.Character:WaitForChild("HumanoidRootPart", 9) 
end 
function CheckRaidTarget(q0) 
    for a=1,5,1 do 
        local a0 = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island"..a) 
        if a0 and am2(q0, a0:GetModelCFrame()) < 3000 then 
            return true 
        end 
    end 
end 
function checkNotify(msg)
    for r, k in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do
        if k and k.Text and string.find(string.lower(k.Text), msg) then
            k:Destroy()
            return true
        end
    end
end
fromtime = 0
function checktarget() 
    if not getgenv().targ then 
        return SkipPlayer() 
    end 
    if not getgenv().targ.Parent then 
        return SkipPlayer() 
    end 
    if not getgenv().targ.Character then 
        return SkipPlayer() 
    end   
    if getgenv().targ.Character.Humanoid.Health <= 0 then
        return SkipPlayer() 
    end
    if checkNotify("player") or checkNotify("người chơi") then
        return SkipPlayer() 
    end 
    if CheckRaidTarget(getgenv().targ) then
        return SkipPlayer() 
    end
    if lp.PlayerGui.Main.BottomHUDList.SafeZone.Visible and getgenv().targ:DistanceFromCharacter(lp.Character:WaitForChild("Head", 9).Position) <= 5 then
        return SkipPlayer()
    end
    if getgenv().targ:DistanceFromCharacter(lp.Character:WaitForChild("Head").Position) < 100 then 
        if os.time() - fromtime > 250 then 
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text and (string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text),"risk")) then
                return SkipPlayer()
            end
        end
    else 
        fromtime = os.time() 
    end
end
--// Click
function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(0,1,0,1))
end
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
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShaker:Stop()
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if typeof(y) == "table" then
            pcall(function()
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
--// Use Skill
function down(use)
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        task.wait(l)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
end
--// Skill
spawn(function()
    while task.wait() do
        if getgenv().Setting.Misc["Spam All Skill On V4"] and lp.Character:FindFirstChild("RaceTransformed") and lp.Character.RaceTransformed.Value then
            getgenv().weapon = "Melee"
            task.wait(getgenv().Setting["Melee"]["Delay"])
            getgenv().weapon = "Sword"
            task.wait(getgenv().Setting["Sword"]["Delay"])
            getgenv().weapon = "Gun"
            task.wait(getgenv().Setting["Gun"]["Delay"])
            getgenv().weapon = "Blox Fruit"
            task.wait(getgenv().Setting["Fruit"]["Delay"])
        else
            if getgenv().Setting["Melee"]["Enable"] then
                getgenv().weapon = "Melee"
                task.wait(getgenv().Setting["Melee"]["Delay"])
            end
            if getgenv().Setting["Sword"]["Enable"] then 
                getgenv().weapon = "Sword"
                task.wait(getgenv().Setting["Sword"]["Delay"])
            end
            if getgenv().Setting["Gun"]["Enable"] then
                getgenv().weapon = "Gun"
                task.wait(getgenv().Setting["Gun"]["Delay"])
            end
            if getgenv().Setting["Fruit"]["Enable"] then
                getgenv().weapon = "Blox Fruit"
                task.wait(getgenv().Setting["Fruit"]["Delay"])
            end
        end
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()           
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
            end
            if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                buoi = true
            else
                game:service("VirtualUser"):CaptureController()
                game:service("VirtualUser"):SetKeyDown("0x65")
                game:service("VirtualUser"):SetKeyUp("0x65")
            end 
            if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") and not game.Players.LocalPlayer.Character.RaceTransformed.Value then
                down("Y")
            end
            if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
                local rel = game.ReplicatedStorage
                rel.Remotes.CommF_:InvokeServer("Buso")
            end
            if getgenv().targ and getgenv().targ ~= nil and getgenv().targ.Character and (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 30 then
                equip(getgenv().weapon)
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                    if v:IsA("Tool") and v.ToolTip == "Melee" then
                        if getgenv().Setting.Melee.Enable then
                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Melee.Z.Enable then	
                                l = getgenv().Setting.Melee.Z.HoldTime
                                down("Z")
                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Melee.X.Enable then	
                                l = getgenv().Setting.Melee.X.HoldTime
                                down("X")
                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("C").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Melee.C.Enable then	
                                l = getgenv().Setting.Melee.C.HoldTime
                                down("C")
                            else
                                Click()
                            end
                        end
                    elseif v:IsA("Tool") and v.ToolTip == "Gun" then
                        if getgenv().Setting.Gun.Enable then
                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Gun.Z.Enable then	
                                l = getgenv().Setting.Gun.Z.HoldTime
                                down("Z")
                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Gun.X.Enable then	
                                l = getgenv().Setting.Gun.X.HoldTime
                                down("X")
                            else
                                Click()
                            end
                        end
                    elseif v:IsA("Tool") and v.ToolTip == "Sword" then
                        if getgenv().Setting.Sword.Enable then
                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Sword.Z.Enable then	
                                l = getgenv().Setting.Sword.Z.HoldTime
                                down("Z")
                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Sword.X.Enable then	
                                l = getgenv().Setting.Sword.X.HoldTime
                                down("X")
                            else
                                Click()
                            end
                        end
                    elseif v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                        if getgenv().Setting.Fruit.Enable then
                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Fruit.Z.Enable then	
                                l = getgenv().Setting.Fruit.Z.HoldTime
                                down("Z")
                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Fruit.X.Enable then	
                                l = getgenv().Setting.Fruit.X.HoldTime
                                down("X")
                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("C").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Fruit.C.Enable then	
                                l = getgenv().Setting.Fruit.C.HoldTime
                                down("C")
                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("V").Cooldown.AbsoluteSize.X <= 0 and getgenv().Setting.Fruit.V.Enable then	
                                l = getgenv().Setting.Fruit.V.HoldTime
                                down("V")
                            elseif getgenv().Setting.Fruit.F.Enable then
                                if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("F").Cooldown.AbsoluteSize.X <= 0 then	
                                    l = getgenv().Setting.Fruit.F.HoldTime
                                    down("F")
                                end
                            else
                                Click()
                            end
                        end
                    end
                end
            end
        end)
    end
end)
--// Circle Tween
local radius = 15
local angle = 0
function getNextPosition(center)
    angle = angle + 20
    return center + Vector3.new(math.sin(math.rad(angle)) * radius, 0, math.cos(math.rad(angle)) * radius)
end
spawn(function()
    while task.wait(0.05) do
        if hopserver then
            repeat task.wait()
                to(lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(500,10000),0))
            until (game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and not string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk")) or (not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible)
            to(CFrame.new(0,10000,0))
            HopServer()
            to(lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(500,10000),0))
        else
            checktarget()
            if getgenv().targ ~= nil and getgenv().targ.Parent and getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if tonumber(lp.Character.Humanoid.Health) > 0 and (tonumber(lp.Character.Humanoid.Health) < getgenv().Setting.Misc["Hide Health"][1] or (hide and tonumber(lp.Character.Humanoid.Health) < getgenv().Setting.Misc["Hide Health"][2])) then 
                    hide = true 
                    to(getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(1500,distbyp),0))
                else
                    hide = false
                    if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - lp.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 50 then
                            if getgenv().targ.Character.HumanoidRootPart.Velocity.Unit ~= Vector3.new(0, 1, 0) and (getgenv().targ.Character.HumanoidRootPart.Position - (getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.Velocity.Unit)).Magnitude < 500 then
                                if getgenv().targ.Character.HumanoidRootPart.Position.Y <= 10 then 
                                    CFrameHunt = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + Vector3.new(getgenv().targ.Character.HumanoidRootPart.Velocity.Unit.X * 10, 5, getgenv().targ.Character.HumanoidRootPart.Velocity.Unit.Z * 10))
                                else
                                    CFrameHunt = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.Velocity.Unit * 10)
                                end
                        else
                            CFrameHunt = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + Vector3.new(0,5,-2))
                        end
                        if getgenv().targ.Character.Humanoid.Health > 0 then
                            if getgenv().targ.Character.Busy.Value then
                                to(getNextPosition(CFrameHunt))
                            else
                                to(CFrameHunt)
                            end
                        else 
                            SkipPlayer()
                        end
                    else
                        to(CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + Vector3.new(0,4,-2)))
                    end
                end
            end
        end
    end
end)
local old;
old = hookmetamethod(game, "__index", function(self, ...) 
    local a0 = {...} 
    local a1 = getnamecallmethod() 
    if getgenv().targ ~= nil and tostring(getcallingscript()) == "Mouse" and tostring(self) == "InputObject" and tostring(a0[1]) == "Position" then
        local a2 = game.Workspace.CurrentCamera:WorldToScreenPoint((getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,-2,-2)).Position)
        return Vector2.new(a2.X, a2.Y)
    end
    return old(self, unpack({...}))
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
            if getgenv().targ ~= nil then
                Origin = Arguments[2].Origin
                Direction = getDirection(Origin, (getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,-2,-2)).Position)
                Arguments[2] = Ray.new(Origin, Direction) 
            end
        end 
    end 
    return oldNamecall(unpack(Arguments)) 
end))
spawn(function()
    while task.wait() do
        local targetPlayer = getgenv().targ
        if targetPlayer ~= nil and getgenv().Setting.Misc["Lock Camera"] then
            local targetCharacter = targetPlayer.Character
            local camera = game.Workspace.CurrentCamera
            if targetCharacter then
                local lookAtPos = targetCharacter:WaitForChild("HumanoidRootPart").Position
                local cameraPos = camera.CFrame.Position
                local newLookAt = CFrame.new(cameraPos, lookAtPos)
                camera.CFrame = newLookAt
            end
        end
    end
end)
--// Hop Server 
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
                if ChooseRegion == nil or ChooseRegion == "" then
                    ChooseRegion = "Singapore"
                else
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
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if not hopserver and child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        print("Memories Hub Auto Bounty | Rejoin!")
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)
ScreenGui = Instance.new("ScreenGui");
DropShadowHolder = Instance.new("Frame");
DropShadow = Instance.new("ImageLabel");
Frame = Instance.new("Frame");
UICorner = Instance.new("UICorner");
Skip = Instance.new("TextButton");
ImageLabel = Instance.new("ImageLabel");
TextLabel = Instance.new("TextLabel");
UIStroke = Instance.new("UIStroke");
TextLabel1 = Instance.new("TextLabel");
UIStroke1 = Instance.new("UIStroke");

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")

DropShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Position = UDim2.new(0.5, 0, 1.5, 0)
DropShadowHolder.Size = UDim2.new(0, 310, 0, 60)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = ScreenGui

DropShadow.Image = "rbxassetid://6015897843"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.5
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 50, 1, 50)
DropShadow.ZIndex = 0
DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder

Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 310, 0, 60)
Frame.Parent = DropShadowHolder

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Frame

Skip.Font = Enum.Font.SourceSans
Skip.Text = ""
Skip.TextColor3 = Color3.fromRGB(0, 0, 0)
Skip.TextSize = 14
Skip.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Skip.BackgroundTransparency = 0.9990000128746033
Skip.BorderColor3 = Color3.fromRGB(0, 0, 0)
Skip.BorderSizePixel = 0
Skip.Position = UDim2.new(0.800000012, 0, 0, 0)
Skip.Size = UDim2.new(0, 60, 0, 60)
Skip.Name = "Skip"
Skip.Parent = Frame

ImageLabel.Image = "rbxassetid://16163721013"
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BackgroundTransparency = 0.9990000128746033
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(1, -20, 1, -20)
ImageLabel.Parent = Skip

TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Memories Hub Auto Bounty"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 16
TextLabel.TextXAlignment = Enum.TextXAlignment.Right
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 0.9990000128746033
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0416666679, 0, 0.166666597, 0)
TextLabel.Size = UDim2.new(0, 177, 0, 19)
TextLabel.Parent = Frame

UIStroke.Thickness = 0.30000001192092896
UIStroke.Parent = TextLabel

TextLabel1.Font = Enum.Font.GothamBold
TextLabel1.Text = "Rewrite Beta V2"
TextLabel1.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.TextSize = 16
TextLabel1.TextTransparency = 0.800000011920929
TextLabel1.TextXAlignment = Enum.TextXAlignment.Right
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 0.9990000128746033
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.Position = UDim2.new(0.0913334116, 0, 0.560000062, 0)
TextLabel1.Size = UDim2.new(0, 162, 0, 15)
TextLabel1.Parent = Frame

UIStroke1.Thickness = 0.3
UIStroke1.Parent = TextLabel1
game:GetService("TweenService"):Create(
	DropShadowHolder, 
	TweenInfo.new(1,Enum.EasingStyle.Back, Enum.EasingDirection.InOut), 
	{Position = UDim2.new(0.5, 0, 0.1, 0)}
):Play()
--// Edit Gui
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
MakeDraggable(DropShadowHolder,DropShadowHolder)
function CircleClick(Button, X, Y)
	coroutine.resume(coroutine.create(function()
		Button.ClipsDescendants = true
		local Circle = script:WaitForChild("Circle"):Clone()
		Circle.Parent = Button
		local NewX = X - Circle.AbsolutePosition.X
		local NewY = Y - Circle.AbsolutePosition.Y
		Circle.Position = UDim2.new(0, NewX, 0, NewY)
		local Size = 0
		if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
			Size = Button.AbsoluteSize.X*1.5
		elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
			Size = Button.AbsoluteSize.Y*1.5
		elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then																										Size = Button.AbsoluteSize.X*1.5
		end
		local Time = 0.5
		Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
		for i=1,10 do
			Circle.ImageTransparency = Circle.ImageTransparency + 0.01
			wait(Time/10)
		end
		Circle:Destroy()
	end))
end
Skip.MouseButton1Down:Connect(function()
    CircleClick(Skip, Mouse.X, Mouse.Y)
    SkipPlayer()
end)
game:GetService("RunService"):Set3dRenderingEnabled(not getgenv().Setting.Misc["White Screen"])
