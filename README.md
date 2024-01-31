--// Key System Fix7
repeat task.wait() until game:IsLoaded()
KeySystemGui = Instance.new("ScreenGui");
MainKey = Instance.new("Frame");
UICorner = Instance.new("UICorner");
DropShadowHolder = Instance.new("Frame");
DropShadow = Instance.new("ImageLabel");
LogoHub = Instance.new("ImageLabel");
InputKey = Instance.new("TextBox");
UICorner1 = Instance.new("UICorner");
UIStroke = Instance.new("UIStroke");
TextLabel = Instance.new("TextLabel");
TextLabel1 = Instance.new("TextLabel");
SumbitFrame = Instance.new("Frame");
UICorner2 = Instance.new("UICorner");
SumbitButton = Instance.new("TextButton");
CopyFrame = Instance.new("Frame");
UICorner3 = Instance.new("UICorner");
CopyButton = Instance.new("TextButton");
CopyImage = Instance.new("ImageLabel");
CopyTextBox = Instance.new("TextBox");
UICorner4 = Instance.new("UICorner");
UIStroke1 = Instance.new("UIStroke");
XFrame = Instance.new("Frame");
UICorner5 = Instance.new("UICorner");
XButton = Instance.new("TextButton");

KeySystemGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
KeySystemGui.Name = "KeySystemGui"
KeySystemGui.Parent = game:GetService("CoreGui")

MainKey.AnchorPoint = Vector2.new(0.5, 0.5)
MainKey.BackgroundColor3 = Color3.fromRGB(12.000000234693289, 12.000000234693289, 12.000000234693289)
MainKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainKey.BorderSizePixel = 0
MainKey.Position = UDim2.new(0.5, 0, 0.5, 0)
MainKey.Size = UDim2.new(0, 250, 0, 150)
MainKey.Name = "MainKey"
MainKey.Parent = KeySystemGui

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = MainKey

DropShadowHolder.BackgroundTransparency = 1
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0
DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = MainKey

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

LogoHub.Image = "rbxassetid://16163721013"
LogoHub.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LogoHub.BackgroundTransparency = 0.9990000128746033
LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
LogoHub.BorderSizePixel = 0
LogoHub.Position = UDim2.new(0.00999999978, 0, 0.00999999978, 0)
LogoHub.Size = UDim2.new(0, 64, 0, 64)
LogoHub.Name = "LogoHub"
LogoHub.Parent = MainKey

InputKey.Font = Enum.Font.GothamBold
InputKey.PlaceholderText = "Input Your Key Here..."
InputKey.Text = "Input Your Key Here..."
InputKey.TextColor3 = Color3.fromRGB(255, 255, 255)
InputKey.TextSize = 12
InputKey.TextWrapped = true
InputKey.TextXAlignment = Enum.TextXAlignment.Left
InputKey.AnchorPoint = Vector2.new(0, 0.5)
InputKey.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
InputKey.BackgroundTransparency = 0.9990000128746033
InputKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
InputKey.BorderSizePixel = 0
InputKey.Position = UDim2.new(0.043333251, 0, 0.560333252, 0)
InputKey.Size = UDim2.new(0, 195, 0, 36)
InputKey.Name = "InputKey"
InputKey.Parent = MainKey

UICorner1.CornerRadius = UDim.new(0, 1)
UICorner1.Parent = InputKey

UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Color = Color3.fromRGB(85.0000025331974, 85.0000025331974, 85.0000025331974)
UIStroke.Parent = InputKey

TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Memories Hub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 0.9990000128746033
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.270669669, 0, 0.101621911, 0)
TextLabel.Rotation = 0.009999999776482582
TextLabel.Size = UDim2.new(0, 136, 0, 18)
TextLabel.Parent = MainKey

TextLabel1.Font = Enum.Font.GothamBold
TextLabel1.Text = "Key System"
TextLabel1.TextColor3 = Color3.fromRGB(150.0000062584877, 150.0000062584877, 150.0000062584877)
TextLabel1.TextSize = 15
TextLabel1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel1.TextYAlignment = Enum.TextYAlignment.Bottom
TextLabel1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BackgroundTransparency = 0.9990000128746033
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.Position = UDim2.new(0.270663559, 0, 0.216623947, 0)
TextLabel1.Rotation = 0.009999999776482582
TextLabel1.Size = UDim2.new(0, 130, 0, 18)
TextLabel1.Parent = MainKey

