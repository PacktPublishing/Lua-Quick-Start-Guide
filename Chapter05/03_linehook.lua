function VectorLength(x, y, z)
	local dot = x * x + y * y + z * z
	if dot == 0 then
		return nil
	end
	return math.sqrt(dot)
end

function trace(event, line)
	print("event: " .. event)
	print (" executing: line " .. line)
end

debug.sethook(trace, "l")
local x = 3
local y = 5
local z = 1
local len = VectorLength(x, y, z)
print ("length: " .. len)