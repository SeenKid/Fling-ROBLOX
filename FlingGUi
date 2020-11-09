-- Farewell Infortality.
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local FEFLINGGUI = Instance.new("TextLabel")
local flung = Instance.new("TextButton")
local fling = Instance.new("TextButton")
local close = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.317647, 0.317647, 0.317647)
Frame.BorderColor3 = Color3.new(0.317647, 0.317647, 0.317647)
Frame.Position = UDim2.new(0.0214067288, 0, 0.525050044, 0)
Frame.Size = UDim2.new(0, 198, 0, 184)
Frame.Active = true
Frame.Draggable = true

FEFLINGGUI.Name = "FLING GUI"
FEFLINGGUI.Parent = Frame
FEFLINGGUI.BackgroundColor3 = Color3.new(0, 0, 0)
FEFLINGGUI.BackgroundTransparency = 0.80000001192093
FEFLINGGUI.BorderColor3 = Color3.new(0, 0, 0)
FEFLINGGUI.Position = UDim2.new(0, 0, -0.00218913867, 0)
FEFLINGGUI.Size = UDim2.new(0, 197, 0, 32)
FEFLINGGUI.Font = Enum.Font.SourceSans
FEFLINGGUI.Text = "TWEEK'S FLING GUI"
FEFLINGGUI.TextColor3 = Color3.new(1, 1, 1)
FEFLINGGUI.TextSize = 14
FEFLINGGUI.TextWrapped = true

flung.Name = "flung"
flung.Parent = Frame
flung.BackgroundColor3 = Color3.new(0, 0, 0)
flung.BackgroundTransparency = 0.80000001192093
flung.BorderColor3 = Color3.new(0, 0, 0)
flung.Position = UDim2.new(0.145908609, 0, 0.563463926, 0)
flung.Size = UDim2.new(0, 140, 0, 31)
flung.Font = Enum.Font.SourceSans
flung.Text = "Fling R15"
flung.TextColor3 = Color3.new(1, 1, 1)
flung.TextSize = 14
flung.MouseButton1Click:connect(function()
power = 250

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

fling.Name = "fling"
fling.Parent = Frame
fling.BackgroundColor3 = Color3.new(0, 0, 0)
fling.BackgroundTransparency = 0.80000001192093
fling.BorderColor3 = Color3.new(0, 0, 0)
fling.Position = UDim2.new(0.140858114, 0, 0.280648321, 0)
fling.Size = UDim2.new(0, 140, 0, 31)
fling.Font = Enum.Font.SourceSans
fling.Text = "Fling R6"
fling.TextColor3 = Color3.new(1, 1, 1)
fling.TextSize = 14
fling.MouseButton1Click:connect(function()
power = 500

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

close.Name = "close"
close.Parent = Frame
close.BackgroundColor3 = Color3.new(0, 0, 0)
close.BackgroundTransparency = 0.89999997615814
close.BorderColor3 = Color3.new(0, 0, 0)
close.Position = UDim2.new(0.787322819, 0, -0.00196042238, 0)
close.Size = UDim2.new(0, 41, 0, 31)
close.Font = Enum.Font.SourceSans
close.Text = "Close"
close.TextColor3 = Color3.new(1, 1, 1)
close.TextSize = 14
close.MouseButton1Click:connect(function()
Frame.Visible = false
end)
