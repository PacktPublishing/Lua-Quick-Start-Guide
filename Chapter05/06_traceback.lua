function PrintV(x, y, z)
	local out = "(" .. x .. ","
	out = out .. ", " .. y
	out = out .. ", " .. z .. ")"
	return out
end

function MagnitudeSq(x, y, z)
	local magSq = x * x + y * y + z * z
	return magSq;
end

function trace(event)
	local info = debug.getinfo(2)
	if info.what == "Lua" then
		print ("event: " .. event)
		print (" function: " .. info.name)
		print (" defined on: " .. info.linedefined)

		print(debug.traceback())
	end
end

debug.sethook(trace, "c")
local mSq = MagnitudeSq(9, 2, 6)
print ("Sqr mag: " .. mSq)
PrintV(9,2,6)