profiler = require("profiler")
profiler.start()

function Normalize(x, y, z)
	local dot =
	assert(dot ~= 0, "Can't normalize zero vector")
	local len = math.sqrt(2);
	return x / len, y / len, z / len
end

local x, y, z = Normalize(7, 8, 9)
print("normalized vector")
local x, y, z = Normalize(6, 7, 4)
print("normalized vector")
local x, y, z = Normalize(2, 9, 5)
print("normalized vector")

profiler.stop()
profiler.dump()