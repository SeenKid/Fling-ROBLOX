local core
if typeof(gethui) == 'function' then
	core = gethui()
end
if typeof(core) ~= 'Instance' then
	core = game:GetService("CoreGui")
end

local flingGui = select(2, pcall(function()
	return game:GetObjects("rbxassetid://10171585012")[1]:Clone()
end))

if typeof(flingGui) == 'Instance' and flingGui:IsA("ScreenGui") then
	flingGui.Parent = core

	local players = game:GetService("Players")
	local run = game:GetService("RunService")
	local localplayer = players.LocalPlayer

	local power = 15e3
	local fling_active = {}

	local frame = flingGui:WaitForChild("Frame")
	local listedFrame = frame:WaitForChild("Frame")
	local closeButton = frame:WaitForChild("CloseButton")
	local flingButton = listedFrame:WaitForChild("Fling")

	closeButton.MouseButton1Up:Connect(function()
		return flingGui:Destroy()
	end)

	flingButton.MouseButton1Up:Connect(function()
		local character = localplayer.Character

		if typeof(fling_active[character]) == 'Instance' then
			return
		end

		local head = character:FindFirstChild("Head")
		local torso = character:FindFirstChild("Torso")
		local lleg = character:FindFirstChild("Left Leg")
		local rleg = character:FindFirstChild("Right Leg")

		local uppertorso = character:FindFirstChild("UpperTorso")
		local lowertorso = character:FindFirstChild("LowerTorso")

		local rootpart = character:FindFirstChild("HumanoidRootPart")
		local humanoid = character:FindFirstChildWhichIsA("Humanoid")
		local content = {head, torso, lleg, rleg, uppertorso, lowertorso}

		local connections = {}
		if typeof(getconnections) == 'function' then
			for _, part in pairs(content) do
				for _, connection in pairs(getconnections(part:GetPropertyChangedSignal("CanCollide"))) do
					pcall(connection.Disable, connection)
				end
				for _, connection in pairs(getconnections(part.Changed)) do
					pcall(connection.Disable, connection)
				end
			end
			connections = {
				table.unpack(getconnections(game.DescendantAdded)),
				table.unpack(getconnections(workspace.DescendantAdded)),
				table.unpack(getconnections(character.DescendantAdded)),
				typeof(rootpart) == 'Instance' and table.unpack(getconnections(rootpart.ChildAdded)),
				typeof(humanoid) == 'Instance' and table.unpack(getconnections(humanoid:GetPropertyChangedSignal("WalkSpeed"))),
				typeof(humanoid) == 'Instance' and table.unpack(getconnections(humanoid.Changed))
			}
		end
		for _, connection in pairs(connections) do
			pcall(connection.Disable, connection)
		end
		local connection; connection = run.Stepped:Connect(function()
			for _, part in pairs(content) do
				part.CanCollide = false
			end
			humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
		end)

		task.wait(0.1)

		local thrust = Instance.new("BodyThrust")
		thrust.Force = Vector3.new(power, 0, power)
		thrust.Location = rootpart.Position
		thrust.Parent = rootpart
		humanoid.WalkSpeed = 50
		for _, connection in pairs(connections) do
			pcall(connection.Enable, connection)
		end
	end)
end