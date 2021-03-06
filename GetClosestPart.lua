function GetClosestPart(target: BasePart, Folder: Folder)
local Parts = {}

for _, Part in pairs(Folder:GetChildren()) do
	if Part:IsA("BasePart") then
		local Temp = {
			           Part = nil;
			           Distance = nil;
		             }
	    local FakePos = Vector3.new(Part.Position.X, target.Position.Y, Part.Position.Z)
		local distance = (target.Position -FakePos).Magnitude
		Temp.Part    = Part
		Temp.Distance = distance
		table.insert(Parts, Temp)
			Temp = nil
	end
end
	
	local min = math.huge
	local Part 
	for i,v in ipairs(Parts) do
		min = math.min(min, v.Distance)
	end
	for _,v in ipairs(Parts) do
		if v.Distance == min then
			Part = v
		end
	end
	return Part.Part
end

print(GetClosestPart(script.Parent.Player, script.Parent.Folder):GetFullName())