SumbitFrame.BackgroundColor3 = Color3.fromRGB(12.000000234693289, 12.000000234693289, 12.000000234693289)
SumbitFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SumbitFrame.BorderSizePixel = 0
SumbitFrame.Position = UDim2.new(0.864000022, 0, 0.486666679, 0)
SumbitFrame.Size = UDim2.new(0, 24, 0, 24)
SumbitFrame.Name = "SumbitFrame"
SumbitFrame.Parent = MainKey

UICorner2.CornerRadius = UDim.new(0, 5)
UICorner2.Parent = SumbitFrame

SumbitButton.Font = Enum.Font.GothamBold
SumbitButton.Text = "=>"
SumbitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SumbitButton.TextSize = 14
SumbitButton.AnchorPoint = Vector2.new(0.5, 0.5)
SumbitButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SumbitButton.BackgroundTransparency = 0.9990000128746033
SumbitButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SumbitButton.BorderSizePixel = 0
SumbitButton.Position = UDim2.new(0.5, 0, 0.5, 0)
SumbitButton.Size = UDim2.new(1, 0, 1, 0)
SumbitButton.Name = "SumbitButton"
SumbitButton.Parent = SumbitFrame

CopyFrame.BackgroundColor3 = Color3.fromRGB(12.000000234693289, 12.000000234693289, 12.000000234693289)
CopyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyFrame.BorderSizePixel = 0
CopyFrame.Position = UDim2.new(0.864000022, 0, 0.75, 0)
CopyFrame.Size = UDim2.new(0, 24, 0, 24)
CopyFrame.Name = "CopyFrame"
CopyFrame.Parent = MainKey

UICorner3.CornerRadius = UDim.new(0, 5)
UICorner3.Parent = CopyFrame

CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = ""
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 14
CopyButton.AnchorPoint = Vector2.new(0.5, 0.5)
CopyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BackgroundTransparency = 0.9990000128746033
CopyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.BorderSizePixel = 0
CopyButton.Position = UDim2.new(0.5, 0, 0.5, 0)
CopyButton.Size = UDim2.new(1, 0, 1, 0)
CopyButton.Name = "CopyButton"
CopyButton.Parent = CopyFrame

CopyImage.Image = "rbxassetid://16164261549"
CopyImage.AnchorPoint = Vector2.new(0.5, 0.5)
CopyImage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyImage.BackgroundTransparency = 0.9990000128746033
CopyImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyImage.BorderSizePixel = 0
CopyImage.Position = UDim2.new(0.5, 0, 0.5, 0)
CopyImage.Size = UDim2.new(1, -10, 1, -10)
CopyImage.Name = "CopyImage"
CopyImage.Parent = CopyFrame

InputKey.PlaceholderText = "Key System Link"
CopyTextBox.Font = Enum.Font.GothamBold
CopyTextBox.PlaceholderColor3 = Color3.fromRGB(178.00000458955765, 178.00000458955765, 178.00000458955765)
CopyTextBox.Text = "Key System Link"
CopyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyTextBox.TextSize = 12
CopyTextBox.TextWrapped = true
CopyTextBox.TextXAlignment = Enum.TextXAlignment.Left
CopyTextBox.AnchorPoint = Vector2.new(0, 0.5)
CopyTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyTextBox.BackgroundTransparency = 0.9990000128746033
CopyTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
CopyTextBox.BorderSizePixel = 0
CopyTextBox.Position = UDim2.new(0.043333251, 0, 0.826999903, 0)
CopyTextBox.Size = UDim2.new(0, 195, 0, 24)
CopyTextBox.Name = "CopyTextBox"
CopyTextBox.Parent = MainKey

UICorner4.CornerRadius = UDim.new(0, 1)
UICorner4.Parent = CopyTextBox

UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke1.Color = Color3.fromRGB(85.0000025331974, 85.0000025331974, 85.0000025331974)
UIStroke1.Parent = CopyTextBox

