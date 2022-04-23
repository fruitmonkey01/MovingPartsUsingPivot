-- Roblox Studio Developer References:
-- https://developer.roblox.com/en-us/api-reference/property/BasePart/PivotOffset
-- https://developer.roblox.com/en-us/api-reference/function/PVInstance/PivotTo

-- Another method for orbiting the part
-- https://github.com/fruitmonkey01/sky/blob/main/sky.lua

-- Another method for self-rotation of the part
-- https://github.com/fruitmonkey01/UsingObjectModel

-- Note: This code should be placed in a LocalScript under StarterPlayerScripts

local RunService = game:GetService("RunService")

print("Hello world!")

-- Create Center Part
local Center = Instance.new("Part")
Center.Parent = game.Workspace
Center.Name = "Center"
Center.Position = Vector3.new(10, 10, 10)
Center.Shape = "Ball"
Center.Material = Enum.Material.Plastic
Center.Size = Vector3.new(5, 5, 5)
Center.Color = Color3.new(1, 1, 0.4) -- Banana color
Center.Anchored = true
Center.CanCollide = false


Center.PivotOffset = Center.CFrame:ToObjectSpace(CFrame.new(0, 0, 0))
print("Center.PivotOffset " .. tostring(Center.PivotOffset))

-- update the position of the part by using PivotTo API
local function updatePartPosition(part, fraction)
	part:PivotTo(CFrame.Angles(0, -fraction * 2 * math.pi, 0))
	print("positionPart: " .. tostring(part.Position))
end

local degree = 0

-- orbiting the part
RunService.RenderStepped:Connect(function()
	degree = degree + 1
	updatePartPosition(Center, degree / 360)
	if degree == 360 then
		degree = 0
	end
end)
