function Normalize(x, y, z)
	local dot = x * x + y * y + z * z
	if dot == 0 then
		return nil
	end
	local len = math.sqrt(dot)
	return {
		x = x / len,
		y = y / len,
		z = z / len
	}
end

function trace(event)
	local info = debug.getinfo(2)
	if info.what == "Lua" then
		print ("event: " .. event)
		print (" function: " .. info.name)
		print (" defined on: " .. info.linedefined)
	end
end

debug.sethook(trace, "r")
local norm = Normalize(9, 2, 6)