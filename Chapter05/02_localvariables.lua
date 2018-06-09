function DebugLocals()
	local info = debug.getinfo(2, "n")
	print ("Local variables of: " .. info.name)
	local idx = 1
	while true do
		local name, val = debug.getlocal(2, idx)
		if name == nil then
			break
		end
		print (" " .. name .. " = " .. tostring(val))
		idx = idx + 1
	end
end

function DoSomething(val1, val2)
	local sum = val1 + val2
	local difference = val1 - val2
	local result = sum * difference

	DebugLocals();
	return result;
end

DoSomething(3, 4)
DoSomething(9, 3)