XFrame.BackgroundColor3 = Color3.fromRGB(12.000000234693289, 12.000000234693289, 12.000000234693289)
XFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
XFrame.BorderSizePixel = 0
XFrame.Position = UDim2.new(0.796000242, 0, 0.101621911, 0)
XFrame.Size = UDim2.new(0, 35, 0, 35)
XFrame.Name = "XFrame"
XFrame.Parent = MainKey

UICorner5.CornerRadius = UDim.new(0, 5)
UICorner5.Parent = XFrame

XButton.Font = Enum.Font.GothamBold
XButton.Text = "X"
XButton.TextColor3 = Color3.fromRGB(255, 255, 255)
XButton.TextSize = 25
XButton.AnchorPoint = Vector2.new(0.5, 0.5)
XButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
XButton.BackgroundTransparency = 0.9990000128746033
XButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
XButton.BorderSizePixel = 0
XButton.Position = UDim2.new(0.5, 0, 0.5, 0)
XButton.Size = UDim2.new(1, 0, 1, 0)
XButton.Name = "XButton"
XButton.Parent = XFrame
--// Edit Gui
local UserInputService = game:GetService("UserInputService")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
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
MakeDraggable(MainKey,MainKey)
local LibVersion = "v2" -- ( v3 & v4 )
local LibType = "roblox" -- Available ( FiveM or Roblox ) always use small letter
local ServiceID = "hirimii" -- Replace this with your Service ID
local PandaAuth = loadstring(game:HttpGet('https://pandadevelopment.net/servicelib?service='..ServiceID..'&core='..LibType..'&param='..LibVersion))()
-- Validation ( Regular Key )
local Odi = "\72\105\114\105\109\105\115\115\115\115\115\115\115\47\75\101\121\115\45\76\111\97\100\101\114\47\109\97\105\110\47\75\101\121\76\111\97\100\101\114\46\108\117\97"
local LoaderKey = loadstring(game:HttpGet(ccb .. Odi))()
local aab = "\77\101\109\111\114\105\101\115\115\49\47\76\111\97\100\101\114\77\101\109\111\114\105\101\115\47\109\97\105\110\47\77\101\109\111\114\105\101\115\72\46\108\117\97"
local ccb = "https://raw.githubusercontent.com/"
CopyButton.MouseButton1Down:Connect(function()
    if ChooseGetKey == "Panda Development 24 Hours" then
        setclipboard(PandaAuth:GetLink(ServiceID))
    elseif ChooseGetKey == "Easy Key 12 Hours" then
        setclipboard("https://web1s.pro/memoriesKeys")
    end
end)
XButton.MouseButton1Down:Connect(function()
    if game.CoreGui:FindFirstChild("KeySystemGui") then
        game.CoreGui.KeySystemGui:Destroy()
    end
end)
SumbitButton.MouseButton1Down:Connect(function()
    if (ChooseGetKey == "Panda Development 24 Hours" and PandaAuth:ValidateKey(ServiceID, InputKey.Text)) or (ChooseGetKey == "Easy Key 12 Hours" or InputKey.Text == LoaderKey) then
        _G.KeyOld = InputKey.Text
        game.CoreGui.KeySystemGui:Destroy()
        loadstring(game:HttpGet(ccb .. aab))()
    else
        game.Players.LocalPlayer:Kick("Incorrect Key")
    end
end)
local foldername = "Memories Hub"
local filename = foldername.."/OldKey.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G)
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
function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) then
        if isfile(filename) then
            _G = HttpService:JSONDecode(readfile(filename))
        end
    end
end
_G.KeyOld = ""
loadSettings()
if PandaAuth:ValidateKey(ServiceID, _G.KeyOld) then
    game.CoreGui.KeySystemGui:Destroy()
    loadstring(game:HttpGet(ccb .. aab))()
else
    notis.new("<Color=Red>Expired Key<Color=/>"):Display()
end
while keycorrect == false do 
    CopyTextBox = KeyLink
end
notis = require(game.ReplicatedStorage:WaitForChild("Notification"))
notis.new("<Color=Red>Correct Key<Color=/>"):Display()
if game.CoreGui:FindFirstChild("KeySystemGui") then
    game.CoreGui.KeySystemGui:Destroy()
end
--// Script Here
