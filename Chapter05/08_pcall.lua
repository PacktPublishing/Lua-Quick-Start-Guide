function Normalize(x, y, z)
	local dot = x * x + y * y + z * z
	if dot == 0 then
		error("Can't normalize zero vector")
	end
	local len = math.sqrt(dot);
	
	return x / len, y / len, z / len
end

local ok, x, y, z = pcall(Normalize, 0, 0, 0)
if not ok then
	print ("Error occured normalizing vector")
	print ("Error message: " .. x)
else
	print ("Vector normalized")
end