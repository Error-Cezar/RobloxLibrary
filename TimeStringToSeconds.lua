local function convertTimeStringToSeconds(timeString)
	local totalSeconds = 0
	local patternValues = {
		["s"] = 1, -- seconds
		["m"] = 60, -- minutes
		["h"] = 3600, -- hours
		["d"] = 86400, -- days
		["w"] = 604800, -- weeks
		["mo"] = 2628000, -- months
		["y"] = 31540000, -- years
	}
	for value, unit in string.gmatch(timeString, "(%d+)(%a)") do
		totalSeconds += value * patternValues[unit]
	end
	return totalSeconds
end

print(convertTimeStringToSeconds("100y"))
