function Normalize(x, y, z)
	local dot = x * x + y * y + z * z
	assert(dot ~= 0, "Can't normalize zero vector")
	local len = math.sqrt(dot);
	return x / len, y / len, z / len
end

local x, y, z = Normalize(0, 0, 0)
print("normalized vector")