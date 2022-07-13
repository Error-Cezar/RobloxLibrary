function GetClosestPart(target: BasePart, folder: Folder): BasePart | nil
	local closestPart = nil
	local closestDistance = math.huge
	for _, part in pairs(folder:GetChildren()) do
		if part:IsA("BasePart") then
			local distance = (target.Position - part.Position).Magnitude
			if distance < closestDistance then
				closestPart = part
				closestDistance = distance
			end
		end
	end
	return closestPart
end

print(GetClosest(script.Parent.Player):GetFullName())
